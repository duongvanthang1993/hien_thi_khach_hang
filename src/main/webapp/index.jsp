<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.codegym.model.Customer" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%
    // Khởi tạo trực tiếp danh sách khách hàng mẫu theo đúng yêu cầu đề bài
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?w=100&h=100&fit=crop"));
    customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=100&h=100&fit=crop"));
    customerList.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100&h=100&fit=crop"));
    customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100&h=100&fit=crop"));
    customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100&h=100&fit=crop"));

    request.setAttribute("customerList", customerList);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8fafc;
            margin: 0;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
        }

        .container {
            background-color: #ffffff;
            width: 100%;
            max-width: 800px;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.08);
        }

        h2 {
            text-align: center;
            color: #1e293b;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: 700;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            text-align: left;
            padding: 14px 16px;
            font-size: 16px;
            color: #0f172a;
            border-bottom: 2px solid #e2e8f0;
            font-weight: 700;
        }

        td {
            padding: 14px 16px;
            vertical-align: middle;
            border-bottom: 1px solid #e2e8f0;
            color: #334155;
            font-size: 15px;
        }

        tr:hover {
            background-color: #f1f5f9;
        }

        .customer-img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 4px;
            display: block;
            border: 1px solid #cbd5e1;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Danh sách khách hàng</h2>

    <table>
        <thead>
            <tr>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Ảnh</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td>${customer.name}</td>
                    <td>${customer.dob}</td>
                    <td>${customer.address}</td>
                    <td>
                        <img src="${customer.image}" alt="${customer.name}" class="customer-img">
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
