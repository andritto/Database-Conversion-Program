#!/usr/bin/env python3
# coding: utf-8

# In[160]:


from sqlalchemy import create_engine

import pymysql

import pandas as pd

import hashlib

import base64

import pycountry_convert as pc

import numpy as np

# Live DB config
oldDb_username = 'root'
oldDb_password = 'root'
oldDb_host     = '127.0.0.1'
oldDb_port     = '8889'
oldDb_database = 'StudDB 2.0'

# Archive DB config
arcDb_username = 'root'
arcDb_password = 'root'
arcDb_host     = '127.0.0.1'
arcDb_port     = '8889'
arcDb_database = 'archivDb'

# In[161]:


sqlEngine = create_engine('mysql+pymysql://' + oldDb_username + ':' + oldDb_password + '@' + oldDb_host + ':' + oldDb_port + '/' + oldDb_database, pool_recycle=3600)

dbConnection = sqlEngine.connect()


 

pd.set_option('display.expand_frame_repr', False)


# In[162]:


def hashCol (col):
    return col.astype(str).str.encode('UTF-8')          .apply(lambda x: base64.b64encode(hashlib.sha1(x.lower()).digest()))


# In[163]:


def countryMapper (x):
    continents = {
        'NA': 'North America',
        'SA': 'South America', 
        'AS': 'Asia',
        'OC': 'Oceania',
        'AF': 'Africa',
        'EU': 'Europe'
        }
    return continents[pc.country_alpha2_to_continent_code( pc.country_name_to_country_alpha2(x, cn_name_format="default") )]

def mapCountry (col):
    return col.astype(str)          .apply(countryMapper)


# In[164]:


query = """SELECT
  `user`.`firstname` AS 'student_firstname',
  `user`.`lastname`  AS 'student_lastname',
  YEAR(`student`.`birthdate`) AS 'birth_year',
  IF(`user`.`salutation_id` = 1, 'Female',
          IF(`user`.`salutation_id` = 2, 'Male', NULL)
    ) AS 'salutation',
  `country`.`name` AS 'nationality',

  `home_university`.`abbreviation` AS 'home_university',
  `home_degree`.`abbreviation` AS 'home_degree',
  `home_course`.`name` AS 'home_program',
  `study_home`.`home_semester` AS 'semester',

  `host_university`.`abbreviation` AS 'abroad_university',
  if(`application`.`intention_id` = 1, 'Exchange', 'Double Degree') AS 'type_of_transfer',
  `host_degree`.`abbreviation` AS 'abroad_degree',
  `host_course`.`name` AS 'abroad_program',

  IF(`student`.`student_status_id` = 4, 'Alumni', 'Dropout') AS 'overall_status',
  `exchange_period`.`exchange_semester` AS 'start_of_transfer',
  `study_home`.`home_cgpa` AS 'average_grade',
  `study_host`.`foreign_num_planed_exams` AS 'number_planned_exams',

  `study_host`.`foreign_matno` AS 'abroad_mat_no',
  `exchange_period`.`semester_end` AS 'exchange_semester_end',
  `exchange_period`.`semester_begin` AS 'exchange_semester_start'
FROM `student`

# Join for user related datas
JOIN `user`
  ON `user`.`user_id` = `student`.`user_id`

JOIN `country`
  ON `country`.`country_id` = `student`.`nationality_country_id`

JOIN `application`
  ON `application`.`student_id` = `student`.`student_id`

# Join for home study datas
JOIN `study_home`
  ON `study_home`.`application_id` = `application`.`application_id`

JOIN `university` AS `home_university`
  ON `home_university`.`university_id` = `study_home`.`home_university_id`

JOIN `degree` AS `home_degree`
  ON `home_degree`.`degree_id` = `study_home`.`home_degree_id`

JOIN `course` AS `home_course`
  ON `home_course`.`course_id` = `study_home`.`home_course_id`

# Join for foreign studies
LEFT JOIN `exchange`
  ON `exchange`.`application_id` = `application`.`application_id`

LEFT JOIN `study_host`
  ON `study_host`.`exchange_id` = `exchange`.`exchange_id`

LEFT JOIN `university` AS `host_university`
  ON `host_university`.`university_id` = `study_host`.`foreign_uni_id`

LEFT JOIN `degree` AS `host_degree`
  ON `host_degree`.`degree_id` = `study_host`.`foreign_degree_id`

LEFT JOIN `course` AS `host_course`
  ON `host_course`.`course_id` = `study_host`.`foreign_course_id`


LEFT JOIN `exchange_period`
  ON `exchange_period`.`period_id` = `application`.`exchange_period_id`

WHERE
  `student`.`student_status_id` >= 4"""


# In[165]:


frame = pd.read_sql(query, dbConnection);
cols = ['student_firstname','student_lastname','abroad_mat_no']
for col in cols:
    frame[col] = hashCol(frame[col])
frame['nationality'] = mapCountry(frame['nationality'])
frame['exchange_semester_start'] =  pd.to_datetime(frame['exchange_semester_start'], format='%Y-%m-%d')
frame['exchange_semester_end'] =  pd.to_datetime(frame['exchange_semester_end'], format='%Y-%m-%d')
frame['study_time_months'] = (frame['exchange_semester_end'] - frame['exchange_semester_start']).dt.days/30.4
frame = frame.drop(['exchange_semester_start', 'exchange_semester_end'], axis=1)
frame.head(10)


# In[166]:


dbConnection.close()


# In[167]:


sqlEngine = create_engine('mysql+pymysql://' + arcDb_username + ':' + arcDb_password + '@' + arcDb_host + ':' + arcDb_port + '/' + arcDb_database, pool_recycle=3600)

dbConnection = sqlEngine.connect()


# In[168]:


try:

    frame.to_sql('inactive_students', dbConnection, if_exists='append', index=False);

except ValueError as vx:

    print(vx)

except Exception as ex:   

    print(ex) 

finally:

    dbConnection.close()


# In[169]:


sqlEngine = create_engine('mysql+pymysql://' + oldDb_username + ':' + oldDb_password + '@' + oldDb_host + ':' + oldDb_port + '/' + oldDb_database, pool_recycle=3600)

dbConnection = sqlEngine.connect()

# Cleanup script
dbConnection.execute('DELETE FROM `student` WHERE `student`.`student_status_id` >= 4')
dbConnection.close()

