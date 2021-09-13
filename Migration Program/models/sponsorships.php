<?php
use Illuminate\Database\Eloquent\Model;
 
class Sponsorships extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'sponsorships';

protected $primaryKey = 'sponsor_id';

 
}