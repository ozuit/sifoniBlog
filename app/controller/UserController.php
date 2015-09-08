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
	            $this->redirect('home');
	        } else {
	            $data['error_register'] = 'Username đã tồn tại, hãy chọn tên đăng nhập khác!';
	            $data['postData'] = $postData;
	        }
	    }

		return $this->render('user/register.html.twig',$data);
	}

	public function loginAction()
	{
		$data = array();

		$data['articles'] = Article::orderBy('id', 'desc')->get();
        foreach ($data['articles'] as $article) {
        	$data['number_comment'][$article['id']] = count(Comment::where('article_id', '=', $article['id'])->get());
        }

        $data['four_articles'] = Article::orderBy('id','desc')->limit(5)->get();
    	$data['four_category'] = Category::orderBy('id','desc')->limit(5)->get();
    
	    if ($this->isPostRequest()) {
	        $postData = $this->getPostData();
	        if ($user = User::authLogin($postData)) {
	        	$this->app['session']->set('logged', $user);
	            $this->redirect('home');
	        } else {
	            $data['error_login'] = 'Username hoặc mật khẩu không đúng!';
	        }
	    }
	   
        return $this->render('home/index.html.twig', $data);
	}

	public function logoutAction()
	{
		$this->app['session']->remove('logged');
		return $this->redirect('home');
	}
}