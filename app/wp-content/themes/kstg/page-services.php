<?php
/*
 Template Name: Services
 *
 * @package WordPress
 * @subpackage kstg
*/
?>
<?php $image = get_field('hero_image'); ?>
<?php $image1 = get_field('image_gallery_1'); ?>
<?php $image2 = get_field('image_gallery_2'); ?>
<?php $image3 = get_field('image_gallery_3'); ?>

<?php get_header(); ?>
  <div id="services" class="services">
    <h2><?php the_field('service_type'); ?></h2>
    <div class="services-hero container">
      <img src="<?php echo $image['url'] ?>" />
    </div>
    <div class="container content">
      <h3 class="uppercase purple-text">Section Title</h3>
      <p class="description"><?php the_field('service_description'); ?></p>
      <div class="recommended-rides">
        <h3 class="uppercase purple-text">Recommended rides</h3>
        <ul>
          <?php if( !empty($image1) ): ?>
            <li><img src="<?php echo $image1['url']; ?>" alt="<?php echo $image1['alt']; ?>" width="300px" height="150px" /></li>
          <?php endif; ?>
          <?php if( !empty($image2) ): ?>
            <li><img src="<?php echo $image2['url']; ?>" alt="<?php echo $image2['alt']; ?>" width="300px" height="150px" /></li>
          <?php endif; ?>
          <?php if( !empty($image3) ): ?>
            <li><img src="<?php echo $image3['url']; ?>" alt="<?php echo $image3['alt']; ?>" width="300px" height="150px" /></li>
          <?php endif; ?>
        </ul>
      </div>
<!--       <form class="quote-form">
        <fieldset class="form-layout">
          <h3 class="uppercase purple-text">Get a Quote!</h3>
          <p class="description">Have a question about this or any vehicle in our fleet?<br />
            Send us a message with the vehicle name plus details of your needs and we'll get back to you within 1 business day!</p>
        </fieldset>
        <fieldset class="form-layout">
          <label>Your Name</label><input type="text" value="" name="name">
          <label>Your Email Address</label><input type="email" value="" name="email">
          <label>Subject Line</label><input type="text" value="" name="subject">
        </fieldset>
        <fieldset class="form-layout">
          <label>Your Message</label><textarea  name="message" rows="10" cols="50"></textarea>
          <button name="subscribe" class="button no-underline">Get a Quote &#8594;</button>
        </fieldset>
      </form> -->
    </div>
  </div>
<?php get_footer(); ?>
