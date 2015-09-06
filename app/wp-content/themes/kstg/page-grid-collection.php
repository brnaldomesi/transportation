<?php
/*
 Template Name: Grid Collection
 *
 * @package WordPress
 * @subpackage kstg
*/
 ?>

<?php get_header(); ?>
<div class="fleet">
  <h2><?php the_title(); ?></h2>
  <div class="container content">
    <?php
    // get the child pages of the current page. For the main fleet page,
    // this will be all subcategories.
    $categoryPages = get_pages(array(
      'parent' => get_the_ID()
    ));

    // if we have subcategories, let's get going!
    if( $categoryPages ): ?>

      <?php
      // first, let's loop through all our subcategories (stretch limos, ...)
      foreach( $categoryPages as $post):

      // setup $post as a global to change our context
      setup_postdata($post);
      ?>

      <!-- sets child pages -->
      <?php
      // now, we need the actual vehicles, all pages that are a child of the
      // current $post... ends up happening for each subcategory
      $childPages = get_pages(array(
        'child_of' => get_the_ID()
      )); ?>

      <?php if( $childPages ): // if categoryPage had childPages show h3 and set childpages ?>
        <!-- any markup for the subcats goes here (e.g. the heading) -->
        <h3 class="uppercase purple-text"><?php the_title(); ?></h3>

        <ul class="fleet-page">
          <?php foreach( $childPages as $post): ?>
          <?php setup_postdata($post); ?>
          <li><a href="<?php echo wp_get_shortlink(); ?>">
            <img class="fluid-images" src="<?php echo get_field('hero_image')['url']; ?>" />
            <h4 class="uppercase"><?php the_field('type'); ?> &#8594;</h4>
          </a></li>
          <?php endforeach; ?>
        </ul>

        <?php wp_reset_postdata(); //reset the context ?>

      <?php else: ?>

        <ul class="column">
          <li><a href="<?php echo wp_get_shortlink(); ?>">
            <img class="fluid-images" src="<?php echo get_field('hero_image')['url']; ?>" />
            <h4 class="uppercase"><?php the_field('type'); ?> &#8594;</h4>
          </a></li>
        </ul>

      <?php endif; // end of h3 if ?>

      <!-- end of subcat area -->
      <?php endforeach; ?>
    <?php wp_reset_postdata(); ?>
    <?php endif; ?>
  </div>
</div>



<?php get_footer(); ?>
