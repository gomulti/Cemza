<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'gomserve_marinsa');

/** MySQL database username */
define('DB_USER', 'gomserve_marinsa');

/** MySQL database password */
define('DB_PASSWORD', 'm@r1ns@-2018');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '_zD>a8&rD J-B]Bl-ySfQokd1*:gg@J% (>%:,2DM3q2Vu(<`pPc|~X}({W>S;E#');
define('SECURE_AUTH_KEY',  'oEeb&w!uZA%VL^e>9VzY)jiu1%,KRWmNWlHv<//q`zpB`%CXkOTt T98H&]]h3;1');
define('LOGGED_IN_KEY',    'h5Y{?me#w;E:#NsEY&EdR,U<>lE)8Nr#ixh}B0[7TnUE^Uzyfi[+hp;duYsAw-p:');
define('NONCE_KEY',        'p[KFvsmA6<z1<>t{,e((m{[,9<(meQ)a:+1uF5Pi7noB_=ky>zujQ,uY]ES_9.qx');
define('AUTH_SALT',        '@IhqF/fmhkSR9)@Mn.w w-(%}(YJ$=7}x0Za~^>X.tQtCP,FFSFIj+2F 5:&E]}{');
define('SECURE_AUTH_SALT', 'hL!xheJ]ubM=W8:o>~:?LsS@E0kv6w|Y=r8N28*$!b.JZ]S&-kv;Sm6>705L_1 1');
define('LOGGED_IN_SALT',   'Fh{l_AsV82i`GLkd:*,^e*eA{v#tKhBLB3ez<4Z,jO!vcbZ}4iC@$1SNtrd]J`Oj');
define('NONCE_SALT',       'AO{7LMQ~!;Wrzg.<zkHO{C&=Qm=F.jt$z%>}<]/:1O(cdi3U/.5m}oR< fC]4^ _');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
