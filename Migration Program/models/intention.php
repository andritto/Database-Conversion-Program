<?php
use Illuminate\Database\Eloquent\Model;
 
class Intention extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'intention';

protected $primaryKey = 'intention_id';

 
}
function MapOldIntention ($intention) {
    switch(strtolower($intention)) {
        case 'exchange': return 1;
        case 'double degree': return 2;
        default : return 1;
    }
}    