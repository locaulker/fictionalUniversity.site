<?php
  get_header();
  pageBanner(array(
    'title' => 'All Events',
    'subtitle' => 'See What is going on in our world.'
  ));
?>

  <div class="container container--narrow page-section">
    <?php
      while (have_posts()) : the_post();
        get_template_part('template-parts/content-event');
      endwhile;
    ?>
    <?php echo paginate_links(); ?>
    <hr class="section-break">
    <div>Looking for a recap of Past Events? Checkout our <a href="<?php echo site_url('/past-events'); ?>">Past Events Archive</a></div>
  </div><!-- .container -->

<?php get_footer(); ?>