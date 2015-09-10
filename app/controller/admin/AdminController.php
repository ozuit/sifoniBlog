<?php

namespace App\Controller\Admin;

use Sifoni\Controller\Base;

/**
* 
*/
class AdminController extends Base
{
	public function indexAction()
	{
		if ($this->app['session']->has('admin')) {
			return $this->redirect('list_article');
		} else {
			return $this->redirect('admin_login');
		}
	}
}