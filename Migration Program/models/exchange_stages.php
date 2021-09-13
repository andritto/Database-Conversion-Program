<?php
use Illuminate\Database\Eloquent\Model;
 
class ExchangeStages extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'exchange_stages';

protected $primaryKey = 'stage_id';

 
}