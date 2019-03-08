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
define('AUTH_KEY',         'l>*`J(=iUD:n[.|5{d%U=$Vzg#~cE[X:1.#e(1)nH_ bvh YKYOc(30gN&MI<Ul:');
define('SECURE_AUTH_KEY',  'VvZ}9m4<+3#EDFA$H58|Bxfh3Vo`PoW9kA(ppHhdMSOm<%qM=h?(]<h^c$P:BV+y');
define('LOGGED_IN_KEY',    '|NG7[bPLOj<r!h(Z>ttup>7f&UYX>~``3_f$Ue5G$}X?hQ6l}GI9;l@K*[#N]L<l');
define('NONCE_KEY',        '6^V<o%0s6nnBG^cSQOG&o/a6xf]e.(Ib#7HB:V=eOSz%.htPwfg{|^W0c*g))T-d');
define('AUTH_SALT',        'eQy3N#V$QGK4q.mG!hfY|0duDI{P{{:9(>EhK~@K|Qke+kf/IY&gRudnCgX_K<vJ');
define('SECURE_AUTH_SALT', 'YO:N;mzixesO lLV xBCl lT}])E,As>MdR}Iw$*M=^qzRoJG#Sr[e)2mCRjRqRH');
define('LOGGED_IN_SALT',   'i1B7:*#k4/Q}j4H~_)N*1:/Lkv(U]zu=JM~`p[f5ZsqW#(f>tF=@Wns;TQ??#z]n');
define('NONCE_SALT',       'ZbI|NBZY|ZH]yWGKkLM?7mjE7e>2@$D]U=.@fKMd3d!6cRob7<bB[^#?(( jUk>X');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'hoston_';

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
