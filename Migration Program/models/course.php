<?php
use Illuminate\Database\Eloquent\Model;
 
class Course extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'course';

protected $primaryKey = 'course_id';

 
}