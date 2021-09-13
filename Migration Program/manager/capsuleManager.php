<?php
use Illuminate\Database\Capsule\Manager as Capsule;
 
$capsule = new Capsule;

$capsule->addConnection(
    array(
        'driver'    => 'mysql',
        'host'      => "127.0.0.1",
        'database'  => "ddneu",
        'username'  => "root",
        'password'  => "root",
        'charset'   => 'utf8',
        'collation' => 'utf8_unicode_ci',
        'prefix'    => '',
        'port'      => '8889',
    ),
    "default"
);

$capsule->addConnection(
    array(
            'driver'    => 'mysql',
            'host'      => "127.0.0.1",
            'database'  => "StudDB 2.0",
            'username'  => "root",
            'password'  => "root",
            'charset'   => 'utf8',
            'collation' => 'utf8_unicode_ci',
            'prefix'    => '',
            'port'      => '8889',
    ),
    "newDB"
        );



$capsule->setAsGlobal(); // Make Capsule instance available globally 
$capsule->bootEloquent(); // Setup Eloquent ORM