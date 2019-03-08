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
define('DB_NAME', 'cemza_oceamarcom294419');

/** MySQL database username */
define('DB_USER', 'oceamarcom294419');

/** MySQL database password */
define('DB_PASSWORD', 'Cemz@2018');

/** MySQL hostname */
define('DB_HOST', 'sql5c75e.carrierzone.com');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'uv%wq= y?-2%d +zol|CVa!{z)pO(56Q=O67k5`.Wke0b{=o^i9?4M:;a`+ECHX&');
define('SECURE_AUTH_KEY',  'Qv[JIN}Uj]#:&-uiIaKb#4rD9~ClFHKp%w)E+|Nfs60l(VrjkYP;TcSz}/CB^x>V');
define('LOGGED_IN_KEY',    'I|^Jr[5*lQ +IfnUY[:=:|n2jK9S9-uw,:qv-yPvP<h_5*Z5b0+cKg~xT(VFKRU?');
define('NONCE_KEY',        '#SDlZuwR%*r^z5A||TQj+L!+y7v.XRm>x=;f-9oYJ?2O!2cw>S*&w>?I_ft%#]q|');
define('AUTH_SALT',        'h+%5o~m}>V0eAm@%XkY5/;Y$, zGtGmw~uOeEHZ#@0Ql%Z*@+92A/<r&E^8Wt]ks');
define('SECURE_AUTH_SALT', 'I:$F(Mnc>+sz!u-u-vdeu-0^ Smlge4 3g3$R&.I%K,-`xap)5/:Yb>wq{GMCh:!');
define('LOGGED_IN_SALT',   'SC>th(FbXa(Nnj0yzZw+ZO[gjscK$VVK%M_^|&--,`GfrjY ~gzI(g+ud/Fr+rtu');
define('NONCE_SALT',       'ZMdf[SF@)x3KYXx!1]AEgL`zBRFKTwf=HKnj(#GT]A}|(hJ]0i@Y9m4V7n-,Lk^7');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'ocmrwp_';

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
