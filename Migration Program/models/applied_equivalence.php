<?php
use Illuminate\Database\Eloquent\Model;
 
class AppliedEquivalence extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'applied_equivalence';

protected $primaryKey = ['application_id','equivalence_id'];

 
}