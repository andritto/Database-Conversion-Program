<?php
use Illuminate\Database\Eloquent\Model;
 
class Users extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'user';

protected $primaryKey = 'user_id';

 
}