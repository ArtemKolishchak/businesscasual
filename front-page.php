<?php
/**
 * The template for displaying front page.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package businesscasual
 */
 ?>
 
 <?php get_header(); ?>

<div class="businesscasual-front-page">

	<?php 
		if ( have_posts() ) : while ( have_posts() ) :  the_post();

			the_content();

			endwhile; 

		else: 

		endif; 
	?>
	
</div>

 <?php get_footer(); ?>