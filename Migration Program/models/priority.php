<?php
use Illuminate\Database\Eloquent\Model;
 
class Priority extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'priority';

protected $primaryKey = 'application_id';

 
}