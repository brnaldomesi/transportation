<?php
/*
 Template Name: Fleet
 *
 * @package WordPress
 * @subpackage kstg
*/
 ?>

<?php get_header(); ?>

<?php

// get the child pages of the current page. For the main fleet page,
// this will be all subcategories.
$childPages = get_pages(array(
  'meta_key' => '_wp_page_template',
  'meta_value' => 'page-fleet.php',
  'child_of' => get_the_ID()
));

// if we have subcategories, let's get going!
if( $childPages ): ?>


    <?php

    // first, let's loop through all our subcategories (stretch limos, ...)
    foreach( $childPages as $post):

    // setup $post as a global to change our context
    setup_postdata($post);

    ?>

        <!-- any markup for the subcats goes here (e.g. the heading) -->
        <h1><?php the_title(); ?></h1>

        <?php

        // now, we need the actual vehicles, all pages that are a child of the
        // current $post... ends up happening for each subcategory
        $vehiclePages = get_pages(array(
          'child_of' => get_the_ID()
        ));

        if( $vehiclePages ): ?>

          <ul>
            <?php foreach( $vehiclePages as $post): ?>
              <?php setup_postdata($post); ?>
              <a href="<?php echo wp_get_shortlink(); ?>"><li>
                <h4><?php the_field('vehicle_type'); ?></h4>
                <img src="<?php echo get_field('hero_image')['url']; ?>" height="200" width="500" />
              </li></a>
            <?php endforeach; ?>
          </ul>

          <?php wp_reset_postdata(); //reset the context ?>
        <?php endif; // end of vehicle area, php style ?>
        <!-- end of subcat area -->
    <?php endforeach; ?>
  <?php wp_reset_postdata(); ?>
<?php endif; ?>

<?php get_footer(); ?>
