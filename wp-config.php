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
define('DB_NAME', 'wp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         '. )b.K&FO>je3u7+<)2v.HA{u=IU3lFzt|6gK:G^mgY 4,A~P<F-c`Qhs]5yZ`Fy');
define('SECURE_AUTH_KEY',  'uPMR,2iO@ozd EUu@0g!F4KLZkH]zHjTaR.uGw~^dj4} #$hT9q[oBMgYjXD k6t');
define('LOGGED_IN_KEY',    'd;S}Es)o} PN!]mE)QxIK4lkwTNIZ$fQRUz`neN&P7?QY|z|5?Mv*K$oqlKdPwnG');
define('NONCE_KEY',        'iFpGT86D*<U5o3b#yWeD>(1d.DiUbxOn5VE+>14@/6*&@YZ?HQFn< wmlW<ezrRJ');
define('AUTH_SALT',        '/Zi)E,|7(Pzj9R}tzc-}`Y0F8Y[OUuE+2`zDf}SP)4B$dwpjtUTYg&=@l=W=HL5j');
define('SECURE_AUTH_SALT', 'e~Vokm:f6`tku_$DT?t72$YQI4>M>4ro,Kf@wwjo8l,]-msx: Jw7E(tFnl|Q-*C');
define('LOGGED_IN_SALT',   '}Jf$zj0n=k9CcCju`me zQ[zF482go9 x.wQyvb]S%`s*]pY Q()u;et&r7RL,;5');
define('NONCE_SALT',       '=]sbKY+7K,RJQB71uYAyNr8#EOh?[W%$w[wj~ lLRaj$K,)QF+h ^yirjfMR?Aj7');

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
