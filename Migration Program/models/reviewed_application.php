<?php
use Illuminate\Database\Eloquent\Model;
 
class ReviewedApplication extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'reviewed_application';

protected $primaryKey = 'application_id';

 
}