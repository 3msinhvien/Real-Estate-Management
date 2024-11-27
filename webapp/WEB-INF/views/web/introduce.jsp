<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu</title>

    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Roboto",sans-serif;
        }

        :root {
            --primary-color: #35BF76;
            --color-text: #434A6E;
        }

        .intro {
            background-image: url(//bizweb.dktcdn.net/100/328/362/themes/894751/assets/bg_breadcrumb.png?1664350964800);
            background-size: cover;
            background-position: center top;
            padding: 25px 0px;
            background-repeat: no-repeat;
            min-height: 320px;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            float: left;
            flex-flow: column;
        }

        .title-page {
            font-weight: 700;
            font-size: 48px;
            font-family: "Roboto",sans-serif;
            color: #fff;
        }

        .desc-intro {
            font-family: "Roboto",sans-serif;
            margin: 0;
            font-size: 16px;
            padding: 15px 0px 15px;
            border-radius: 0;
            font-weight: 400;
            line-height: 24px;
            background-color: transparent;
            width: 100%;
            text-align: center;
        }

        .col-xs-12 {
            width: 100%;
        }

        .desc-intro li {
            display: inline;
        }
        .home:hover {
            color: var(--primary-color)
        }

        .intro-item {
            color: var(--primary-color);
        }

        .page-content {

            /* margin-top: 5px; */
        }

        .title-head {
            font-size: 20px;
        }

        .hover-title-header:hover {
            text-decoration: underline;
            color: var(--primary-color);
        }

        .desc-page-container p {
            width: 100%;
            float: left;
            margin-bottom: 50px;
        }

        .item-desc-page-content {
            font-size: 14px;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e8f5e9; /* Nền xanh lá nhạt */
            color: #343a40;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 30px;
            background-color: #fff; /* Nền trắng */
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            font-size: 2.5rem;
            color: #388e3c; /* Xanh lá đậm */
            margin-bottom: 20px;
        }

        .content {
            line-height: 1.8;
            font-size: 1.1rem;
            text-align: justify;
        }

        .highlight {
            color: #388e3c;
            font-weight: bold;
        }

        .address {
            margin-top: 20px;
            text-align: center;
            font-size: 1.2rem;
            color: #2e7d32; /* Xanh lá đậm */
            font-weight: bold;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 0.9rem;
            color: #555;
        }

        .footer a {
            color: #388e3c;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
<div class="page-wrapper">
    <%--<header>--%>
        <%--<div class="p-4">--%>
            <%--<div class="row navbar">--%>
                <%--<div class="col-12 col-md-3">--%>
                    <%--<div class="logo">--%>
                        <%--<a href="/trang-chu">--%>
                            <%--<img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"--%>
                                 <%--alt="">--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-12 col-md-6">--%>
                    <%--<div class="item-menu">--%>
                        <%--<div class="nav nav1">--%>
                            <%--<div class="nav-item p-2">--%>
                                <%--<a class="nav-item-link" href="/trang-chu">--%>
                                    <%--<span>Trang chủ</span>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="nav-item p-2">--%>
                                <%--<a class="nav-item-link" href="">--%>
                                <%--<span style="color: var(--primary-color);">Giới thiệu</span>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="nav-item p-2">--%>
                                <%--&lt;%&ndash;<a class="nav-item-link" href="./Duan.html">&ndash;%&gt;--%>
                                <%--<a href='<c:url value='/san-pham'/>'>--%>
                                    <%--<span>Sản phẩm</span>--%>
                                    <%--&lt;%&ndash;<span style="color: var(--primary-color);">Sản phẩm</span>&ndash;%&gt;--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="nav-item p-2">--%>
                                <%--&lt;%&ndash;<a class="nav-item-link" href="./TinTuc.html">&ndash;%&gt;--%>
                                <%--<a href='<c:url value='/tin-tuc'/>'>--%>
                                    <%--<span>Tin tức</span>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="nav-item p-2">--%>
                                    <%--<a href='<c:url value='/lien-he'/>'>--%>
                                    <%--<span>Liên hệ</span>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-12 col-md-3">--%>
                    <%--<button class="btn btn-primary px-4">--%>
                        <%--Liên hệ tư vấn--%>
                    <%--</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</header>--%>
<%--        CONTENT--%>
        <div class="container">
            <h1 class="title-intro">
                Giới thiệu về 8X Land
                <style>
                    .title-intro {
                        padding: 20px;
                    }
                </style>
            </h1>
            <div class="content">
                <p>
                    <span class="highlight">8X Land</span> là một công ty bất động sản uy tín, tọa lạc tại
                    <span class="highlight">Km10, Đường Nguyễn Trãi, Quận Hà Đông, Hà Nội</span>.
                    Với sứ mệnh "<span class="highlight">Kiến tạo giá trị - Nâng tầm cuộc sống</span>",
                    8X Land cam kết mang đến cho khách hàng những giải pháp bất động sản chất lượng, đáp ứng nhu cầu đa dạng từ nhà ở, văn phòng cho thuê, đến đầu tư sinh lời bền vững.
                </p>
                <p>
                    Lấy sự hài lòng của khách hàng làm trọng tâm, <span class="highlight">8X Land</span> tự hào sở hữu đội ngũ chuyên viên chuyên nghiệp, giàu kinh nghiệm cùng mạng lưới đối tác chiến lược vững mạnh.
                    Công ty luôn không ngừng cải tiến và đổi mới để bắt kịp xu hướng thị trường, từ đó mang đến những sản phẩm và dịch vụ bất động sản tối ưu nhất.
                </p>
                <p>
                    Địa chỉ của chúng tôi tại Km10, Đường Nguyễn Trãi, Hà Đông, không chỉ thuận lợi về giao thông mà còn là trung tâm phát triển kinh tế năng động phía Tây Nam Hà Nội.
                    Đây là điểm đến lý tưởng để bạn hiện thực hóa các kế hoạch và giấc mơ bất động sản.
                </p>
                <p>
                    Hãy để <span class="highlight">8X Land</span> đồng hành cùng bạn trên hành trình kiến tạo tổ ấm và những giá trị đích thực!
                </p>
            </div>

        </div>

    <!-- FOOTER  -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="top-footer text-center mt-0">
                    <div class="logo logo-footer pt-5">
                        <a href="./ViewHome.html"><img src="/images/logo.svg"
                                                       alt="logo-footer"></a>
                        <p class="desc-logo-footer mt-3">Với hơn 10 năm kinh nghiệm, 8Xland tự hào là sàn
                            mua
                            bán, giao dịch và quảng cáo
                            bất động sản hàng đầu tại Việt Nam</p>
                        <div class="item-footer mt-5">
                            <div class="row">
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_maps.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Trụ sở chính</p>
                                        <p class="desc-footer">Km10, Đường Nguyễn Trãi, Q. Hà Đông, Hà Nội</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_phone.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Hotline</p>
                                        <p class="desc-footer"><a class="a-text" href="#">0917823784 (Mr Tùng)</a></p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_email.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Email</p>
                                        <p class="desc-footer"><a class="a-text" href="#">emsinhvien@gmail.com</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div class="border-bottom mb-5 mt-4"></div>
                    </div>
                </div>
                <div class="bottom-footer container">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Thông tin công ty</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Chính sách hoạt động</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Hỗ trợ khách hàng</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Kết nối với chúng tôi</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-footer-2">
                <div class="text-center desc-bottom-footer-2">@ Bản quyền thuộc về Nhóm 2</div>>
                </div>
        </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<style>
    /* Cải tiến phần content */
    .content {
        line-height: 1.8;
        font-size: 1.2rem;
        text-align: justify;
        margin-bottom: 30px;
        color: #555; /* Màu chữ trung tính */
        padding: 40px;
        background-color: #f9f9f9; /* Nền nhạt cho phần content */
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .content:hover {
        transform: translateY(-5px); /* Hiệu ứng nổi nhẹ */
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
    }

    /* Tiêu đề nổi bật */
    h1 {
        text-align: center;
        font-size: 2.8rem;
        font-weight: bold;
        color: #388e3c; /* Xanh lá đậm */
        margin-bottom: 30px;
    }

    /* Các đoạn văn */
    .content p {
        margin-bottom: 20px;
    }

    .content .highlight {
        color: #35BF76; /* Xanh lá nổi bật */
        font-weight: bold;
    }

    /* Địa chỉ */
    .address {
        margin-top: 20px;
        text-align: center;
        font-size: 1.2rem;
        color: #2e7d32;
        font-weight: bold;
    }
</style>

</body>
</html>
