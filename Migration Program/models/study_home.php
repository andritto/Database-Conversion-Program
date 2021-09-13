<?php
use Illuminate\Database\Eloquent\Model;
 
class StudyHome extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'study_home';

protected $primaryKey = 'application_id';

protected $fillable = ['application_id',
'home_university_id',
'home_degree_id',
'home_course_id',
'home_matno',
'home_cgpa',
'home_credits',
'home_semester',
'home_enrollment_date'];

public $timestamps = false;
 
}