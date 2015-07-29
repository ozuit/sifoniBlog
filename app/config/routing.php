<?php

return array(
    '/' => array(
        '/' => 'HomeController:index:home::get',
        '/hello/{name}' => 'HomeController:hello:hello_person:name=world',
        '/test' => 'HomeController:test:test_post::get',
        '/login.html' => 'UserController:index:login::get',
    )
);