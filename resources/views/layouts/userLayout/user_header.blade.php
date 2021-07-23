
{{-- <div class="Loader"></div> --}}
<div class="wrapper">
    <!-- Start Navigation -->
    <nav class="navbar navbar-default navbar-fixed navbar-light white bootsnav">

        <div class="container">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                <i class="fa fa-bars"></i>
            </button>
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <a class="navbar-brand" href="{{url('/')}}">
                    <img src="{{url('images/frontend_images/reno_myanmar.png')}}" class="logo logo-scrolled" alt="">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">
                    <!-- <li class="active"><input type="text" class="form-control" placeholder="Find Freelancer"></li> -->
                    <li class="dropdown megamenu-fw"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Brows</a>
                        <ul class="dropdown-menu megamenu-content" role="menu">
                            <li>
                                <div class="row" >
                                    <div class="col-menu col-md-3">
                                        <h6 class="title">Main Pages</h6>
                                        <div class="content">
                                            <ul class="menu-col">
                                                <li><a href="{{url('/')}}">Home</a></li>
                                                <li><a href="{{url('/about')}}">About Us</a></li>
                                                <li><a href="{{url('/contact')}}">Contact Us</a></li>
                                                {{--<li><a href="freelancing.html">Freelancing</a></li>--}}
                                            </ul>
                                        </div>
                                    </div><!-- end col-3 -->


                                    <div class="col-menu col-md-3">
                                        <h6 class="title">{{$main_categories[0]->category_name}}</h6>
                                        <div class="content">
                                            <ul class="menu-col">
                                                @foreach($sub_categories as $data)
                                                    @if($data->main_category_id==$main_categories[0]->id)
                                                        <li><a href="{{url('category_company/'.$data->id)}}">{{$data->category_name}}</a></li>
                                                    @endif
                                                @endforeach

                                            </ul>
                                        </div>
                                    </div><!-- end col-3 -->
                                    <div class="col-menu col-md-3">
                                        <h6 class="title">{{$main_categories[1]->category_name}}</h6>
                                        <div class="content">
                                            <ul class="menu-col">
                                                @foreach($sub_categories as $data)
                                                    @if($data->main_category_id==$main_categories[1]->id)
                                                            <li><a href="{{url('category_company/'.$data->id)}}">{{$data->category_name}}</a></li>
                                                        @endif
                                                    @endforeach

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-menu col-md-3">
                                        <h6 class="title">{{$main_categories[2]->category_name}}</h6>
                                        <div class="content">
                                            <ul class="menu-col">
                                                @foreach($sub_categories as $data)
                                                    @if($data->main_category_id==$main_categories[2]->id)
                                                        <li><a href="{{url('category_company/'.$data->id)}}">{{$data->category_name}}</a></li>
                                                    @endif
                                                @endforeach

                                            </ul>
                                        </div>
                                    </div><!-- end col-3 -->
                                </div><!-- end row -->
                            </li>
                        </ul>
                    </li>
                    <li><a href="{{url('blog')}}">News</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Companies</a>
                        <ul class="dropdown-menu" role="menu">
                            @foreach($main_categories as $data)
                                <li>
                                    <a href="{{url('/main_category_company/'.$data->id)}}">{{$data->category_name}}</a>
                                </li>
                                @endforeach
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                    {{--<li><a href="login.html"><i class="fa fa-user-circle-o"></i>User Name</a></li>--}}

                    <li class="left-br"><a href="javascript:void(0)"  data-toggle="modal" data-target="#signup" class="signin">Sign In Now</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>
    <!-- End Navigation -->