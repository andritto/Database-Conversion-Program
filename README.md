## Database Migration Program
### Connecting to the database

Assume that you have the data already in the database:
Edit connection information in `Migration Program/manager/CapsuleManager.php`

```php
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
```
`default` is the configuration for the old database (ddneu)
`newDB` is the configuration for the new database
if the port is not 8889 change to port number that you are using for both databases.

### How to run the program

Use the following command to run the program (assuming that you are in the directory of this repository and using Linux or Unix OS)
```bash
php "Migration Program/index.php"
```

## Data Anonymization Program

### Configuring database connection

Locate `Anonimity Program.py` and open with any code editor.

```python
# Live DB config
oldDb_username = 'root'
oldDb_password = 'root'
oldDb_host     = '127.0.0.1'
oldDb_port     = '8889'
oldDb_database = 'StudDB 2.0'

# Archive DB config
arcDb_username = 'root'
arcDb_password = 'root'
arcDb_host     = '127.0.0.1'
arcDb_port     = '8889'
arcDb_database = 'archivDb'
```
variable with the prefix `oldDb_` is the configuration variable for the live student database (StudDB 2.0)
variable with the prefix `arcDb_` is the configuration variable for the archive database (archivDB)

### How to run the python program (without cron)

assuming you are running this on Linux or Unix OS, 

```bash
./Anonymity\ Program.py
```

if it does not work, you can run the following command:

```bash
python3 "Anonymity Program.py"
```

### How to run the python program (with cron scheduling)

assuming you are running this on Lunix or Unix OS, run the following command:
```bash
crontab-e
```

in the crontab file paste the following cron schedule:
```
0 0 1 */1 * python3 Anonimity Program.py
```

the schedule will run the program At 00:00 on day-of-month 1 in every month.

to stop the cron, simply remove the entry or prefix the line with `#`

make sure the path to `Anonimity Program.py` is absolute.


## made by: Andritto Ghaffar
