<?php
use Illuminate\Database\Eloquent\Model;
 
class SimpleSearch extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'simple_search';

protected $primaryKey = 'query_id';

 
}