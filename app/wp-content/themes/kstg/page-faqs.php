<?php
/*
 Template Name: FAQs
 *
 * @package WordPress
 * @subpackage kstg
*/
 ?>

<?php get_header(); ?>

<h1><?php the_title() ?></h1>

<?php

$faqs = get_posts( array(
  'post_type' => 'faq_type'
));

if ($faqs) : foreach ( $faqs as $post ) : setup_postdata( $post ); ?>

  <h2><?php the_field('question'); ?></h2>
  <p><?php the_field('answer'); ?></p>

<?php
  wp_reset_postdata();
  endforeach;
  endif;
?>
<?php get_footer(); ?>
