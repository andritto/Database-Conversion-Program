<?php
use Illuminate\Database\Eloquent\Model;
 
class Countries extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'countries';

protected $primaryKey = 'countryid';

 
}