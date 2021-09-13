<?php
use Illuminate\Database\Eloquent\Model;
 
class EmailActivation extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'email_activation';

protected $primaryKey = ['user_id','activation_code'];

 
}