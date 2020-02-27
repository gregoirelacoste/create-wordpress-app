<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <?php wp_head(); ?>
  <meta name="description" content="Réseau de plus de 500 photographes
            professionnels pour les cabinets d’expertise." />
</head>

<body <?php body_class(); ?>>
<header>
  <section class="cwapp_header">
    <div class="cwapp_logo">
      <a href="<?php echo home_url('/'); ?>">
        <img src="<?= get_template_directory_uri(); ?>/img/logo.svg" alt="logo" height="50px" />
      </a>
    </div>
    <nav id="cwapp_main_menu" class="navigation m-hide">
        <?php wp_nav_menu( array( 'theme_location' => 'main','container' => 'ul') ); ?>
    </nav>
    <div class="d-hide">
      <nav id="cwapp_main_menu">
        <h2>SnapClaim</h2>
        <?php wp_nav_menu( array( 'theme_location' => 'main','container' => 'ul') ); ?>
      </nav>
    </div>
    <div class="d-hide">
      <div id="menu-burger">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
      </div>
    </div>
  </section>
</header>

<?php wp_body_open(); ?>
