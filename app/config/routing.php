<?php

return array(
    '/' => array(
        '/' => 'IndexController:index:index::get',
        '/article/page={page_num}' => 'HomeController:index:home::page_num=1',
        '/contact.html' => 'ContactController:index:contact::get',
        '/article/{article_slug}.html' => 'HomeController:showArticle:article::article_slug',
        '/category/{category_slug}/' => 'HomeController:showCategory:category::category_slug',
        '/user/register.html' => 'UserController:register:singup::get',
        '/user/login/' => 'UserController:login:login::get',
        '/user/logout/' => 'UserController:logout:logout::get',
        '/tag/{tag_slug}/' => 'HomeController:showTag:tag::tag_slug',
        '/search' => 'HomeController:search:search::get',
    ),
    '/admin' => array(
        '/' => 'admin\AdminController:index:admin_index::get',
        '/login.html' => 'admin\AuthController:login:admin_login::get',
        '/logout/' => 'admin\AuthController:logout:admin_logout::get',
        '/article/list.html' => 'admin\ArticleController:list:list_article::get',
        '/article/add.html' => 'admin\ArticleController:add:add_article::get',
        '/article/update/{article_slug}.html' => 'admin\ArticleController:update:update_article::article_slug',
        '/article/delete/{article_slug}.html' => 'admin\ArticleController:delete:delete_article::article_slug',
        '/upload/image.html' => 'admin\UploadController:image:upload_image::get',
    )
);
?>