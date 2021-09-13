<?php
use Illuminate\Database\Eloquent\Model;
 
class Alumnis extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'alumni';

protected $primaryKey = 'alumni_id';

 
}