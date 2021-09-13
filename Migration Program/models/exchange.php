<?php
use Illuminate\Database\Eloquent\Model;
 
class Exchange extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'exchange';

protected $primaryKey = 'exchange_id';

protected $fillable = [
'application_id',
'foreign_address_id',
'foreign_uni_id'];

public $timestamps = false;
 
}