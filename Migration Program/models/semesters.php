<?php
use Illuminate\Database\Eloquent\Model;
 
class Semesters extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'semester';

protected $primaryKey = 'semesterid';

 
}