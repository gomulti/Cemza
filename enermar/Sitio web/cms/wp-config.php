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
define('DB_NAME', 'phpmy1_enermar_com_mx');

/** MySQL database username */
define('DB_USER', 'enermarcom767874');

/** MySQL database password */
define('DB_PASSWORD', 'enermar2018');

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
define('AUTH_KEY',         'qnpgY 5pjuS:59tdK1B#,ynrfKCk@(%N=!z6h|0gr~!hXrEJ+h=UTMCc`KEvantw');
define('SECURE_AUTH_KEY',  '^v7-}a>+x~Kr7c&x}RJ@_(eZTScPyCx(v|9x2.ggat6)@EcJLfED@F/c0Bm%6&cz');
define('LOGGED_IN_KEY',    'G%-@Z7zPH;,#aAnjk;AHM$xq5E[tHt2ui)#[ -/SBG>nWt?K)^{BN=s_?[xAa>V%');
define('NONCE_KEY',        'mA,I&5ACE%YLjvwP/V1$#h}!n2LObWtWYL|:=Q ~ahPEr^mE/0*1wkI g#l9p6-3');
define('AUTH_SALT',        'Q2Q<u6/h9w*vuE(%_WTgp03lD]J-j-,gS!l~s-.S{G(x5;xq3Z}gDi4)w21&6=]1');
define('SECURE_AUTH_SALT', 'P*ARu%!kPC($b.R{s*-[}{ttNr`m2#+7,`f`;L*SpkDhg~@(mT34UZY(.7/uRd2v');
define('LOGGED_IN_SALT',   'RXG}ypquUr#bVOt{N6{.de!_2D^C!r|]x=BZm3gvuB7!om;A:B%0h5x1v+7S#3:o');
define('NONCE_SALT',       'bD/IMQ`,8^p;=e,JiYd(9Zzb8vEmvCvqR4AM2wv<B&7]!hw63CW(!rR[<er6;_8.');

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
