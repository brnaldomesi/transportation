<?php

// Flush rewrite rules for custom post types
add_action( 'after_switch_theme', 'bones_flush_rewrite_rules' );

// Flush your rewrite rules
function bones_flush_rewrite_rules() {
  flush_rewrite_rules();
}

// let's create the function for the custom type
function faq_post_type() {
  // creating (registering) the custom type
  register_post_type( 'faq_type', /* (http://codex.wordpress.org/Function_Reference/register_post_type) */
    // let's now add all the options for this post type
    array( 'labels' => array(
      'name' => __( 'FAQs', 'bonestheme' ), /* This is the Title of the Group */
      'singular_name' => __( 'FAQ', 'bonestheme' ), /* This is the individual type */
      'all_items' => __( 'All FAQs', 'bonestheme' ), /* the all items menu item */
      'add_new' => __( 'Add New', 'bonestheme' ), /* The add new menu item */
      'add_new_item' => __( 'Add New FAQ', 'bonestheme' ), /* Add New Display Title */
      'edit' => __( 'Edit', 'bonestheme' ), /* Edit Dialog */
      'edit_item' => __( 'Edit Existing FAQ', 'bonestheme' ), /* Edit Display Title */
      'new_item' => __( 'New FAQ', 'bonestheme' ), /* New Display Title */
      'view_item' => __( 'View FAQ', 'bonestheme' ), /* View Display Title */
      'search_items' => __( 'Search FAQs', 'bonestheme' ), /* Search Custom Type Title */
      'not_found' =>  __( 'No questions have been entered.', 'bonestheme' ), /* This displays if there are no entries yet */
      'not_found_in_trash' => __( 'Nothing found in Trash', 'bonestheme' ), /* This displays if there is nothing in the trash */
      'parent_item_colon' => ''
      ), /* end of arrays */
      'description' => __( 'This is the example custom post type', 'bonestheme' ), /* Custom Type Description */
      'public' => true,
      'publicly_queryable' => true,
      'exclude_from_search' => false,
      'show_ui' => true,
      'query_var' => true,
      'menu_position' => 8, /* this is what order you want it to appear in on the left hand side menu */
      'menu_icon' => 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+PHN2ZyB3aWR0aD0iNTc2cHgiIGhlaWdodD0iNTc1cHgiIHZpZXdCb3g9IjAgMCA1NzYgNTc1IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnNrZXRjaD0iaHR0cDovL3d3dy5ib2hlbWlhbmNvZGluZy5jb20vc2tldGNoL25zIj4gICAgICAgIDx0aXRsZT5RdWVzdGlvbl9tYXJrX2FsdGVybmF0ZTwvdGl0bGU+ICAgIDxkZXNjPkNyZWF0ZWQgd2l0aCBTa2V0Y2guPC9kZXNjPiAgICA8ZGVmcz48L2RlZnM+ICAgIDxnIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHNrZXRjaDp0eXBlPSJNU1BhZ2UiPiAgICAgICAgPGcgaWQ9IlF1ZXN0aW9uX21hcmtfYWx0ZXJuYXRlIiBza2V0Y2g6dHlwZT0iTVNMYXllckdyb3VwIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjAwMDAwMCwgLTEuMDAwMDAwKSIgZmlsbD0iI0EwQTVBQSI+ICAgICAgICAgICAgPGcgaWQ9ImxheWVyMSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC4wOTI1MTMsIDAuMzc0MTE1KSIgc2tldGNoOnR5cGU9Ik1TU2hhcGVHcm91cCI+ICAgICAgICAgICAgICAgIDxnIGlkPSJnMTE0NzYiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAuMDAwMDAwLCAwLjAwMDAwMCkiPiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTM2MC41OTE3MTMsNDMyLjI0OTI3NCBMMjE1LjkwNDgsNDMyLjI0OTI3NCBMMjE1LjkwNDgsNDE3LjcyMjA0MyBDMjE1LjkwNDU5NywzOTMuMDAwNDc1IDIxOS41NDU4MTksMzcyLjkyOTk3OSAyMjYuODI4NDgyLDM1Ny41MTA0OTEgQzIzNC4xMTA3MjMsMzQyLjA5MTQ5OCAyNDYuODIzNzYyLDMyOC4wMTAyOTEgMjYxLjIyMzM5OCwzMTUuMjY2ODI1IEMyNzUuNjIyNTQyLDMwMi41MjM5NDUgMjk2Ljc0NzAzNywyOTguMTEzNTggMzQ3LjA2MjQ4MywyNjYuMDAwNDIxIEMzNzMuODc0OCwyNDkuMTc5NzkxIDM5My44MzM1NTYsMjE1Ljc0MjkzNSAzOTMuODMzOTM2LDIwMS43MjUwMzggQzM5NS43MDU2ODMsMTY0LjY0NTQwMiAzODIuMDQwMDYsMTUwLjA0MTAzOCAzNjQuNTkxODE1LDEzNi42MDcwNjIgQzM0NS40MDg3MjMsMTIzLjc4OTIzMSAzMTMuMjYxMzcyLDExNy4wMTkyOSAyODcuNjAxNjM3LDExNy4wMTkyOSBDMjY0LjA5ODg3MSwxMTcuMDE5NzQgMjI5LjY3NDQyOCwxMjIuMjg4MzI2IDIxMy4zNDYxODMsMTMzLjU0NTc3MiBDMTkxLjQwMTA0LDE0NC44MDQwNzcgMTU4LjE1MTYzNCwxODEuNTU4Mzg4IDE2NS4wODEzNCwyMTguNTg0MDk1IEwwLjUwOTEyMzEwNCwyMTkuNjkyOTMyIEMwLjUwOTEyMzEwNCwxMTcuMjgyNzY1IDI1LjM3NzgzNyw5MC4yNjIwMDU4IDg0LjI3MjE0MTcsNDguMzUzMzUxOCBDMTQxLjI5NDEwNCwxMi45MzIwNjk3IDE5MS4zMjQ2ODQsMC42MjU4ODUgMjkwLjU4MDgyOCwwLjYyNTg4NSBDMzY2LjQ4NzIsMC42MjU4ODUgNDI3LjU1NDk4NSwxMi4yMjI3NDU3IDQ3MS45MTIyMDksMzUuNDE0Nzg5OCBDNTMyLjE1NzQzNCw2Ni43NjM1MzA1IDU3NS4zODU3NCwxMDcuODQwNDM2IDU3NS4zODU3NCwxODUuMzExNyBDNTc1LjM4NTE1NiwyMTQuMTgyNTUgNTU5LjE4MTYyOCwyNDQuNDUwNTEgNTM4Ljk0MzkxMSwyNjguOTA4NjA0IEM1MjMuMzg1MzksMjg5LjA0MzE2NiA0ODcuODYzMTksMzEyLjE5NjA4MyA0MzguOTI5NjMyLDMzNi45MjYwMTYgQzQwMi42ODc5MiwzNTMuNzExODQxIDM4Mi41MjE0MjQsMzcxLjUyODIzMSAzNzMuNzQ5Nzg2LDM4My44ODg4ODUgQzM2NC45NzczNDUsMzk2LjI0OTk4OCAzNjAuNTkxMzI0LDQxMi4zNzAxMDMgMzYwLjU5MTcxMyw0MzIuMjQ5Mjc0IEwzNjAuNTkxNzEzLDQzMi4yNDkyNzQgTDM2MC41OTE3MTMsNDMyLjI0OTI3NCBaIiBpZD0icGF0aDExNDcyIj48L3BhdGg+ICAgICAgICAgICAgICAgICAgICA8cGF0aCBkPSJNMzY4LjE4OTcwNCw1MjcuMzg2Mjk5IEMzNjguMTk1NTY3LDU0NC4zODI1MTMgMzUzLjAzMTc5Niw1NjAuMDg5MTYzIDMyOC40MTE4MSw1NjguNTg4MjgyIEMzMDMuNzkxODI0LDU3Ny4wODc0MDEgMjczLjQ1NzA1OCw1NzcuMDg3NDAxIDI0OC44MzcwNzIsNTY4LjU4ODI4MiBDMjI0LjIxNzA4Niw1NjAuMDg5MTYzIDIwOS4wNTMzMTUsNTQ0LjM4MjUxMyAyMDkuMDU5MTc4LDUyNy4zODYyOTkgQzIwOS4wNTMzMTUsNTEwLjM5MDA4NCAyMjQuMjE3MDg2LDQ5NC42ODM0MzUgMjQ4LjgzNzA3Miw0ODYuMTg0MzE1IEMyNzMuNDU3MDU4LDQ3Ny42ODUxOTYgMzAzLjc5MTgyNCw0NzcuNjg1MTk2IDMyOC40MTE4MSw0ODYuMTg0MzE1IEMzNTMuMDMxNzk2LDQ5NC42ODM0MzUgMzY4LjE5NTU2Nyw1MTAuMzkwMDg0IDM2OC4xODk3MDQsNTI3LjM4NjI5OSBMMzY4LjE4OTcwNCw1MjcuMzg2Mjk5IFoiIGlkPSJwYXRoMTE0NzQiPjwvcGF0aD4gICAgICAgICAgICAgICAgPC9nPiAgICAgICAgICAgIDwvZz4gICAgICAgIDwvZz4gICAgPC9nPjwvc3ZnPg==', /* the icon for the custom post type menu */
      'rewrite' => array( 'slug' => 'faq_type', 'with_front' => false ), /* you can specify its url slug */
      'has_archive' => 'faq_type', /* you can rename the slug here */
      'capability_type' => 'post',
      'hierarchical' => false,
      /* the next one is important, it tells what's enabled in the post editor */
      'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'trackbacks', 'custom-fields', 'comments', 'revisions', 'sticky')
    ) /* end of options */
  ); /* end of register post type */
}

// adding the function to the Wordpress init
add_action( 'init', 'faq_post_type');

?>
