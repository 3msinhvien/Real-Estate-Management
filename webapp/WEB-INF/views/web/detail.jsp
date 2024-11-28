<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chi tiết Tòa Nhà</title>
    <style>
        body {
            font-family: sans-serif;
            color: #343a40;
        }

        .container {
            background-color: #fff;
            border-radius: 12px;
            padding: 30px;
            margin: 50px auto;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 900px;
        }

        h1 {
            text-align: center;
            font-size: 2.5rem;
            font-weight: 700;
            color: #007bff;
            margin-bottom: 2rem;
        }

        .building-image {
            display: block; /* Hiển thị ảnh dưới dạng block-level element */
            margin: 0 auto 2rem auto; /* Căn giữa ảnh */
            max-width: 100%;
            height: 300px;
            width: 400px;
            object-fit: cover;
            border: 4px solid #007bff;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        .section-title {
            font-size: 1.8rem;
            font-weight: bold;
            margin-top: 2rem;
            margin-bottom: 1rem;
            padding-bottom: 10px;
            border-bottom: 2px solid #007bff;
            color: #343a40;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 2rem;
        }

        .table th, .table td {
            padding: 1rem;
            text-align: left;
            border: 1px solid #dee2e6; /* Thêm viền cho bảng */
        }

        .table th {
            background-color: #007bff;
            color: #fff;
            font-weight: 500;
        }

        .btn {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            user-select: none;
            border: 1px solid transparent;
            padding: 0.5rem 1rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        .btn-primary {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            color: #fff;
            background-color: #0069d9;
            border-color: #0062cc;
        }

        .text-center {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center mb-4">Thông tin chi tiết tòa nhà</h1>
    <div>
        <img src="${building.imageName}" alt="Hình ảnh tòa nhà" class="building-image">
    </div>

    <div>
        <h2 class="section-title">Thông tin cơ bản</h2>
        <table class="table">
            <tbody>
            <tr>
                <th>Tên tòa nhà   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
                    <path d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                    <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3z"/>
                </svg></th>
                <td>${building.name}</td>
            </tr>
            <tr>
                <th> Địa chỉ  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                    <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                </svg> </th>
                <td>${building.address}</td>
            </tr>
            <tr>
                <th>Số tầng hầm  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-car-front" viewBox="0 0 16 16">
                    <path d="M4 9a1 1 0 1 1-2 0 1 1 0 0 1 2 0m10 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0M6 8a1 1 0 0 0 0 2h4a1 1 0 1 0 0-2zM4.862 4.276 3.906 6.19a.51.51 0 0 0 .497.731c.91-.073 2.35-.17 3.597-.17s2.688.097 3.597.17a.51.51 0 0 0 .497-.731l-.956-1.913A.5.5 0 0 0 10.691 4H5.309a.5.5 0 0 0-.447.276"/>
                    <path d="M2.52 3.515A2.5 2.5 0 0 1 4.82 2h6.362c1 0 1.904.596 2.298 1.515l.792 1.848c.075.175.21.319.38.404.5.25.855.715.965 1.262l.335 1.679q.05.242.049.49v.413c0 .814-.39 1.543-1 1.997V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.338c-1.292.048-2.745.088-4 .088s-2.708-.04-4-.088V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.892c-.61-.454-1-1.183-1-1.997v-.413a2.5 2.5 0 0 1 .049-.49l.335-1.68c.11-.546.465-1.012.964-1.261a.8.8 0 0 0 .381-.404l.792-1.848ZM4.82 3a1.5 1.5 0 0 0-1.379.91l-.792 1.847a1.8 1.8 0 0 1-.853.904.8.8 0 0 0-.43.564L1.03 8.904a1.5 1.5 0 0 0-.03.294v.413c0 .796.62 1.448 1.408 1.484 1.555.07 3.786.155 5.592.155s4.037-.084 5.592-.155A1.48 1.48 0 0 0 15 9.611v-.413q0-.148-.03-.294l-.335-1.68a.8.8 0 0 0-.43-.563 1.8 1.8 0 0 1-.853-.904l-.792-1.848A1.5 1.5 0 0 0 11.18 3z"/>
                </svg></th>
                <td>${building.numberOfBasement}</td>
            </tr>
            <tr>
                <th>Diện tích sàn (m²)  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrows-angle-expand" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M5.828 10.172a.5.5 0 0 0-.707 0l-4.096 4.096V11.5a.5.5 0 0 0-1 0v3.975a.5.5 0 0 0 .5.5H4.5a.5.5 0 0 0 0-1H1.732l4.096-4.096a.5.5 0 0 0 0-.707m4.344-4.344a.5.5 0 0 0 .707 0l4.096-4.096V4.5a.5.5 0 1 0 1 0V.525a.5.5 0 0 0-.5-.5H11.5a.5.5 0 0 0 0 1h2.768l-4.096 4.096a.5.5 0 0 0 0 .707"/>
                </svg></th>
                <td>${building.floorArea}
            </tr>
            <tr>
                <th>Diện tích thuê (m²)  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrows-angle-expand" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M5.828 10.172a.5.5 0 0 0-.707 0l-4.096 4.096V11.5a.5.5 0 0 0-1 0v3.975a.5.5 0 0 0 .5.5H4.5a.5.5 0 0 0 0-1H1.732l4.096-4.096a.5.5 0 0 0 0-.707m4.344-4.344a.5.5 0 0 0 .707 0l4.096-4.096V4.5a.5.5 0 1 0 1 0V.525a.5.5 0 0 0-.5-.5H11.5a.5.5 0 0 0 0 1h2.768l-4.096 4.096a.5.5 0 0 0 0 .707"/>
                </svg></th>
                <td>${building.rentArea}</td>
            </tr>
            <tr>
                <th>Hướng <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-sign-merge-left-fill" viewBox="0 0 16 16">
                    <path d="M9.05.435c-.58-.58-1.52-.58-2.1 0L.436 6.95c-.58.58-.58 1.519 0 2.098l6.516 6.516c.58.58 1.519.58 2.098 0l6.516-6.516c.58-.58.58-1.519 0-2.098zM7.25 6H6.034a.25.25 0 0 1-.192-.41l1.966-2.36a.25.25 0 0 1 .384 0l1.966 2.36a.25.25 0 0 1-.192.41H8.75v6h-1.5V8.823c-.551.686-1.229 1.363-1.88 2.015l-.016.016-.708-.708c.757-.756 1.48-1.48 2.016-2.196q.377-.499.588-.95z"/>
                </svg></th>
                <td>${building.direction}</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="text-center">
        <a href="/lien-he" class="btn btn-secondary">Để lại thông tin liên hệ</a>
    </div>
    <div class="text-center mt-3">
        <a href="/san-pham" class="btn btn-primary">Quay lại danh sách</a>
    </div>

</div>

<style>
    body {
        font-family: Arial, sans-serif;
        color: #343a40;
        background: linear-gradient(120deg, #e8f5e9, #f1f8e9);
        margin: 0;
        padding: 0;
    }

    .container {
        background-color: #fff;
        border-radius: 16px;
        padding: 30px;
        margin: 40px auto; /* Giảm khoảng cách từ container tới mép trên */
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        max-width: 900px;
    }

    h1 {
        text-align: center;
        font-size: 2.4rem;
        font-weight: bold;
        color: #388e3c;
        margin-bottom: 20px; /* Giảm khoảng cách dưới tiêu đề */
    }

    .building-image {
        display: block;
        margin: 10px auto; /* Giảm khoảng cách trên/dưới hình ảnh */
        max-width: 100%;
        height: auto;
        transform: scale(0.7); /* Hình ảnh thu nhỏ 70% */
        transform-origin: center;
        border: 6px solid #66bb6a;
        border-radius: 16px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        transition: transform 0.3s;
    }

    .building-image:hover {
        transform: scale(0.8); /* Phóng to nhẹ khi hover */
    }

    .section-title {
        font-size: 1.8rem;
        font-weight: bold;
        margin: 15px 0; /* Khoảng cách giữa tiêu đề và các thành phần bên trên/dưới */
        padding-bottom: 10px;
        border-bottom: 3px solid #5ca260;
        color: #66bb6a;
    }

    .table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 15px; /* Giảm khoảng cách giữa bảng và các thành phần khác */
    }

    .table th, .table td {
        padding: 10px; /* Giảm padding trong bảng */
        text-align: left;
        border: 1px solid #dee2e6;
    }

    .table th {
        background: #457a47;
        color: #fff;
        font-weight: bold;
    }

    .table tr:nth-child(odd) {
        background-color: #f1f8e9;
    }

    .table tr:nth-child(even) {
        background-color: #e8f5e9;
    }

    .btn {
        display: inline-block;
        font-weight: bold;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        border: 2px solid transparent;
        padding: 8px 16px; /* Giảm padding trong nút */
        font-size: 1rem;
        line-height: 1.5;
        border-radius: 8px;
        transition: all 0.3s;
    }

    .btn-primary {
        color: #fff;
        background: #388e3c;
        border-color: #388e3c;
    }

    .btn-primary:hover {
        color: #fff;
        background: #2e7d32;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .text-center {
        text-align: center;
        margin-top: 20px; /* Khoảng cách giữa nút và bảng phía trên */
    }
</style>
</body>
</html>