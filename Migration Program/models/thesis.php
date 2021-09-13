<?php
use Illuminate\Database\Eloquent\Model;
 
class Thesis extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'thesis';

protected $primaryKey = 'thesisid';

 
}