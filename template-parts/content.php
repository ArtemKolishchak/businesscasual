<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package businesscasual
 */

?>

<div class="col-lg-12 text-center">
    <?php the_post_thumbnail( 'post-thumbnail', array( 'class' => 'img-responsive img-border img-full' ) ); ?>
    <h2><?php the_title(); ?>
        <br>
        <small><?php the_time( 'F, j, Y' ); ?></small>
    </h2>
    <?php the_content( '' ); ?>
    <a href="<?php the_permalink(); ?>" class="btn btn-default btn-lg"><?php esc_html_e( 'Read More', 'businesscasual' ); ?></a>
        <hr>
</div>

