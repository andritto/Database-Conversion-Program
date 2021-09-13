<?php
use Illuminate\Database\Eloquent\Model;
 
class Status extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'status';

protected $primaryKey = 'statusid';

 
}
function MapOldStatus ($status) {
    switch(strtolower($status)) {
        case 'interested': return 1;
        case 'applicant': return 2;
        case 'active': return 3;
        case 'dropout': return 5;
        case 'alumni': return 4;
        default: return 3;
    }
}