<?php

namespace App\Controller\Admin;

use Sifoni\Controller\Base;
use App\Model\Article;
use App\Model\Category;

/**
* 
*/
class ArticleController extends Base
{
	public function listAction()
	{
		$data = array();

		$data['title'] = 'Trang Admin | List Article';
		$data['title_page'] = 'Danh sách các bài viết';
        $data['articles'] = Article::join('Categories', 'articles.category_id', '=', 'categories.id')->orderBy('articles.id', 'desc')->select('articles.id','title','updated_at','name','articles.slug')->get();

        return $this->render('admin/article/list.html.twig', $data);
	}

	public function addAction()
	{
		$data = array();
    
	    if ($this->isPostRequest()) {
	        $postData = $this->getPostData();
	        
	        if (Article::addArticle($postData)) {
	            return $this->redirect('list_article');
	        }
	    }

	    $data['title'] = 'Trang Admin | Add Article';
		$data['title_page'] = 'Thêm bài viết mới';
	    $data['categories'] = Category::all();
	    
	    return $this->render('admin/article/add.html.twig', $data);
	}

	public function updateAction($article_slug)
	{
		$data = array();
    
	    if ($this->isPostRequest()) {
	        $postData = $this->getPostData();
	        
	        if (Article::updateArticle($postData)) {
	            return $this->redirect('list_article');
	        }
	    }

	    $data['title'] = 'Trang Admin | Update Article';
		$data['title_page'] = 'Chỉnh sửa bài viết';
		$data['article'] = Article::where('slug', '=', $article_slug)->get()[0];
	    $data['categories'] = Category::all();
	    
	    return $this->render('admin/article/update.html.twig', $data);
	}

	public function deleteAction($article_slug)
	{
		Article::where('slug', '=', $article_slug)->delete();
		return $this->redirect('list_article');
	}
}