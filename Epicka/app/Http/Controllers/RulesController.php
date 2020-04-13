<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RulesController extends Controller
{
    public function reglement($slug)
    {
        $post = Post::findBySlug($slug);

        return view('post.show', ['post' => $post]);
    }
}
