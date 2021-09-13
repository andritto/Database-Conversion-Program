<?php
use Illuminate\Database\Eloquent\Model;
 
class SecurityToken extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'securitytoken';

protected $primaryKey = 'id';

 
}