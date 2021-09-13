<?php
use Illuminate\Database\Eloquent\Model;
 
class ExchangeChecklistDeadline extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'exchange_checklist_deadline';

protected $primaryKey = ['step_id','exchange_period_id'];

 
}