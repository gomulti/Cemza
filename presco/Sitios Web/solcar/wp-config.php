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
define('DB_NAME', 'presco_prescomx97661554');

/** MySQL database username */
define('DB_USER', 'prescomx97661554');

/** MySQL database password */
define('DB_PASSWORD', 'qweASD123*');

/** MySQL hostname */
define('DB_HOST', 'sql5c75c.carrierzone.com');

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
define('AUTH_KEY',         ')#nqOPto+; MIWrGptm,/5>BBzz].ksMg6VVjhIS;:W+/O+j-#Tp0yRA{dou|<*2');
	define('SECURE_AUTH_KEY',  'z+;Hd]`2X+;{.h7V``iQk[^P-!c&Pz~rj)XVA!o|:SRhyWJ>[:83<Opn+Yc~lAw(');
	define('LOGGED_IN_KEY',    'F{3gdZX?Y+RydG&EGWjW=*ea+(oY0#+p+%8q])|(>2 1OY:dbhK[~a;p#qU!4&%l');
	define('NONCE_KEY',        'EA0$+U8T|Eox%->g7%2 W .vPw[_c!)l,K<Abr}gH+DyW^n0]K`,:H9mgd;{;rK&');
	define('AUTH_SALT',        ':HZ1xcLRKW~z%[dDS(yb/7|O)vp&bneU__3.TGN .HE8*]V<iCB-lJ4=z1mj`VVe');
	define('SECURE_AUTH_SALT', 'T%_PNTamZkK9#f$9g4l8z^Xk*6:h)^q^B`DZP+j[Cq?e1jvx4U;?~1G4vmQ^(+0Q');
	define('LOGGED_IN_SALT',   'x[[_Q(cc/Lv X$hnTk9>Th&Q&^/6aV(S.X4OB$.4}~:+D*Eu>zt[erK6/dgi 2YC');
	define('NONCE_SALT',       'qAE>e^S,LN&QbU8:hm)EiT>.|5N$p3o5#t+yeqRFF3&sPVLN s:tk?XV-g)?P2x9');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'slkr_';

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
