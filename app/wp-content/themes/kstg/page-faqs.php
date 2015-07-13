<?php
/*
 Template Name: FAQs
 *
 * @package WordPress
 * @subpackage kstg
*/
 ?>

<?php get_header(); ?>

<div class="container">
  <h1><?php the_title() ?></h1>
</div>

<?php

$faqs = get_posts( array(
  'post_type' => 'faq_type'
));

if ($faqs) : foreach ( $faqs as $post ) : setup_postdata( $post ); ?>

  <div class="container content">
    <h2><?php the_field('question'); ?></h2>
    <p><?php the_field('answer'); ?></p>
  </div>

<?php
  wp_reset_postdata();
  endforeach;
  endif;
?>
<?php get_footer(); ?>
