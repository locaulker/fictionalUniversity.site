<?php get_header();
  while (have_posts()) : the_post();
  pageBanner();
?>

  <div class="container container--narrow page-section">

    custom code will go here

  </div>

<?php endwhile;
  get_footer(); ?>