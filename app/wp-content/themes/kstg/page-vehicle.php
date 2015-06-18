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
 <div id="fleet" class="fleet">
  <h2><?php the_field('vehicle_type'); ?></h2>
  <div class="fleet-hero">
    <img src="<?php echo $image['url'] ?>" />
    <div class="special-feature"><?php the_field('special_feature'); ?></div>
  </div>
  <div class="about">
    <div class="carousel">
      <img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/chevron-l-grey.svg" alt="" width="37px" height="37px" />
      <img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/chevron-l-purple.svg" alt="" width="37px" height="37px" />
      <div class="carousel-images">
        <img src="<?php echo $image['url'] ?>" width="200px" height="100px" />
        <img src="<?php echo $image['url'] ?>" width="200px" height="100px" />
        <img src="<?php echo $image['url'] ?>" width="200px" height="100px" />
      </div>
      <img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/chevron-r-grey.svg" alt="" width="37px" height="37px" />
      <img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/chevron-r-purple.svg" alt="" width="37px" height="37px" />
    </div>
    <p><?php the_field('vehicle_description'); ?></p>
    <div class="button">
      <a href=""><p>Get a quote &#8594;</p></a>
    </div>
    <div class="button">
      <a href=""><p>Make a reservation &#8594;</p></a>
    </div>
    <?php the_field('youtube_embed_code'); ?>
  </div>
</div>
<?php get_footer(); ?>
