<?php
use Illuminate\Database\Eloquent\Model;
 
class ExchangeChecklist extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'exchange_checklist';

protected $primaryKey = 'step_id';

 
}