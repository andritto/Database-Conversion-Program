<?php
use Illuminate\Database\Eloquent\Model;
 
class AdminList extends Model {
 

 protected $connection = "newDB";

// some attributes here…
protected $table = 'admin_list';

protected $primaryKey = 'admin_email';

 
}