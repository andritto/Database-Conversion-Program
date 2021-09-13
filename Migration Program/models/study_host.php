<?php
use Illuminate\Database\Eloquent\Model;
 
class StudyHost extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'study_host';

protected $primaryKey = 'exchange_id';

protected $fillable = ['exchange_id',
'foreign_uni_id',
'foreign_degree_id',
'foreign_course_id',
'foreign_num_planed_exams',
'foreign_matno'];

public $timestamps = false;

 
}