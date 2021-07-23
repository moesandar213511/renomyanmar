<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/logout','AdminController@logout');


Route::post('/login','AdminController@login');
Route::post('/register','CompanyController@register');


//Route::match(['get','post'],'/test','Controller@test');
Route::get('/','Controller@show_homepage' );
Route::get('blog_detail/{blog_id}','BlogController@show_blog_detail');
Route::get('blog','BlogController@show_all_blog');
Route::post('search_company','CompanyController@search_company');
Route::get('category_company/{id}','CompanyController@sub_category_company');//when click category
Route::get('main_category_company/{id}','CompanyController@main_category_company');//when click category
Route::get('sub_category_company','CompanyController@show_category_company');//show all job
Route::get('company_profile/{id}','CompanyController@show_company_profile');
//**********************8
Route::post('request_quote','EmployeeController@insert');
Route::match(['get','post'],'/edit_request_quote','EmployeeController@edit_request_quote_data');
//Route::post('preview','EmployeeController@show_preview');
Route::post('preview','EmployeeController@show_preview');
Route::match(['get','post'],'contact','Controller@contact');
Route::get('about','Controller@about');

Route::get('message','Controller@show_message');
//*******************8
Route::group(['middleware'=>['auth']],function(){
//    company permission
    Route::get('company/company_dashboard','EmployeeController@request_employee');


    //********company feedback
    Route::get('company/company_feedback','CompanyController@company_feedback');
    Route::post('company/company_insert_or_edit_feedback','CompanyController@company_insert_or_edit_feedback');
    Route::post('company/company_feedback_detail/{id}','CompanyController@company_feedback_detail');
    //*********company photo
    Route::match(['get','post'],'/company/photo','CompanyController@company_photo');
    Route::post('/company/photo_detail/{id}','CompanyController@get_company_project');
    Route::post('/company/company_insert_or_edit_project','CompanyController@company_insert_or_edit_project');

//    Route::get('company/requested_employee','EmployeeController@request_employee');
    Route::post('company/get_employee_detail/{emp_id}','EmployeeController@get_employee_detail');
//*****************************
    Route::get('/get_company_employee/{company_id}','EmployeeController@get_employee_byCompany');
    Route::get('/delete_employee_from_company/{company_id}/{employee_id}','EmployeeController@delete_employee_from_company');

    Route::match(['get','post'],'/company/company_profile','CompanyController@edit_company_profile');
    Route::match(['get','post'],'/company/edit_company_type','CompanyController@edit_company_type');

    Route::match(['get','post'],'/edit_company_category','CompanyController@edit_company_category');
//--------------------------------------------------------------------------------------------------------
//    admin permission
    Route::post('/add_main_category','CategoryController@add_main_category');
    Route::post('/add_sub_category','CategoryController@add_sub_category');

    Route::post('/create_or_edit_admin_blog','BlogController@create_or_edit_admin_blog');
    Route::post('delete_admin_blog/{blog_id}','BlogController@delete');

    Route::post('/create_or_edit_ads','AdsController@create_or_edit_ads');
    Route::post('delete_ads/{id}','AdsController@delete');

    Route::post('/create_or_edit_admin_feedback','AdminController@create_or_edit_admin_feedback');
    Route::post('/delete_admin_feedback/{feedback_id}','AdminController@delete_feedback');

    Route::post('/delete_main_category/{id}','CategoryController@delete_main_category');
    Route::post('/delete_sub_category/{id}','CategoryController@delete_sub_category');

    Route::post('/edit_company_data','CompanyController@edit_company_by_admin');
//    Route::get('/get_all_company_order_by_name','CompanyController@get_all_company_order_by_name');//change method to post


    Route::post('/delete_company/{id}','CompanyController@delete_company');// change method to post
    Route::post('/activate_pending_company/{id}','CompanyController@activate_pending');// change method to post
    Route::post('/ban_company/{id}/{data}','CompanyController@ban_company');// change method to post
    Route::post('/top_company/{id}/{data}','CompanyController@top_company');// change method to post

    Route::get('/upgrade_company_type/{id}/{type}','CompanyController@upgrade_company_type');// change method to post

    Route::match(['get','post'],'/create_top_company','AdminController@create_top_company');// change method to post
//*****************
    Route::get('/get_employee_list','EmployeeController@get_employee_list');
//---------------------------------------Api---------------------------------
    Route::get('api/get_24hr_pending_company','CompanyController@get_24hr_pending_company');// change method to post
    Route::post('api/get_pending_company','CompanyController@get_pending_company');// change method to post

//    Route::post('api/get_all_company','CompanyController@get_all_activated_company');//change method to post

    Route::post('api/get_top_company','CompanyController@get_top_company');//change method to post
    Route::post('api/get_paid_company','CompanyController@get_paid_company');//change method to post
    Route::post('api/get_free_company','CompanyController@get_free_company');//change method to post
    Route::post('api/get_ban_company','CompanyController@get_ban_company');//change method to post

    Route::post('api/all_blog','BlogController@get_all_blog');

    Route::post('api/blog_detail/{blog_id}','BlogController@get_blog_detail');
    Route::post('api/company_detail/{company_id}','CompanyController@get_company');
    Route::post('api/get_admin_feedback','AdminController@get_admin_feedback');

    Route::post('api/get_main_category','CategoryController@get_main_category');
    Route::post('api/get_sub_category/{main_category_id}','CategoryController@get_sub_category');
//##############################Site Admin##########################################33333
});

Route::post('api/all_ads','AdsController@all_ads');
Route::post('api/get_all_company','CompanyController@get_all_activated_company');//change method to post
//Route::get('/admin/dashboard','AdminController@index');


//***************************Admin************************************************8
//#################################################################################
//#################################################################################
//#################################################################################
//#################################################################################
//#################################################################################
// Route::group(['middleware'=>['admin']],function() {

    Route::get('/admin/','AdminController@show_dashboard');
    Route::get('/admin/login_company_account/{company_id}','AdminController@login_company_account');

    Route::get('/admin/company_profile', function () {
        $data = \App\CompanyProfile::findOrFail(1);
        return view('site_admin.company_profile')->with([
            'url' => 'company_profile',
            'company_profile' => $data,
        ]);
        //    return 'aa';
    });

    Route::post('/admin/company_profile/update_company_profile', 'Controller@update_company_profile');

    Route::get('/admin/company_list', function () {
        return view('site_admin.company_list')->with(['url' => 'company_list']);
    });
    //Route::get('/admin/employee',function(){
    //    return view('site_admin.employee_list')->with(['url'=>'emloyee']);
    //});
    Route::get('/admin/employee', 'EmployeeController@all_request_employee');
    Route::get('/admin/employee/delete/{id}','EmployeeController@delete_employee');
    Route::get('/admin/blog', function () {
        return view('site_admin.blog')->with(['url' => 'blog']);
    });
    Route::get('/admin/ads', function () {
        $pages=\App\Webpage::all();
        return view('site_admin.ads')->with([
            'url' => 'ads',
            'webpages'=>$pages
        ]);
    });
    Route::get('/admin/feedback', function () {
        return view('site_admin.feedback')->with(['url' => 'feedback']);
    });

    Route::get('/admin/company_by_sub_category','AdminController@company_by_sub_category');
    Route::get('/admin/company_by_main_category','AdminController@company_by_main_category');

// });










Route::get('/test/{id}','AdsController@test');