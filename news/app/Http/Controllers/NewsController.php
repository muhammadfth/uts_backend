<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\News;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        #Untuk menampilkan seluruh data yang ada
        $news = News::all();

        if(!empty($news)){
            $response = ['massage' => 'Menampilkan semua data news','data' => $news];
            return response()->json($response, 200);
        } else {
            $response = ['message' => 'Data tidak ditemukan'];
            return response()->json($response, 200);
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        # Membuat data baru
        $news = News::create($request->all());

        $response = ['massage' => 'Data berita berhasil dibuat','data' => $news,];
        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        # untuk mencari detail menggunakan id
        $news = News::find($id);

        if($news){
            $response = ['massage' => 'Get detail berita','data' => $news];
            return response()->json($response, 200);
        } else {
            $response = ['massage' => 'Data not found'];
        }
    }

    public function category($category)
    {
        # cari berita sesuai kategori
        $news = News::where('category', $category)->get();

        if ($news->isEmpty()) {
            $response = ['massage' => 'category tidak ditemukan'];
            return response()-json($response, 404); // Kode untuk data yang tidak ditemukan
        } else {
            $response = ['massage' => 'category ditemukan','data' => $news];
            return response()->json($news, 200); // Kode untuk data yang ada
        }
    }

    public function search($title)
    {
        # cari berita sesuai judul
        $news = News::where('title', 'like', '%' . $title . '%')->get();

        if ($news->isEmpty()) {
            $response = ['message' => 'Title tidak ada',];
            return response()->json($response, 404); // kode untuk data yang tidak ditemukan
        } else {
            $response = ['message' => 'Title ditemukan','data' => $news,];
            return response()->json($response, 200); // kode untuk data yang ada
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        # untuk memperbaharui data
        $news = News::find($id);

		if ($news) {
			$response = ['message' => 'News is update','data' => $news->update($request->all())];
			return response()->json($response, 200);
		} else {
			$response = ['message' => 'Data not found'];
			return response()->json($response, 404);
		}
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        # untuk menghapus data sesuai id
        $news = News::find($id);

		if ($news) {
			$response = ['message' => 'News is delete','data' => $news->delete()];
			return response()->json($response, 200); 
		} else {
			$response = ['message' => 'Data not found'];
			return response()->json($news, 404);
        }
    }
}
