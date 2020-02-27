<?php get_header();

if ( is_category() ) {
  $title = "Catégorie : " . single_tag_title( '', false );
}
elseif ( is_tag() ) {
  $title = "Étiquette : " . single_tag_title( '', false );
}
elseif ( is_search() ) {
  $title = "Vous avez recherché : " . get_search_query();
}
else {
  $title = 'Le Blog';
}
?>
<div class="container">
  <div class="cwapp_archives">
  <?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
    <article class="cwapp_post">
      <h2><?php the_title(); ?></h2>
      <?php the_post_thumbnail('square'); ?>
      <p class="post_meta">
        Publié le <?php the_time( get_option( 'date_format' ) ); ?>
        par <?php the_author(); ?> • <?php comments_number(); ?>
      </p>
      <?php the_excerpt(); ?>
      <p>
        <a href="<?php the_permalink(); ?>" class="post_link">Lire la suite</a>
      </p>
    </article>
    <?php endwhile; endif; ?>

    <?php posts_nav_link(); ?>
    <div class="cwapp_navigation">
      <div class="cwapp_nav__prev">
        <?php previous_posts_link('les posts avant ça'); ?>
      </div>
      <div class="cwapp_nav__next">
        <?php next_posts_link("les posts après ça"); ?>
      </div>
    </div>

  </div>

  <aside class="cwapp_sidebar">
    <ul>
      <?php dynamic_sidebar( 'blog-sidebar' ); ?>
    </ul>
  </aside>

</div>
<?php get_footer(); ?>
