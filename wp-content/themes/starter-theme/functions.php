<?php
// Enqueue styles
add_action('wp_enqueue_scripts', function () {
    wp_enqueue_style('starter-style', get_stylesheet_uri());
});
