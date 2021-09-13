<?php
use Illuminate\Database\Eloquent\Model;
 
class ForeignAddress extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'foreign_address';

protected $primaryKey = 'idforeign_address';

 
}