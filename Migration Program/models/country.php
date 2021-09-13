<?php
use Illuminate\Database\Eloquent\Model;
 
class Country extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'country';

protected $primaryKey = 'country_id';

 
}