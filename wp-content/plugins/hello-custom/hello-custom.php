<?php
/**
 * Plugin Name: Hello Custom
 * Description: A custom test plugin.
 * Version: 1.0
 * Author: You
 */

add_action('admin_notices', function () {
    echo '<div class="notice notice-success"><p>Hello Custom Plugin is active!</p></div>';
});
