<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'maren_en_marenenerg853494');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'marenenerg853494');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', 'M@123n2018');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'sql5c75f.carrierzone.com');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8mb4');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'fH2L_B#@wF>f&Pmx0q(?BuFB+myOOQL2q:&9>LjI8SET_10]n[+@@w4hoS$.yaE<');
define('SECURE_AUTH_KEY', 'j:5[Wdgu=:M*f{fUGQE!yr~^rH:61XqHF#!%U^SRcJ;%rl$|E:HHu/ZI:T04XltM');
define('LOGGED_IN_KEY', 'iN_*ixM~t.1SDW8]>i3-2!# N@&(IR&$o;v51e4xv_7{$KB^(?;nyn%u>Yhl%<kM');
define('NONCE_KEY', 'XKpw#5T+my>OR<v+dQz,Tr@T>;O(C276MgB{Lna=w>6eF{<q~-`7o5]]-HG@;JwE');
define('AUTH_SALT', 'Xu:h^5Sn.01:]zW@0d]K8<xW%H0&,alrx`lh5p7Vp67y(KXt-NS.DH`A}|sDtD+0');
define('SECURE_AUTH_SALT', 'i}h gGKyNbGZq0{~|MCQnecZK1(Gw0 WRd,SS>i*u(d]!GeuZ]@dqZ64w)y[R5f&');
define('LOGGED_IN_SALT', 'K5Ri_ScK*15kv0s+fhZ[pW@}JXgo~F`,[!d!Zmds*AE21_Q3xKVo.*QCW|dM)?9G');
define('NONCE_SALT', 'zQc}A=I0pn9hC&3x<yN*b=R=SbrZ:8W1<0U.m}k$ TsGPbALSav6B6nj`1]4-P@+');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'wp_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

