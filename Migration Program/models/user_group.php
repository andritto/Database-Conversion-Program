<?php
use Illuminate\Database\Eloquent\Model;
 
class UserGroup extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'user_group';

protected $primaryKey = 'user_group_id';

 
}