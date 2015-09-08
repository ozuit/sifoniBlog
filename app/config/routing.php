<?php

return array(
    '/' => array(
        '/' => 'HomeController:index:home::get',
        '/contact.html' => 'ContactController:index:contact::get',
        '/article/{article_slug}.html' => 'HomeController:showArticle:article::article_slug',
        '/category/{category_slug}/' => 'HomeController:showCategory:category::category_slug',
        '/user/register.html' => 'UserController:register:singup::get',
        '/user/login/' => 'UserController:login:login::get',
        '/user/logout/' => 'UserController:logout:logout::get',
        '/tag/{tag_slug}/' => 'HomeController:showTag:tag::tag_slug',
    )
);
?>