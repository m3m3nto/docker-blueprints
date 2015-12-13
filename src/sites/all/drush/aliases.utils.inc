<?php

function site_get_dsn($env, $db_name) {
  switch ($env) {
    case 'dev':
      return array(
        'default' => array(
          'default' => array(
            'driver' => 'mysql',
            'username' => 'root',
            'password' => 'root',
            'host' => '127.0.0.1',
            'database' => $db_name,
          ),
        ),
      );
      break;
    case 'site-staging':
      return array(
        'default' => array(
          'default' => array(
            'driver' => 'mysql',
            'username' => 'site',
            'password' => 'xxx',
            'host' => 'staging.site.com',
            'database' => $db_name,
          ),
        ),
      );
      break;  
    case 'site-production':
      return array(
        'default' => array(
          'default' => array(
            'driver' => 'mysql',
            'username' => 'site',
            'password' => 'xxx',
            'host' => 'site.com',
            'database' => $db_name,
          ),
        ),
      );
      break;
  }

}
