<?php
/*
 Template Name: Vehicle
 *
 * @package WordPress
 * @subpackage kstg
*/
 ?>

<?php $heroimage = get_field('hero_image'); ?>
<?php $image1 = get_field('image_carousel_1'); ?>
<?php $image2 = get_field('image_carousel_2'); ?>
<?php $image3 = get_field('image_carousel_3'); ?>
<?php $image4 = get_field('image_carousel_4'); ?>
<?php $image5 = get_field('image_carousel_5'); ?>
<?php $image6 = get_field('image_carousel_6'); ?>

<?php get_header(); ?>
<div id="vehicle" class="vehicle">
  <h2><?php the_field('vehicle_type'); ?></h2>
  <div class="vehicle-hero container">
    <img src="<?php echo $heroimage['url'] ?>" />
    <div>
      <div class="specialFeature"><?php the_field('special_feature'); ?></div>
      <img class="fluid-images callout" id="popular" src="<?php bloginfo('template_url'); ?>/library/images/callout-most-popular.svg" alt="Facebook" width="110px" />
      <img class="fluid-images callout" id="new" src="<?php bloginfo('template_url'); ?>/library/images/callout-new-arrival.svg" alt="Facebook"  width="110px" />
    </div>
</div>
  <div class="about">
    <div class="carousel">
      <button class="prev"></button>
      <div class="carousel-images">
        <ul>
          <?php if( !empty($image1) ): ?>
            <li><img id="img1" src="<?php echo $image1['url']; ?>" alt="<?php echo $image1['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image2) ): ?>
            <li><img id="img2" src="<?php echo $image2['url']; ?>" alt="<?php echo $image2['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image3) ): ?>
            <li><img id="img3" src="<?php echo $image3['url']; ?>" alt="<?php echo $image3['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image4) ): ?>
            <li><img id="img4" src="<?php echo $image4['url']; ?>" alt="<?php echo $image4['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image5) ): ?>
            <li><img id="img5" src="<?php echo $image5['url']; ?>" alt="<?php echo $image5['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image6) ): ?>
            <li><img id="img6" src="<?php echo $image6['url']; ?>" alt="<?php echo $image6['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
        </ul>
      </div>
      <button class="next"></button>
    </div>
    <p class="description"><?php the_field('vehicle_description'); ?></p>
    <div class="button">
      <a href=""><p class="uppercase">Get a quote &#8594;</p></a>
    </div>
    <div class="button">
      <a href=""><p class="uppercase">Make a reservation &#8594;</p></a>
    </div>
    <div class="youtube-video">
      <h3 class="uppercase">Video Vehicle Tour</h3>
      <p><?php the_field('video_description'); ?></p>
      <div class="video">
        <?php the_field('youtube_embed_code'); ?>
      </div>
    </div>
  </div>
</div>
<?php get_footer(); ?>
