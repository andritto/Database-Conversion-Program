<?php
use Illuminate\Database\Eloquent\Model;
 
class LanguageCourses extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'language_course';

protected $primaryKey = 'courseid';

 
}