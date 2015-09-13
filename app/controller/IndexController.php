<?php

namespace App\Controller;

use Sifoni\Controller\Base;

/**
* 
*/
class IndexController extends Base
{
	public function indexAction()
	{
		return $this->redirect('home', array('page' => 1));
	}
}