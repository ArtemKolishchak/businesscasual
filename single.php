<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package businesscasual
 */
?>

<?php get_header();?>

<div class="bussinescasual-single">
	<div class="container">
		<div class="row">
			<div class="box">

				<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

					<div class="col-lg-12">
						 <?php the_post_thumbnail( 'post-thumbnail', array( 'class' => 'img-responsive img-border img-full' ) ); ?>
						 <h2 class="text-center"><?php the_title(); ?>
    						<br>
    						<small><?php the_time( 'F, j, Y' ); ?></small>
						</h2>
						<?php the_content(); ?> 
					</div>		

					<?php endwhile; ?>
					<!-- the_posts_navigation -->
				<?php else : ?>
				<!-- no posts found -->
				<?php endif; ?>
		
			</div>
		</div>
	</div>
</div>

<?php get_footer();?>
