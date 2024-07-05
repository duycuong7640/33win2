@extends('pages::layouts.master')

@section('content')
    <div class="p-0 d-flex flex-wrap" style="justify-content: space-between;background: #680000;">
        <div class="siderbar">
            <div class="logo" style="background: url('{{ !empty($data['commonSetting']["logo"]->thumbnail) ? str_replace('img/!/', env('IMAGE_IMG'), $data['commonSetting']["logo"]->thumbnail) : '' }}') no-repeat center;">
                <a href="#"></a>
            </div>
            <div class="header mt-5">
                <div class="user">
                    <div class="ng-scope button-action">
                        <h1>{{ !empty($data['commonSetting']['setting']['name']) ? $data['commonSetting']['setting']['name'] : '' }}</h1>
                        <button type="button" class="ng-scope dang-nhap"><a
                                href="{{ !empty($data['commonSetting']['setting']['link1']) ? $data['commonSetting']['setting']['link1'] : '' }}">Đăng
                                nhập</a></button>
                        <button type="button" class="ng-scope dang-ky"><a
                                href="{{ !empty($data['commonSetting']['setting']['link2']) ? $data['commonSetting']['setting']['link2'] : '' }}">Đăng
                                ký</a>
                        </button>
                        <div class="trai-nghiem" href="{{ !empty($data['commonSetting']['setting']['link4']) ? $data['commonSetting']['setting']['link4'] : '' }}"><i></i> <span class="ng-scope ">Đăng ký trải nghiệm</span>
                        </div>
                    </div>
                </div>
                <div class="list-game">
                    <ul>
                        <li class="ng-scope" style="">
                            <a>
                                <i ng-style="nav.style"
                                   style="background-image: url(static/web/images/hop-qua.png);"></i>
                                <span nav-link-display="" model="nav"
                                      class="ng-isolate-scope">Hoạt động ưu đãi</span>
                            </a>
                        </li>
                        <li class="ng-scope" style="">
                            <a>
                                <i ng-style="nav.style" style="background-image: url(static/web/images/home.png);"></i>
                                <span nav-link-display="" model="nav" class="ng-isolate-scope">Trang chủ</span>
                            </a>
                        </li>
                        <li class="ng-scope" style="">
                            <a>
                                <i ng-style="nav.style"
                                   style="background-image: url(static/web/images/icon-tro-choi.png);"></i>
                                <span nav-link-display="" model="nav" class="ng-isolate-scope">TRÒ CHƠI</span>
                            </a>
                        </li>
                        <li class="ng-scope" style="">
                            <a>
                                <i ng-style="nav.style" style="background-image: url(static/web/images/bai.png);"></i>
                                <span nav-link-display="" model="nav" class="ng-isolate-scope">SÒNG BÀI</span>
                            </a>
                        </li>
                        <li class="ng-scope" style="">
                            <a>
                                <i ng-style="nav.style" style="background-image: url(static/web/images/ca.png);"></i>
                                <span nav-link-display="" model="nav" class="ng-isolate-scope">BẮN CÁ</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content-main">
            <div class="marquee">
                <span>Tin tức mới nhất</span>
                <marquee width="95%" direction="left" height="46px">
                    {!! !empty($data['commonSetting']['setting']['link3']) ? $data['commonSetting']['setting']['link3'] : '' !!}
                </marquee>
            </div>
            <div class="banner">
                <img src="static/web/images/banner.jpg" alt="img">
            </div>
            <div class="list-img">
                <section class="game-hot">
                    <div class="item-detail">
                        <a href="#">
                            <div class="img-detail" style="background-image: url(static/web/images/game-ban-ca.png);">
                                <p class="ng-scope">Bắn cá</p>
                                <div>CHƠI NGAY</div>
                            </div>
                        </a>
                    </div>
                    <div class="item-detail">
                        <a href="#">
                            <div class="img-detail" style="background-image: url(static/web/images/tro-choi.png);">
                                <p class="ng-scope">Trò chơi</p>
                                <div>CHƠI NGAY</div>
                            </div>
                        </a>
                    </div>
                    <div class="item-detail">
                        <a href="#">
                            <div class="img-detail" style="background-image: url(static/web/images/song-bai.png);">
                                <p class="ng-scope">Sòng bài</p>
                                <div>CHƠI NGAY</div>
                            </div>
                        </a>
                    </div>
                    <div class="item-detail">
                        <a href="#">
                            <div class="img-detail"
                                 style="background-image: url(static/web/images/game-bai-3d.png);">
                                <p class="ng-scope">Gane bài 3D</p>
                                <div>CHƠI NGAY</div>
                            </div>
                        </a>
                    </div>
                    <div class="item-detail">
                        <a href="#">
                            <div class="img-detail"
                                 style="background-image: url(static/web/images/su-kien-the-thao.png);">
                                <p class="ng-scope">Sự kiện thể thao</p>
                                <div>CHƠI NGAY</div>
                            </div>
                        </a>
                    </div>
                    <div class="item-detail">
                        <a href="#">
                            <div class="img-detail" style="background-image: url(static/web/images/so-xo.png);">
                                <p class="ng-scope">Xổ số</p>
                                <div>CHƠI NGAY</div>
                            </div>
                        </a>
                    </div>
                </section>
                <section class="tro-choi">
                    <div class="title">
                        <div class="ng-scope">PG NỔ HŨ</div>
                        <a href="#" class="ng-scope">Nhiều Trò Chơi Hơn</a>
                    </div>
                    <div class="d-flex flex-wrap justify-content-lg-between justify-content-center">
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/aztec.png"
                                 alt="img">
                            <p class="ng-binding">Kho Báu Aztec</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/duong-mat-chuoc.png"
                                 alt="img">
                            <p class="ng-binding">Đường Mạt Chược</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/duong-mat-chuoc-2.png"
                                 alt="img">
                            <p class="ng-binding">Đường Mạt Chược 2</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/neko-may-man.png"
                                 alt="img">
                            <p class="ng-binding">Neko May Mắn</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/chien-thang-caisen.png"
                                 alt="img">
                            <p class="ng-binding">Chiến Thắng CaiShen</p>
                        </li>
                    </div>
                </section>
                <section class="tro-choi mt-4">
                    <div class="title">
                        <div class="ng-scope">TP Bắn cá</div>
                        <a href="#" class="ng-scope">Nhiều Trò Chơi Hơn</a>
                    </div>
                    <div class="d-flex flex-wrap  justify-content-lg-between justify-content-center">
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/tp-nhi-gia.png"
                                 alt="img">
                            <p class="ng-binding">TP Nhị Gia bắn cá</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/tp-tam-tien.png"
                                 alt="img">
                            <p class="ng-binding">TP Tam Tiên Cắt Cá</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/tp-ban-ca.png"
                                 alt="img">
                            <p class="ng-binding">TP Bắn cá Dễ Dàng</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/tp-ong-trum.png"
                                 alt="img">
                            <p class="ng-binding">TP Ông Trùm bắn cá</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/tp-con-trung.png"
                                 alt="img">
                            <p class="ng-binding">TP Bắn Côn Trùng</p>
                        </li>
                    </div>
                </section>
                <section class="tro-choi mt-4">
                    <div class="title">
                        <div class="ng-scope">JILI Bắn cá</div>
                        <a href="#" class="ng-scope">Nhiều Trò Chơi Hơn</a>
                    </div>
                    <div class="d-flex flex-wrap  justify-content-lg-between justify-content-center">
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/jackpot-danh-ca.png"
                                 alt="img">
                            <p class="ng-binding">JILI Jackpot Đánh Cá</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/vua-danh-ca.png"
                                 alt="img">
                            <p class="ng-binding">JILI Vua đánh cá</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/chuyen-gia-san-rong.png"
                                 alt="img">
                            <p class="ng-binding">JILI Chuyên Gia Săn Rồng</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/doat-bap-truyen-ky.png"
                                 alt="img">
                            <p class="ng-binding">JILI Đoạt bảo truyền kỳ</p>
                        </li>
                        <li class="ng-scope list-item" style="width: 100%; display: inline-block;">
                            <img src="static/web/images/danh-ca-vui-ve.png"
                                 alt="img">
                            <p class="ng-binding">JILI Đánh cá vui vẻ</p>
                        </li>
                    </div>
                </section>
                <section class="content-home container mt-3" style="color:white;">
                    {!! !empty($data['commonSetting']['setting']['home_content']) ? $data['commonSetting']['setting']['home_content'] : '' !!}
                </section>
                <style type="text/css">
                    .content-home ul, .content-home ol{padding-left: 30px;}
                </style>
            </div>
            <footer class="text-grey font-13 w-100 px-0">
                <section class="footer-top">
                    <div class="content-footer">
                        <div class="left">
                            <h3>Ứng Dụng</h3>
                            <p translate="Home_PartnerIntro" class="ng-scope">Tải ngay Ứng dụng 33Win.com cho điện thoại
                                của
                                bạn ngay để trải nghiệm game tốt hơn và an toàn hơn, ứng dụng hỗ trợ tất cả các sản
                                phẩm:
                                Thể Thao, E-Sports, Casino, Trò Chơi và Xổ Số.</p>
                        </div>
                        <div class="right">
                            <img src="static/web/images/dien-thoai.png"
                                 alt="img">
                        </div>
                    </div>
                </section>
                <div class="ft-content py-3 pt-lg-5 pb-lg-3 px-md-3" style="background-color: #2b0000;color: #fff;">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-12">
                                <a href="#" title="">
                                    <img class="logo-footer"
                                         src="static/web/images/loho-header.gif"
                                         alt="img">
                                </a>
                                <p class="mt-4">
                                <div>
                                    {!! !empty($data['commonSetting']['setting']['content_footer']) ? $data['commonSetting']['setting']['content_footer'] : '' !!}
                                </div>
                                </p>
                                <img class="mt-4"
                                     src="static/web/images/footer.png"
                                     alt="img">
                            </div>
                            @foreach($data['commonSetting']['category_list']['ids'] as $k=>$row)
                                @if(empty($row['parent_id']))
                                    <div class="col-lg-3 col-12 mt-lg-0 mt-3">
                                        <div class="title-footer">
                                            <i class="{{ !$k ? 'lien-ket' : 'tong-hop' }}"></i>
                                            <span translate="Shared_Support" class="ng-scope">{{ $row['title'] }}</span>
                                        </div>
                                        <ul class="list-menu">
                                            @foreach($data['commonSetting']['category_list']['ids'] as $key=>$r)
                                                @if($row['id'] == $r['parent_id'] && !empty($r['parent_id']))
                                                    <li><a class="ng-scope" href="{{ $r['redirect_url'] }}">{{ $r['title'] }}</a></li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 text-center mt-3 d-flex justify-content-center flex-wrap ">
                            <div class="mt-3 mt-lg-0 d-flex">
                                {!! !empty($data['commonSetting']['setting']['copyright']) ? $data['commonSetting']['setting']['copyright'] : '' !!}
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
@endsection
