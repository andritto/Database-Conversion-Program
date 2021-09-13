<?php
use Illuminate\Database\Eloquent\Model;
 
class StudentStatus extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'student_status';

protected $primaryKey = 'student_status_id';

 
}