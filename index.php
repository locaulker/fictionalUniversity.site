<?php
  get_header();
  pageBanner(array(
    'title' => 'Welcome to Our Blog',
    'subtitle' => 'Keep Up with our Latest News'
  ));
?>

  <div class="container container--narrow page-section">
    <?php while (have_posts()) : the_post(); ?>
      <div class="post-item">
        <h2 class="headline headline--medium headline--post-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>

        <div class="metabox">
          <p>Posted by <?php the_author_posts_link(); ?> on <?php the_time('n.j.y'); ?> at <?php the_time('g:i a'); ?> in the <?php echo get_the_category_list(', '); ?> Category</p>
        </div><!-- .metabox -->

        <div class="generic-content">
          <?php the_excerpt(); ?>
          <p><a class="btn btn--blue" href="<?php the_permalink(); ?>">Continue reading &raquo;</a></p>
        </div><!-- .generic-content -->
      </div><!-- .post-item -->
    <?php endwhile; ?>
    <?php echo paginate_links(); ?>
  </div><!-- .container -->

<?php get_footer(); ?>