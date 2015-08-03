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

        <h3>Recommended Rides</h3>
        <?php $vehicles = get_field('recommended_rides');

        if ( $vehicles ): ?>
          <ul>
            <?php foreach ( $vehicles as $post ): ?>
              <?php setup_postdata($post); ?>
              <li>
                <img src="<?php echo get_field('hero_image')['url']?>" alt="<?php echo get_field('hero_image')['alt']?>" />
                <a href="<?php the_permalink(); ?>"><?php the_field('vehicle_type'); ?></a>
              </li>
            <?php endforeach; ?>
          </ul>
          <?php wp_reset_postdata(); ?>
        <?php endif; ?>
      </div>
<?php get_footer(); ?>
