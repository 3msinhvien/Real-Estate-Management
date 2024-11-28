<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/san-pham"></c:url>
<c:url var="buildingAPI" value="/api/building"></c:url>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
</head>

<body>
<div class="page-wrapper">

    <div class="intro text-center">
        <div class="title-page">Tất cả dự án</div>
        <div class="row">
            <div class="col-xs-12 a-left">
                <ul class="desc-intro">
                    <li class="home">
                        <a href="./ViewHome.html"><span style="color:#fff">Trang chủ</span></a>
                        <span class="mx-1" style="color:#fff"> / </span>
                    </li>
                    <li class="intro-item"><span>Tất cả sản phẩm</span></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- SEARCH -->
    <div class="search">
        <form:form id="listForm" modelAttribute="modelSearch" action="${buildingListURL}" method="GET">
            <div class="row col-xs-12">
                <div class="col-md-4 search-item">
                    <div class="select-container">
                        <label>Chọn Quận</label>
                        <form:select name="districts" path="district" class="form-control">
                            <form:option value="">---Chọn Quận---</form:option>
                            <form:options items="${districts}"></form:options>
                        </form:select>
                    </div>
                </div>
                <div class="col-md-4">
                    <label>Diện tích từ</label>
                    <form:input class="form-control" type="number" path="areaFrom"/>
                </div>
                <div class="col-md-4">
                    <label>Diện tích đến</label>
                    <form:input class="form-control" type="number" path="areaTo"/>
                </div>
            </div>
            <div class="row col-xs-12 mt-3">
                <div class="col-md-6">
                    <label>Giá thuê từ</label>
                    <form:input class="form-control" type="number" path="rentPriceFrom"/>
                </div>
                <div class="col-md-6">
                    <label>Giá thuê đến</label>
                    <form:input class="form-control" type="number" path="rentPriceTo"/>
                </div>
            </div>
            <div class="text-center mt-3">
                <button class="btn btn-primary" type="submit" id="btnSearchBuilding">
                    <i class="fa-solid fa-magnifying-glass"></i> Tìm Kiếm
                </button>
            </div>
        </form:form>
    </div>

    <!-- KẾT QUẢ TÌM KIẾM -->
    <div class="col-xs-12" bis_skin_checked="1">
        <div class="table-responsive">
            <display:table name="buildingList" requestURI="${buildingListURL}" id="tableList"
                           pagesize="${model.maxPageItems}"
                           class="table table-striped table-bordered table-hover"
                           style="text-align: center;">

                <display:column property="name" title="Tên tòa nhà" headerClass="center"/>
                <display:column property="address" title="Địa chỉ" headerClass="center"/>
                <display:column property="numberOfBasement" title="Số tầng hầm" headerClass="center"/>
                <display:column property="floorArea" title="Diện tích sàn" headerClass="center"/>
                <display:column property="rentArea" title="Diện tích thuê" headerClass="center"/>
                <display:column title="Chi tiết" headerClass="center" class="center">
                    <a href="/chi-tiet?id=${tableList.id}" class="btn btn-info btn-sm">Xem</a>
                </display:column>

            </display:table>
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

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

<!-- Xử lý nút tìm kiếm -->
<script>
    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault();
        $('#listForm').submit();
    })
</script>

<style>
    .table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
    }

    .table th {
        background-color: #159a5e;
        color: #fff;
        font-weight: bold;
        text-align: center;
        padding: 12px;
    }

    .table td {
        padding: 12px;
        text-align: center;
        vertical-align: middle;
        color: #333;
        border: 1px solid #dee2e6;
    }

    .table tr:nth-child(odd) {
        background-color: #f8f9fa;
    }

    .table tr:nth-child(even) {
        background-color: #ffffff;
    }

    .table tr:hover {
        background-color: #e9ecef;
    }

    .table .btn-info {
        color: #fff;
        background-color: #189a2f;
        border-color: #189f3f;
        padding: 5px 10px;
        font-size: 0.9rem;
        border-radius: 5px;
        transition: all 0.3s ease;
    }

    .table .btn-info:hover {
        background-color: #138496;
        border-color: #117a8b;
    }

    .table th:first-child,
    .table td:first-child {
        border-left: none;
    }

    .table th:last-child,
    .table td:last-child {
        border-right: none;
    }

    .pagination {
        display: flex;
        justify-content: center;
        margin-top: 20px;
        padding: 0;
        list-style: none;
    }

    .pagination li {
        margin: 0 5px;
    }

    .pagination a {
        display: inline-block;
        padding: 8px 12px;
        font-size: 0.9rem;
        font-weight: bold;
        color: #28a745; /* Xanh lá */
        text-decoration: none;
        border: 1px solid #28a745;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }

    .pagination a:hover {
        background-color: #28a745; /* Nền xanh lá khi hover */
        color: #fff; /* Chữ trắng khi hover */
    }

    .pagination .active a {
        background-color: #28a745; /* Nền xanh lá đậm */
        color: #fff; /* Chữ trắng */
        border-color: #28a745;
    }

    .pagination .disabled a {
        color: #c3e6cb; /* Xanh lá nhạt */
        pointer-events: none;
        background-color: #f8f9fa; /* Nền xám nhạt */
        border-color: #c3e6cb;
    }

    .pagination a i {
        font-size: 1rem;
    }

     /* Container Form */
    .search {
        background-color: #457a47; /* Nền xám nhạt */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    /* Label */
    .search label {
        font-weight: bold;
        color: #495057;
        margin-bottom: 5px;
    }
.search {
        background-color: #ffffff; /* Nền xanh lá nhạt */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    /* Label */
    .search label {
        font-weight: bold;
        color: #495057;
        margin-bottom: 5px;
    }

    /* Input Fields */
    .search .form-control {
        height: 40px;
        border: 1px solid #28a745; /* Viền xanh lá */
        border-radius: 5px;
        transition: border-color 0.3s, box-shadow 0.3s;
    }

    .search .form-control:focus {
        border-color: #28a745; /* Viền xanh lá đậm khi focus */
        box-shadow: 0 0 5px rgba(40, 167, 69, 0.5); /* Ánh sáng xanh lá */
    }

    /* Dropdown Fields */
    .search .form-select {
        height: 40px;
        border: 1px solid #28a745;
        border-radius: 5px;
        transition: border-color 0.3s, box-shadow 0.3s;
    }

    .search .form-select:focus {
        border-color: #28a745;
        box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
    }

    /* Button Search */
    .search .btn-primary {
        background-color: #28a745; /* Xanh lá */
        border: none;
        color: #fff;
        font-weight: bold;
        height: 40px;
        border-radius: 5px;
        transition: background-color 0.3s, box-shadow 0.3s;
    }

    .search .btn-primary:hover {
        background-color: #218838; /* Xanh lá đậm hơn khi hover */
        box-shadow: 0 4px 10px rgba(33, 136, 56, 0.5); /* Đổ bóng khi hover */
    }

    /* Align Search Items */
    .search-item {
        margin-bottom: 15px;
    }

    /* Responsive Margin for Search Form */
    @media (min-width: 768px) {
        .search .row .col-md-4, .search .row .col-md-6 {
            margin-bottom: 0;
        }
</style>

</body>



</html>
