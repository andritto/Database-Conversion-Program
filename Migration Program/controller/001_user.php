<?php

$users = StudentNew::all(); //get all data from user table

foreach ($users as $user) { 
    $newUser = new User(['user_id' => $user->personalid,
             'user_group_id' => 1,
             'salutation_id' => MapOldSalutation($user->salutation),
             'firstname' => $user->firstname,
             'lastname' => $user->surname ,
             'email' => $user->email,
             'password' => 'unset',
    'created_at' => $currentDateTime,
    'updated_at' => $currentDateTime,
    'activated'=> 0
    ]);
    $newUser->save();
}

