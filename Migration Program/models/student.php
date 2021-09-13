<?php
use Illuminate\Database\Eloquent\Model;
 
class Student extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'student';

protected $primaryKey = 'student_id';

protected $fillable = ['student_id'
,'user_id'
,'birthdate'
,'nationality_country_id'
,'home_address_id'
,'created_at'
,'updated_at'
,'student_status_id'];

 
}