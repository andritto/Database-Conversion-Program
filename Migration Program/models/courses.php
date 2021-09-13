<?php
use Illuminate\Database\Eloquent\Model;
 
class Courses extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'courses';

protected $primaryKey = 'courseid';

 
}