<?php
use Illuminate\Database\Eloquent\Model;
 
class university extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'university';

protected $primaryKey = 'university_id';

 
}