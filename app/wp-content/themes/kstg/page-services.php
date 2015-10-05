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
  <div class="services">
    <h2><?php the_field('service_type'); ?></h2>
    <div class="services-hero">
      <img src="<?php echo $image['url'] ?>" />
    </div>
    <div class="container content">
      <h3 class="uppercase purple-text"><?php the_field('description_heading'); ?></h3>
      <p class="description"><?php the_field('service_description'); ?></p>

      <?php
      // *** RECOMMENDED RIDES ***
      //
      // To setup on the WP dashboard, add a field to 'Services', and choose
      // the 'relationship' type. Make sure the name of the field is
      // 'recommended_rides', and then fill out the rest of the details.
      //
      // To add details to each recommended ride, just use the `get_field()` method
      // below, and point it to the name of the field on the vehicle template.

      $posts = get_field('recommended_rides');
      $i = 0;
      if( $posts ): ?>

      <div class="recommended-rides">
        <h3 class="uppercase purple-text">Recommended rides</h3>
          <ul>
            <?php foreach( $posts as $post): ?>
              <?php
                if ($i++ == 3) break;
                setup_postdata($post);
              ?>
              <? $image = get_field('hero_image_1'); ?>
              <li>
                <a href="<?php the_permalink() ?>">
                  <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" class="fluid-images"/>
                </a>
              </li>
            <?php endforeach; ?>
          </ul>
          <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
      </div>
      <?php endif; // END RECOMMENDED RIDES SECTION ?>

      <div class="quote-form-container">
        <?php if (function_exists( 'ninja_forms_display_form' ) && get_field('form_ninja_id')) { ?>
          <div class="quote-form-instructions">
            <h3 class="uppercase purple-text">Get a Quote!</h3>
            <p class="description">Have a question about this or any vehicle in our fleet?</p>
            <p class="description">Send us a message with the vehicle name plus details of your needs and we'll get back to you within 1 business day!</p>
          </div>
          <div class="quote-form two-column-form">
            <?php ninja_forms_display_form(get_field('form_ninja_id')); ?>
          </div>
        <?php } ?>
      </div>
    </div>
  </div>
<?php get_footer(); ?>
