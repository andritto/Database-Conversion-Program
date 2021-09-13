<?php
use Illuminate\Database\Eloquent\Model;
 
class Address extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'address';

protected $primaryKey = 'address_id';

protected $fillable = ['street',
'zipcode',
'city',
'state',
'country_id',
'phone_no',
'additional',
'student_id'];
 
}