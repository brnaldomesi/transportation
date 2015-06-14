<?php
/*
 Template Name: Vehicle
 *
 * @package WordPress
 * @subpackage kstg
*/
?>

<?php $image = get_field('hero_image'); ?>
<?php get_header(); ?>
      <div id="fleet">
        <h2><?php the_field('vehicle_type'); ?></h2>
        <img src="<?php echo $image['url'] ?>" width="500" height="200" />
        <div><?php the_field('special_feature'); ?></div>
        <p><?php the_field('vehicle_desciption'); ?></p>
        <?php the_field('youtube_embed_code'); ?>
      </div>
<?php get_footer(); ?>
