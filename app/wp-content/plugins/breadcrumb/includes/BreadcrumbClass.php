<?php



if ( ! defined('ABSPATH')) exit;  // if direct access 

class breadcrumb
	{
		
		public function breadcrumb_get_option($option_name)
			{
				return get_option($option_name);
			}	
		
		public function breadcrumb_get_page_childs()
			{
				$breadcrumb_separator = $this->breadcrumb_get_option('breadcrumb_separator');
				
				
				global $post;
				$home = get_page(get_option('page_on_front'));
				
				$html = '';
				
				for ($i = count($post->ancestors)-1; $i >= 0; $i--) {
					if (($home->ID) != ($post->ancestors[$i]))
						{
							$html.= '<li><span  class="separator">'.$breadcrumb_separator.'</span>';
							$html.= '<a href="';
							$html.= get_permalink($post->ancestors[$i]); 
							$html.= '">';
							$html.= get_the_title($post->ancestors[$i]);
							$html.= '</a><li> ';
						}
				}
				
				$html.= '<span class="separator">'.$breadcrumb_separator.'</span><a title="'.get_the_title().'" href="#">'.get_the_title().'</a><span class="separator">'.$breadcrumb_separator.'</span>';
				
				return $html;
			}		
			
			
		public function breadcrumb_html()
			{
				global $post;
				$breadcrumb_text = $this->breadcrumb_get_option('breadcrumb_text');
				$breadcrumb_separator = $this->breadcrumb_get_option('breadcrumb_separator');
				$breadcrumb_font_size = $this->breadcrumb_get_option('breadcrumb_font_size');				
				$breadcrumb_link_color = $this->breadcrumb_get_option('breadcrumb_link_color');	
				$breadcrumb_separator_color = $this->breadcrumb_get_option('breadcrumb_separator_color');												
				$breadcrumb_themes = $this->breadcrumb_get_option('breadcrumb_themes');	
				
				
				$html  = '';
				
				$html  .= '<style type="text/css">';				
				$html  .= '
				
						.breadcrumb-container {
						  font-size: '.$breadcrumb_font_size.';
						}
				
						.breadcrumb-container li a {
						  color: '.$breadcrumb_link_color.';
						}
						
						.breadcrumb-container li .separator {
						  color: '.$breadcrumb_separator_color.';
						}						
						
						
				
				';				
				$html  .= '</style>';					
				
				
				
				
				
				$html .= '
				<div class="breadcrumb-container '.$breadcrumb_themes.'">';
		
				$html .= '<ul>';		
				$html .= '<li><span>'.$breadcrumb_text.'</span></li>';
					
				if(is_home())
					{
						
						$html .= '<li><a title="Home" href="#">Home</a><span>'.$breadcrumb_separator.'</span></li>';
						
					}
					
				else if(is_attachment())
					{
						$current_attachment_id = get_query_var('attachment_id');
						$current_attachment_link = get_attachment_link($current_attachment_id);				
						
						
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a></li>';
						$html .= '<li><span class="separator">'.$breadcrumb_separator.'</span><a href="'.$current_attachment_link.'">'.get_the_title().'</a><span>'.$breadcrumb_separator.'</span></li>';
					}

				else if(is_singular())
					{
						
						$post_parent_id = wp_get_post_parent_id(get_the_ID());
						$parent_title = get_the_title($post_parent_id);
						$paren_get_permalink = get_permalink($post_parent_id);
						
						
						
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a></li>';
						
						if(is_page() && $post->post_parent)
							{
								$html .= $this->breadcrumb_get_page_childs(); // return array
	
							}

						else
							{
								$html .= '<li><span  class="separator">'.$breadcrumb_separator.'</span><a title="'.get_the_title().'" href="#">'.get_the_title().'</a><span class="separator">'.$breadcrumb_separator.'</span></li>';
							}

						
						
					}
					
				else if( is_tax())
					{
						$queried_object = get_queried_object();
						$term_name = $queried_object->name;				
						
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a></li>';
						$html .= '<li><span class="separator">'.$breadcrumb_separator.'</span><a href="#">'.$term_name.'</a><span class="separator">'.$breadcrumb_separator.'</span></li>';
					}
					
				else if(is_category())
					{
						
						$current_cat_id = get_query_var('cat');
						$parent_cat_links = get_category_parents( $current_cat_id, true, $breadcrumb_separator );
		
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a></li>';
						$html .= '<li><span class="separator">'.$breadcrumb_separator.'</span>'.$parent_cat_links.'</li>';
					}
					
				else if(is_tag())
					{
						
						$current_tag_id = get_query_var('tag_id');
						$current_tag = get_tag($current_tag_id);	
						$current_tag_name = $current_tag->name;				
									
						$current_tag_link = get_tag_link($current_tag_id);;				
						//$parent_cat_links = get_category_parents( $current_cat_id, true, $breadcrumb_separator );
		
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a><span class="separator">'.$breadcrumb_separator.'</span></li>';			
						$html .= '<li><a title="Home" href="'.$current_tag_link.'">'.$current_tag_name.'</a><span class="separator">'.$breadcrumb_separator.'</span></li>';
	
					}			
					
				else if(is_author())
					{
		
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a></li>';
						$html .= '<li><span class="separator">'.$breadcrumb_separator.'</span><a href="'.esc_url( get_author_posts_url( get_the_author_meta( "ID" ) ) ).'">'.get_the_author().'</a></li>';
					}
					
				else if(is_search())
					{
		
						$current_query = sanitize_text_field(get_query_var('s'));
		
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a></li>';
						$html .= '<li><span class="separator">'.$breadcrumb_separator.'</span><a href="#">'.$current_query.'</a><span class="separator">'.$breadcrumb_separator.'</span></li>';
					}			

				else if(is_404())
					{
		
						$html .= '<li><a title="Home" href="'.get_bloginfo('url').'">Home</a></li>';
						$html .= '<li><span class="separator">'.$breadcrumb_separator.'</span><a href="#">404</a></li>';
					}
					
				else
					{
						$html .= '';
					}								
					
									
					
					
				$html .= '</ul>';
		
				$html .= '</div>';

				return $html;

	
			}
	
			
	}