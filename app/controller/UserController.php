<?php

namespace App\Controller;

use Sifoni\Controller\Base;
use App\Model\User;
use App\Model\Article;
use App\Model\Category;
use App\Model\Comment;

/**
* 
*/
class UserController extends Base
{
	public function registerAction()
	{
		$data = array();

		$data['four_articles'] = Article::orderBy('id','desc')->limit(5)->get();
    	$data['four_category'] = Category::orderBy('id','desc')->limit(5)->get();

    	if ($this->isPostRequest()) {
	        $postData = $this->getPostData();
	        if ($user = User::authRegister($postData)) {
	        	$this->app['session']->set('logged', $user);
	            return $this->redirect('home');
	        } else {
	            $data['error_register'] = 'Username đã tồn tại, hãy chọn tên đăng nhập khác!';
	            $data['postData'] = $postData;
	        }
	    }

		return $this->render('user/register.html.twig',$data);
	}

	public function loginAction()
	{ 
		$postData['username'] = $_POST['username'];
		$postData['password'] = $_POST['password'];
        if ($user = User::authLogin($postData)) {
        	$this->app['session']->set('logged', $user);
            return 'true';
        } else {
            return 'false';
        }
	}

	public function logoutAction()
	{
		$this->app['session']->remove('logged');
		return $this->redirect('index');
	}
}