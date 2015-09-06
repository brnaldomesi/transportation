<?php
/*
 Template Name: FAQs
 *
 * @package WordPress
 * @subpackage kstg
*/
 ?>

<?php get_header(); ?>

<h2><?php the_title() ?></h2>
<div class="container content text-template-copy">

<?php $faqs = get_posts( array(
  'posts_per_page' => 100,
  'post_type' => 'faq_type'
));

if ($faqs) : foreach ( $faqs as $post ) : setup_postdata( $post ); ?>


    <h3><?php the_field('question'); ?></h3>
    <p><?php the_field('answer'); ?></p>
    <br />

<?php
  wp_reset_postdata();
  endforeach;
  endif;
?>
</div>

<?php get_footer(); ?>
