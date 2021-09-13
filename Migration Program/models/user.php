<?php
use Illuminate\Database\Eloquent\Model;
 
class User extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'user';

protected $primaryKey = 'user_id';

protected $fillable = ['user_id','user_group_id','salutation_id','firstname','lastname','email','password','created_at','updated_at','activated'];

}