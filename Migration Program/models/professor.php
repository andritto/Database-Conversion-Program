<?php
use Illuminate\Database\Eloquent\Model;
 
class Professor extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'professor';

protected $primaryKey = 'professor_id';

 
}