<?php

return array(
    '/' => array(
        '/' => 'HomeController:index:home::get',
        '/contact.html' => 'ContactController:index:contact::get',
        '/article/{article_id}' => 'HomeController:showArticle:article::article_id',
        '/category/{category_id}' => 'HomeController:showCategory:category::category_id',
        '/user/register.html' => 'UserController:register:singup::get',
        '/user/login/' => 'UserController:login:login::get',
        '/user/logout/' => 'UserController:logout:logout::get',
    )
);
?>