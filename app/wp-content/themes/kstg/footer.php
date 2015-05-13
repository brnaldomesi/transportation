			<footer class="footer" role="contentinfo" itemscope itemtype="http://schema.org/WPFooter">

				<div id="inner-footer" class="wrap cf">

					<nav role="navigation">
						<?php wp_nav_menu(array(
    					'container' => 'div',                           // enter '' to remove nav container (just make sure .footer-links in _base.scss isn't wrapping)
    					'container_class' => 'footer-links cf',         // class of container (should you choose to use it)
    					'menu' => __( 'Footer Links', 'bonestheme' ),   // nav name
    					'menu_class' => 'nav footer-nav cf',            // adding custom nav class
    					'theme_location' => 'footer-links',             // where it's located in the theme
    					'before' => '',                                 // before the menu
    					'after' => '',                                  // after the menu
    					'link_before' => '',                            // before each link
    					'link_after' => '',                             // after each link
    					'depth' => 0,                                   // limit the depth of the nav
    					'fallback_cb' => 'bones_footer_links_fallback'  // fallback function
						)); ?>
					</nav>
          <ul>
            <li>
              <p>© 2015 Kevin Smith Transportation Group</p>
            </li>
            <li>
              <p>Legal</p>
            </li>
            <li>
              <p>Lorem Ipsum</p>
            </li>
            <li>
              <p>Lorem Ipsum</p>
            </li>
          </ul>
          <ul>
            <a href="https://www.facebook.com/kevinsmithgroup" target="_blank"><li><img src="" /></li></a><!-- Facebook -->
            <a href="https://www.twitter.com/Kevinsmithgrp" target="_blank"><li><img src="" /></li></a><!-- Twitter -->
            <a href="https://www.linkedin.com/company/kevin-smith-transportation-group" target="_blank"><li><img src="" /></li></a><!-- LinkedIn -->
            <a href="https://www.youtube.com/channel/UCMeEufGeiAWaxOsIS0Lwegg" target="_blank"><li><img src="" /></li></a><!-- Youtube -->
            <a href="https://plus.google.com/b/115066308991397006542/115066308991397006542/posts" target="_blank"><li><img src="" /></li></a><!-- googleplus -->
          </ul>
				</div>

			</footer>

		</div>

		<?php // all js scripts are loaded in library/bones.php ?>
		<?php wp_footer(); ?>

	</body>

</html> <!-- end of site. what a ride! -->
