<?php
use Illuminate\Database\Eloquent\Model;
 
class EquivalenceCourse extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'equivalence_course';

protected $primaryKey = ['equivalence_id','course_id'];

 
}