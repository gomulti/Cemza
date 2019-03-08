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
define('DB_NAME', 'ukoi4278_varaderoszavala_com');

/** MySQL database username */
define('DB_USER', 'varaderosz857085');

/** MySQL database password */
define('DB_PASSWORD', 'Cemz@2019');

/** MySQL hostname */
define('DB_HOST', 'sqlc75a.carrierzone.com');

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
define('AUTH_KEY',         '^F1diDJeG$oy<1xCwE?>Sg6-dVxkyQG7{CJy8u3T3HS|SY[vTHHn|]9b1[;7lAx?');
define('SECURE_AUTH_KEY',  'n%Gm39xUBxn%7D@Wr,4=]?~lpv(eV({dUDwOtybXfSB7(dOSg`K9||*3W72WDG($');
define('LOGGED_IN_KEY',    'K%zkI#pR)BMw}<7*a^V:zysK5`LSjE?<&HC] mTLMD]4Lw=^lx75(`PR:;w*#D=^');
define('NONCE_KEY',        '8@m`zkP+V Y_HHM^?z`{zcv xU2)m]ep!rUU2gW1-_]7eq/9h[W>~od%)]/$||*H');
define('AUTH_SALT',        '%<^#v_Y_ux)R!]0uB};e 9gU6hp<u@aWGfg`#,tzjn]VHqo7Nw9#Q:V[!~6,x*jx');
define('SECURE_AUTH_SALT', '_TEY;y3^-O{:O~18+Qgo$o}i]+.z6qd6J&i=P,w)330}ALv]/AJXM=-:60r<ZXnD');
define('LOGGED_IN_SALT',   '!Jr^Wl0%TWhM<[|vD8mn<<&O4ozJ**g$FXx<U;8d~UMxxHBT~9}Y@)iS6%aTop<T');
define('NONCE_SALT',       '$EgwZmc]0yOS}pykeV^eUKBr):>H|mbLUr5te@g!mH=Jf1e6OKiLkx,1uQ`R0M7]');

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
