<?php
use Illuminate\Database\Eloquent\Model;
 
class ResetPassword extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'reset_password';

protected $primaryKey = ['user_id','password_code'];

 
}