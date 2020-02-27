<?php get_header(); ?>
<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
  <article class="cwapp_post">
    <?php the_post_thumbnail(); ?>
    <h1><?php the_title(); ?></h1>
    <div class="cwapp_post_meta">
      <?php echo get_avatar( get_the_author_meta( 'ID' ), 40 ); ?>
      <p>
        Publié le <?php the_date(); ?>
        par <?php the_author(); ?>
        Dans la catégorie <?php the_category(); ?>
        Avec les étiquettes <?php the_tags(); ?>
      </p>
    </div>

    <div class="cwapp_post_content">
      <?php the_content(); ?>
    </div>
  </article>
  <?php if ( comments_open() || get_comments_number() ) :
      comments_template();
    endif;; ?>
  <?php endwhile; endif; ?>

  <div class="cwapp_navigation">
    <div class="cwapp_navigation_prev">
      <?php previous_post_link( 'Article Précédent<br>%link' ); ?>
    </div>
    <div class="cwapp_navigation_next">
      <?php next_post_link( 'Article Suivant<br>%link' ); ?>
    </div>
  </div>

<?php get_footer(); ?>
