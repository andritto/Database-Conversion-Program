<?php
use Illuminate\Database\Eloquent\Model;
 
class Salutation extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'salutation';

protected $primaryKey = 'salutation_id';

 
}

function MapOldSalutation ($salutation) {
    switch(strtolower($salutation)) {
        case 'mr': return 2;
        case 'ms': return 1;
        default : return 2;
    }
}