<?php
/*
 Template Name: Homepage
 *
 * @package WordPress
 * @subpackage kstg
*/
?>

<?php get_header(); ?>
<div class="homepage-wrapper">
  <section class="main">
    <div class="homepage-banner">
      <p class="uppercase">Kevin Smith Transportation Group</p>
      <p class="headline">Pennsylvania's Luxury Limousine Source</p>
    </div>

    <div class="gallery-container row">

      <?php
      // get images for homepage gallery
      $image1 = get_field('hero_image_1');
      $image2 = get_field('hero_image_2');
      $image3 = get_field('hero_image_3');
      $image4 = get_field('hero_image_4');
      ?>
      <div class="gallery-corporate col-1-4">
        <img class="fluid-images" src="<?php echo $image1['url'] ?>" alt="<?php echo $image1['alt'] ?>" width="280" height="350" />
        <a href="<?php the_field('hero_image_1_destination'); ?>" class="no-underline"><p><?php echo $image1['title'] ?> &#8594;</p></a>
      </div>
      <div class="gallery-events col-1-4">
        <img class="fluid-images" src="<?php echo $image2['url'] ?>" alt="<?php echo $image2['alt'] ?>" width="280" height="350" />
        <a href="<?php the_field('hero_image_2_destination'); ?>" class="no-underline"><p class="events"><?php echo $image2['title'] ?> &#8594;</p></a>
      </div>
      <div class="gallery-travel col-1-4">
        <img class="fluid-images" src="<?php echo $image3['url'] ?>" alt="<?php echo $image3['alt'] ?>" width="280" height="350" />
        <a href="<?php the_field('hero_image_3_destination'); ?>" class="no-underline"><p><?php echo $image3['title'] ?> &#8594;</p></a>
      </div>
      <div class="gallery-wedding col-1-4">
        <img class="fluid-images" src="<?php echo $image4['url'] ?>" alt="<?php echo $image4['alt'] ?>" alt="personal services and events" alt="wedding services" width="280" height="350" />
        <a href="<?php the_field('hero_image_4_destination'); ?>" class="no-underline"><p><?php echo $image4['title'] ?> &#8594;</p></a>
      </div>
    </div>
    <div class="about">
      <h1><?php the_field('text_area_title'); ?></h1>
      <p><?php the_field('text_area_content'); ?></p>
      <div class="button">
        <a href="https://book.mylimobiz.com/v4/ksmithtrans" data-ores-widget="website" data-ores-alias="ksmithtrans"><p>Make a reservation &#8594;</p></a>
      </div>
    </div>
  </section>
  <aside class="row">
    <div class="aside-wrapper">
      <div class="newsletter col-1-2">
        <form action="//kevinsmithgroup.us11.list-manage.com/subscribe/post?u=5fef121354fe7d660e5e70b73&amp;id=097e20dcdd" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
          <h2>Sign up for our Newsletter</h2>
          <label for="newsletter-email-addressL">Email Address</label>
          <input type="email" value="" name="EMAIL" class="required email" id="newsletter-email-address">
          <button value="Subscribe" name="subscribe" class="button no-underline">Submit &#8594;</button>

          <!-- MailChimp's bot protection, leaving it alone -->
          <div style="position: absolute; left: -5000px;"><input type="text" name="b_5fef121354fe7d660e5e70b73_097e20dcdd" tabindex="-1" value=""></div>
          <!-- End MailChimp stuff -->
        </form>
      </div>
      <div class="contact-us col-1-2">
        <h2>Contact Us</h2>
        <h3>Kevin Smith Transportation Group</h3>
        <p><?php the_field('mailing_address'); ?></p>
        <br />
        <p><?php the_field('phone_number'); ?></p>
        <a href="mailto:<?php the_field('email_address'); ?>"><p><?php the_field('email_address'); ?></p></a>
      </div>
    </div>
  </aside>
</div>

<?php get_footer(); ?>
