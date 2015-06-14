<?php
/*
 Template Name: Services
 *
 * @package WordPress
 * @subpackage kstg
*/
?>
<?php $image = get_field('hero_image'); ?>
<?php get_header(); ?>
      <div id="services">
        <h2><?php the_field('service_type'); ?></h2>
        <img src="<?php echo $image['url'] ?>" width="500" height="200" />
        <?php the_field('service_description'); ?>
      </div>
<?php get_footer(); ?>
