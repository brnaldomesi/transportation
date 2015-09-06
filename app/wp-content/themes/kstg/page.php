<?php get_header(); ?>

<h2><?php the_title() ?></h2>
<div class="container content text-template-copy">

  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    <?php the_content(); ?>
  <?php endwhile; ?>
  <?php endif; ?>

</div>

<?php get_footer(); ?>
