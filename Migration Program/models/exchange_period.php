<?php
use Illuminate\Database\Eloquent\Model;
 
class ExchangePeriod extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'exchange_period';

protected $primaryKey = 'period_id';

 
}