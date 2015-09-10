<?php

namespace App\Controller\Admin;

use Sifoni\Controller\Base;
use App\Model\User;

/**
* 
*/
class AuthController extends Base
{
	public function loginAction()
	{
		$data = array();
    
	    if ($this->isPostRequest()) {
	        $postData = $this->getPostData();
	        if ($user = User::authLogin($postData)) {
	        	$this->app['session']->set('admin', $user);
	            return $this->redirect('list_article');
	        } else {
	            $data['error_login'] = 'Username hoặc mật khẩu không đúng!';
	        }
	    }
	    
	    return $this->render('admin/auth/login.html.twig', $data);
	}

	public function logoutAction()
	{
		$this->app['session']->remove('admin');
		return $this->redirect('admin_index');
	}
}