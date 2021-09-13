<?php
use Illuminate\Database\Eloquent\Model;
 
class Degrees extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'degree';

protected $primaryKey = 'degid';

 
}

function MapOldDegree ($degree) {

    return $degree-1;
}