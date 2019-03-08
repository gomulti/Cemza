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
define('AUTH_KEY',         'Y(Bh*(Q{:gm7g/3tO`M9$!o1Y)W^AoMxt+qiL5f#E<U10$ka/5xhF{@L lEt[*6h');
define('SECURE_AUTH_KEY',  'h8A<a4p>Zk;U3{j@qIm{IZ%p 3Z6/x^RN8[,k?]{n0k]1/*PR#pa6bT9ssS2yTX)');
define('LOGGED_IN_KEY',    'W#l=.YoGUL{Dnd/L3>(ivpK cfV3IqXBR;f=??[g1Cy{uQoaBvN+*&xde~U:YEqw');
define('NONCE_KEY',        '[#.LMHln|8Y8 88~:Cf$0n?{@O[-GjOCVNS(tPumfcTvi(#7<BgoVHhDV_dNiwLy');
define('AUTH_SALT',        'ce)l[WK;I/+~o[!_,{qpghoQV{!s,7XzI}g6v)_2)0B,eM-^n8~8JNjGN=V0sI<T');
define('SECURE_AUTH_SALT', 'uWK{rl4dbQG Z:TNPmPT*|ln^v 5PF B( : Uv6c<hL*9@o]P&[QEid_TG/bHyng');
define('LOGGED_IN_SALT',   'U@gKQ9d|jl-Ur{fk,]<MkQamT9YtlceZM$1>:ylHGAuEJy&*R2f5`QEe.a7/TX9V');
define('NONCE_SALT',       '1G4/:g&3q4UN:$Bm2[?7SplA.0//q (|B%8}Y{f%B2@@=O n..*z4Jj]]`)qD)F*');

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
