<?php
use Illuminate\Database\Eloquent\Model;
 
class Subject extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'subject';

protected $primaryKey = 'subject_id';

 
}