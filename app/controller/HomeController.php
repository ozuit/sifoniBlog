<?php

namespace App\Controller;

use Sifoni\Controller\Base;
use App\Model\Article;
use App\Model\Comment;
use App\Model\Category;
use App\Model\Articles_Tags;
use App\Model\Tags;

class HomeController extends Base {
    public function indexAction() {
    	$data = array();

        $data['articles'] = Article::orderBy('id', 'desc')->get();
        foreach ($data['articles'] as $article) {
        	$data['number_comment'][$article['id']] = count(Comment::where('article_id', '=', $article['id'])->get());
        }

        $data['four_articles'] = Article::orderBy('id','desc')->limit(5)->get();
    	$data['four_category'] = Category::orderBy('id','desc')->limit(5)->get();

        return $this->render('home/index.html.twig', $data);
    }

    public function showArticleAction($article_slug)
    {
        $data = array();

    	$data['article'] = Article::where('slug', '=', $article_slug)->get()[0];

        $data['tags_id'] = Articles_Tags::where('article_id', '=', $data['article']['id'])->get(['tag_id']);
        foreach ($data['tags_id'] as $idtag) {
            $data['tags_name'][] = Tags::where('id', '=', $idtag['tag_id'])->get()[0];
        }

        $data['comments'] = Comment::join('users', 'users.id', '=', 'comments.user_id')->where('article_id', '=', $data['article']['id'])->select('username', 'date', 'comment')->get();
        
        $data['four_articles'] = Article::orderBy('id','desc')->limit(5)->get();
        $data['four_category'] = Category::orderBy('id','desc')->limit(5)->get();

        return $this->render('article/showArticle.html.twig', $data);
    }

    public function showCategoryAction($category_slug)
    {
        $data = array();

        $data['articles'] = Article::orderBy('id', 'desc')->get();
        foreach ($data['articles'] as $article) {
            $data['number_comment'][$article['id']] = count(Comment::where('article_id', '=', $article['id'])->get());
        }

        $category_id = Category::where('slug', '=', $category_slug)->select('id')->get()[0];

        $data['articles'] = Article::where('category_id', '=', $category_id['id'])->get();

        $data['four_articles'] = Article::orderBy('id','desc')->limit(5)->get();
        $data['four_category'] = Category::orderBy('id','desc')->limit(5)->get();

        return $this->render('category/showCategory.html.twig', $data);
    }

    public function showTagAction($tag_slug)
    {
        $data = array();

        $tag_slug = trim($tag_slug);
        $tag_id = Tags::where('slug', '=', $tag_slug)->select('id')->get()[0];

        $data['articles_id'] =  Articles_Tags::where('tag_id', '=', $tag_id['id'])->select('article_id')->get();

        foreach ($data['articles_id'] as $article_id) {
            $data['articles'][] = Article::where('id', '=', $article_id['article_id'])->get()[0];
        }

        foreach ($data['articles'] as $article) {
            $data['number_comment'][$article['id']] = count(Comment::where('article_id', '=', $article['id'])->get());
        }

        $data['four_articles'] = Article::orderBy('id','desc')->limit(5)->get();
        $data['four_category'] = Category::orderBy('id','desc')->limit(5)->get();

        return $this->render('tag/showTag.html.twig', $data);
    }
}
