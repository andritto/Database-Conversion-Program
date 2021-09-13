<?php
use Illuminate\Database\Eloquent\Model;
 
class Universities extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'university';

protected $primaryKey = 'locationid';

 
}