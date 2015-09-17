<?php

namespace App\Controller\Admin;

use Sifoni\Controller\Base;
use App\Model\Contact;

/**
* 
*/
class AdminController extends Base
{
	public function indexAction()
	{
		$data = array();
		if ($this->app['session']->has('admin')) {
			return $this->redirect('list_article');
		} else {
			$new_msg = Contact::where('status', '=', 'false')->count();
			$this->app['session']->set('new_msg', $new_msg);
			return $this->redirect('admin_login');
		}
	}
}