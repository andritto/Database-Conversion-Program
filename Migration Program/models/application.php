<?php
use Illuminate\Database\Eloquent\Model;
 
class Application extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'application';

protected $primaryKey = 'application_id';

protected $fillable = [
'exchange_period_id',
'student_id',
'intention_id',
'applied_degree_id',
'success_factor',
'created_at',
'updated_at',
'home_address_id',
'completed'];

 
}