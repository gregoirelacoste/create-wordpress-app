<?php get_header(); ?>

<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>

    <section id="intro">
      <h1><?php the_title(); ?></h1>
      <?php  the_content();
      endwhile; endif;

      get_footer();
      ?>
