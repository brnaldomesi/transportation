</div><!-- close page-container from header.php -->
<footer class="footer" role="contentinfo" itemscope itemtype="http://schema.org/WPFooter">
  <div class="inner-footer">
    <div class="copyright">
      <p class="kstg">© 2015 Kevin Smith Transportation Group</p>
      <?php wp_nav_menu( array(
        'theme_location' => 'footer-links',
        'container' => 'nav',
        'depth' => 1
      )); ?>
    </div>
    <div class="social">
      <ul>
        <li>
          <a href="<?php the_field('social_facebook', get_page_by_title( 'Homepage/Global' )); ?>" target="_blank"><img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/icon-facebook.svg" alt="Facebook" /></a>
        </li>
        <li>
          <a href="<?php the_field('social_twitter', get_page_by_title( 'Homepage/Global' )); ?>" target="_blank"><img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/icon-twitter.svg" alt="Twitter" /></a>
        </li>
        <li>
          <a href="<?php the_field('social_linkedin', get_page_by_title( 'Homepage/Global' )); ?>" target="_blank"><img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/icon-linkedin.svg" alt="LinkedIn" /></a>
        </li>
        <li>
          <a href="<?php the_field('social_youtube', get_page_by_title( 'Homepage/Global' )); ?>" target="_blank"><img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/icon-youtube.svg" alt="YouTube" /></a>
        </li>
        <li>
          <a href="<?php the_field('social_googleplus', get_page_by_title( 'Homepage/Global' )); ?>" target="_blank"><img class="fluid-images" src="<?php bloginfo('template_url'); ?>/library/images/icon-gplus.svg" alt="Google Plus" /></a>
        </li>
      </ul>
    </div>
  </div>
</footer>
</div>
<?php // all js scripts are loaded in library/bones.php ?>
<?php wp_footer(); ?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-62118693-1', 'auto');
  ga('send', 'pageview');
</script>
</body>
</html> <!-- end of site. what a ride! -->
