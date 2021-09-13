<?php
use Illuminate\Database\Eloquent\Model;
 
class Transfers extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'transfer';

protected $primaryKey = 'id_transfer';

 
}