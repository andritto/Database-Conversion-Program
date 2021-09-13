<?php
use Illuminate\Database\Eloquent\Model;
 
class EquivalenceQuota extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'equivalence_quota';

protected $primaryKey = ['equivalence_id','exhange_period_id'];

 
}