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
                <display:column title="<fieldset class='form-group' style='display: block; margin: 0'>
                                                        <input type='checkbox' id='checkAll' class='check-box-element'>
												   </fieldset>" class="center select-cell"
                                headerClass="center select-cell no-select">
                    <fieldset class="no-select">
                        <input type="checkbox" name="checkList" value="${tableList.id}"
                               id="checkbox_${tableList.id}" class="check-box-element"/>
                    </fieldset>
                </display:column>

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
</body>

</html>
