<?php
/*
Author: Derrick & Sarah Showers

Custom stuff for KSTG
*/

function kstg_beep_beep() {
  // remove things we don't need from admin menu (e.g. comments and posts)
  function remove_menus(){
    remove_menu_page( 'edit.php' );                   //Posts
    remove_menu_page( 'edit-comments.php' );          //Comments
  }
  add_action( 'admin_menu', 'remove_menus' );

  // force everyone to use the same color scheme
  function change_admin_color($result) {
    return 'ectoplasm';
  }
  add_filter('get_user_option_admin_color', 'change_admin_color');

  // change the logo for login
  function kstg_login_logo() { ?>
    <style type="text/css">
      .login h1 a {
        background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/library/images/logo.svg);
        height: 98px;
        width: 150px;
        background-size: 150px;
      }
      .login .button-primary {
        background-color: #480A52 !important;
        border: none !important;
      }
    </style>
  <?php }
  add_action( 'login_enqueue_scripts', 'kstg_login_logo' );

  // change the login page link
  function loginpage_custom_link() {
    return 'http://kevinsmithgroup.com';
  }
  add_filter('login_headerurl','loginpage_custom_link');

  function alloweditorToUpdateMenu() {
    $role_object = get_role('editor');
    $role_object->add_cap('edit_theme_options');
  }
  add_action('admin_head', 'alloweditorToUpdateMenu');

  function my_custom_change_ninja_forms_capabilities_filter($capabilities) {
    $capabilities = 'edit_others_posts';
    return $capabilities;
  }
  add_filter( 'ninja_forms_admin_menu_capabilities', 'my_custom_change_ninja_forms_capabilities_filter' );

  function nf_subs_capabilities( $cap ) {
      return 'edit_posts';
  }
  add_filter( 'ninja_forms_admin_submissions_capabilities', 'nf_subs_capabilities' );
}

add_action( 'after_setup_theme', 'kstg_beep_beep' );

?>
