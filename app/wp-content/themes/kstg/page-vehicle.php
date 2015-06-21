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

 <?php
    $image4 = "./sidebar.php";
    if (file_exists($file)){
        echo "The file $file exists.";
    }else{
        echo "The file $file does not exist.";
    }
    clearstatcache();
?>

 <?php get_header(); ?>
 <div id="fleet" class="fleet">
  <h2><?php the_field('vehicle_type'); ?></h2>
  <div class="fleet-hero">
    <img src="<?php echo $heroimage['url'] ?>" />
    <div class="special-feature"><?php the_field('special_feature'); ?></div>
  </div>
  <div class="about">
    <div class="carousel">
      <button class="prev"></button>
      <div class="carousel-images">
        <ul>




          <li><img src="<?php echo $image1['url'] ?>" width="200px" height="100px" /></li>
          <li><img src="<?php echo $image2['url'] ?>" width="200px" height="100px" /></li>
          <li><img src="<?php echo $image3['url'] ?>" width="200px" height="100px" /></li>
          <li><img src="<?php echo $image4['url'] ?>" width="200px" height="100px" /></li>
          <li><img src="<?php echo $image5['url'] ?>" width="200px" height="100px" /></li>
          <li><img src="<?php echo $image6['url'] ?>" width="200px" height="100px" /></li>
        </ul>
      </div>
      <button class="next"></button>
    </div>
    <p class="description"><?php the_field('vehicle_description'); ?></p>
    <div class="button">
      <a href=""><p>Get a quote &#8594;</p></a>
    </div>
    <div class="button">
      <a href=""><p>Make a reservation &#8594;</p></a>
    </div>
    <div class="youtube-video">
      <h3>Video Vehicle Tour</h3>
      <p>Lorem ipsum</p>
      <div class="video">
        <?php the_field('youtube_embed_code'); ?>
      </div>
    </div>
  </div>
</div>
<?php get_footer(); ?>
