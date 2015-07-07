<?php
/*
Plugin Name: Breadcrumb
Plugin URI: http://paratheme.com
Description: Awesome Breadcrumb for wordpress.
Version: 1.2
Author: paratheme
Author URI: http://paratheme.com
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
*/

if ( ! defined('ABSPATH')) exit;  // if direct access 

define('breadcrumb_plugin_url', WP_PLUGIN_URL . '/' . plugin_basename( dirname(__FILE__) ) . '/' );
define('breadcrumb_plugin_dir', plugin_dir_path( __FILE__ ) );
define('breadcrumb_wp_url', 'https://wordpress.org/plugins/breadcrumb/' );
define('breadcrumb_wp_reviews', 'http://wordpress.org/support/view/plugin-reviews/breadcrumb' );
define('breadcrumb_pro_url','http://paratheme.com/items/breadcrumb-awesome-breadcrumbs-style-navigation-for-wordpress/' );
define('breadcrumb_demo_url', 'http://paratheme.com' );
define('breadcrumb_conatct_url', 'http://paratheme.com/contact' );
define('breadcrumb_qa_url', 'http://paratheme.com/qa/' );
define('breadcrumb_plugin_name', 'Breadcrumb' );
define('breadcrumb_share_url', 'https://wordpress.org/plugins/breadcrumb/' );
define('breadcrumb_tutorial_video_url', '//www.youtube.com/embed/8OiNCDavSQg?rel=0' );


require_once( plugin_dir_path( __FILE__ ) . 'includes/breadcrumb-functions.php');
require_once( plugin_dir_path( __FILE__ ) . 'includes/BreadcrumbClass.php');




function breadcrumb_paratheme_init_scripts()
	{

		wp_enqueue_script('jquery');
		wp_enqueue_script('breadcrumb_js', plugins_url( '/js/scripts.js' , __FILE__ ) , array( 'jquery' ));
		wp_enqueue_style('breadcrumb_style', breadcrumb_plugin_url.'css/style.css');		
		wp_enqueue_style('breadcrumb-themes', breadcrumb_plugin_url.'css/breadcrumb-themes.css');

		//ParaAdmin
		wp_enqueue_style('ParaAdmin', breadcrumb_plugin_url.'ParaAdmin/css/ParaAdmin.css');
		//wp_enqueue_style('ParaIcons', breadcrumb_plugin_url.'ParaAdmin/css/ParaIcons.css');		
		wp_enqueue_script('ParaAdmin', plugins_url( 'ParaAdmin/js/ParaAdmin.js' , __FILE__ ) , array( 'jquery' ));
		
		wp_enqueue_style( 'wp-color-picker' );
		wp_enqueue_script( 'breadcrumb_color_picker', plugins_url('/js/color-picker.js', __FILE__ ), array( 'wp-color-picker' ), false, true );
		
	}
add_action("init","breadcrumb_paratheme_init_scripts");


register_activation_hook(__FILE__, 'breadcrumb_paratheme_activation');


function breadcrumb_paratheme_activation()
	{
		$breadcrumb_version= "1.2";
		update_option('breadcrumb_version', $breadcrumb_version); //update plugin version.
		
		$breadcrumb_customer_type= "free"; //customer_type "pro"
		update_option('breadcrumb_customer_type', $breadcrumb_customer_type); //update plugin version.
		

		
		
		
		
	}


function breadcrumb_display($atts, $content = null ) {
		$atts = shortcode_atts(
			array(
				'id' => "",

				), $atts);



			$html = '';
			
			$breadcrumb = new breadcrumb();
			$html.= $breadcrumb->breadcrumb_html();

			return $html;



}

add_shortcode('breadcrumb', 'breadcrumb_display');









add_action('admin_menu', 'breadcrumb_paratheme_menu_init');


	
function breadcrumb_menu_settings(){
	include('breadcrumb-settings.php');	
}





function breadcrumb_paratheme_menu_init()
	{
		add_menu_page(__('Breadcrumb','breadcrumb'), __('Breadcrumb','breadcrumb'), 'manage_options', 'breadcrumb_menu_settings', 'breadcrumb_menu_settings');


	}





?>