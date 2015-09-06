<?php
/*
 Template Name: Vehicle
 *
 * @package WordPress
 * @subpackage kstg
*/
 ?>

<?php $hero1 = get_field('hero_image_1'); ?>
<?php $hero2 = get_field('hero_image_2'); ?>
<?php $hero3 = get_field('hero_image_3'); ?>
<?php $hero4 = get_field('hero_image_4'); ?>
<?php $hero5 = get_field('hero_image_5'); ?>
<?php $hero6 = get_field('hero_image_6'); ?>
<?php $image1 = get_field('image_carousel_1'); ?>
<?php $image2 = get_field('image_carousel_2'); ?>
<?php $image3 = get_field('image_carousel_3'); ?>
<?php $image4 = get_field('image_carousel_4'); ?>
<?php $image5 = get_field('image_carousel_5'); ?>
<?php $image6 = get_field('image_carousel_6'); ?>
<?php $video = get_field('youtube_embed_code'); ?>

<?php get_header(); ?>
<div id="vehicle" class="vehicle">
  <h2><?php the_field('vehicle_type'); ?></h2>
  <div class="vehicle-hero container">
    <?php if( !empty($hero1) ): ?>
    <img id="img1-hero" class="active" src="<?php echo $hero1['sizes']['hero-image'] ?>" />
    <?php endif; ?>
    <?php if( !empty($hero2) ): ?>
    <img id="img2-hero" src="<?php echo $hero2['sizes']['hero-image'] ?>" />
    <?php endif; ?>
    <?php if( !empty($hero3) ): ?>
    <img id="img3-hero" src="<?php echo $hero3['sizes']['hero-image'] ?>" />
    <?php endif; ?>
    <?php if( !empty($hero4) ): ?>
    <img id="img4-hero" src="<?php echo $hero4['sizes']['hero-image'] ?>" />
    <?php endif; ?>
    <?php if( !empty($hero5) ): ?>
    <img id="img5-hero" src="<?php echo $hero5['sizes']['hero-image'] ?>" />
    <?php endif; ?>
    <?php if( !empty($hero6) ): ?>
    <img id="img6-hero" src="<?php echo $hero6['sizes']['hero-image'] ?>" />
    <?php endif; ?>
    <div>
      <div class="specialFeature">
        <?php the_field('special_feature'); ?>
      </div>
      <img class="fluid-images callout" id="popular" src="<?php bloginfo('template_url'); ?>/library/images/callout-most-popular.svg" alt="Facebook" width="110px" />
      <img class="fluid-images callout" id="new" src="<?php bloginfo('template_url'); ?>/library/images/callout-new-arrival.svg" alt="Facebook"  width="110px" />
    </div>
  </div>

  <div class="container content about">
    <div class="carousel">
      <button class="prev"></button>
      <div class="carousel-images">
        <ul>
          <?php if( !empty($image1) ): ?>
            <li><img id="img1-thumb" src="<?php echo $image1['sizes']['gallery-thumb']; ?>" alt="<?php echo $image1['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image2) ): ?>
            <li><img id="img2-thumb" src="<?php echo $image2['sizes']['gallery-thumb']; ?>" alt="<?php echo $image2['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image3) ): ?>
            <li><img id="img3-thumb" src="<?php echo $image3['sizes']['gallery-thumb']; ?>" alt="<?php echo $image3['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image4) ): ?>
            <li><img id="img4-thumb" src="<?php echo $image4['sizes']['gallery-thumb']; ?>" alt="<?php echo $image4['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image5) ): ?>
            <li><img id="img5-thumb" src="<?php echo $image5['sizes']['gallery-thumb']; ?>" alt="<?php echo $image5['alt']; ?>" width="200px" height="100px" /></li>
          <?php endif; ?>
          <?php if( !empty($image6) ): ?>
            <li><img id="img6-thumb" src="<?php echo $image6['sizes']['gallery-thumb']; ?>" alt="<?php echo $image6['alt']; ?>" width="200px" height="100px" /></li>
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

    <?php if( !empty($video) ): ?>
    <div class="youtube-video">
      <h3 class="uppercase">Video Vehicle Tour</h3>
      <p><?php the_field('video_description'); ?></p>
      <div class="video">
        <?php the_field('youtube_embed_code'); ?>
      </div>
    </div>
    <?php endif; ?>

  </div>
</div>

<?php get_footer(); ?>
