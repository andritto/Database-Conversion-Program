<?php
use Illuminate\Database\Eloquent\Model;
 
class SavedSearches extends Model {
 

 protected $connection = "default";

// some attributes here…
protected $table = 'saved_searches';

protected $primaryKey = 'search_id';

 
}