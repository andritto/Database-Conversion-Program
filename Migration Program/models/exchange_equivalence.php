<?php
use Illuminate\Database\Eloquent\Model;
 
class ExchangeEquivalence extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'exchange_equivalence';

protected $primaryKey = ['exchange_id','equivalence_id'];

 
}