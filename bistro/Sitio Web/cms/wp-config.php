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
define('DB_NAME', 'bistro');

/** MySQL database username */
define('DB_USER', 'cemza');

/** MySQL database password */
define('DB_PASSWORD', 'Cemz#2k18');

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
define('AUTH_KEY',         'k>eQ-/vB8lWUfH?$m%iK0 n`1x[.asq+HbJkU0Kds;_kvEGAD7A@i3zuav]KHUkJ');
define('SECURE_AUTH_KEY',  '2n<`=c!v-u.x2uDDs<=x%0U$Qv#M@1X^0oql~9djAZC8zQkQ} ,>>O_/bu_7#Prz');
define('LOGGED_IN_KEY',    'LAeTg]FOp{B>tr`e&Ql-7O5=?^Z]{]QfQh#eY~!i6i9)B^u^? >-{^|z9l-cm][a');
define('NONCE_KEY',        '4Frjg{{ls-b^|Km9&>):<M?A9mU*[aHt7e.?,H~90i;(!&7CI#z[Y)`a^LdKR#yK');
define('AUTH_SALT',        ')oYs= ]F74;K!C2z2z.iZG$Eqr[Bh3>wy(Gb#grSEel5un V*Dp{^kE/yF}-m_v2');
define('SECURE_AUTH_SALT', '0?@[gU+dFJJoX#3mF/cH$B`N7<(p^V>`Gi0%C_0GVjzXA2D@e;`J7WY|d$Dk.O/U');
define('LOGGED_IN_SALT',   'wL9$=USt9}C8c)kq8cmwq_rHM|]`Nw(N$>R6{;O7om1AY1-Y2&&d~WX62<VTFl ?');
define('NONCE_SALT',       'W>:tdYlAj9u}1vL?)|>FU+VoGHL*qCJ{$poqj?QP_peYcjhY!<&*uo1(KNy==SUy');

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