<?php
use Illuminate\Database\Eloquent\Model;
 
class Exams extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'exams';

protected $primaryKey = 'examid';

 
}