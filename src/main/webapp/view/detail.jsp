<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-sm border-0" style="background-color: #f8f9fa;">

        <div class="card-header bg-primary text-white py-3">
            <h1 class="h3 mb-0 text-center">CHI TIẾT SINH VIÊN</h1>
        </div>

        <div class="card-body p-4">
            <div class="row mb-3 border-bottom pb-2">
                <div class="col-sm-4 fw-bold text-secondary">ID:</div>
                <div class="col-sm-8 fs-5 text-dark">${student.id}</div>
            </div>

            <div class="row mb-3 border-bottom pb-2">
                <div class="col-sm-4 fw-bold text-secondary">Họ và tên:</div>
                <div class="col-sm-8 fs-5 fw-bold text-primary">${student.fullName}</div>
            </div>

            <div class="row mb-3 border-bottom pb-2">
                <div class="col-sm-4 fw-bold text-secondary">Mã số sinh viên:</div>
                <div class="col-sm-8 fs-5">${student.studentCode}</div>
            </div>

            <div class="row mb-3 border-bottom pb-2">
                <div class="col-sm-4 fw-bold text-secondary">Khoa:</div>
                <div class="col-sm-8 fs-5">${student.faculty}</div>
            </div>

            <div class="row mb-3 border-bottom pb-2">
                <div class="col-sm-4 fw-bold text-secondary">Năm nhập học:</div>
                <div class="col-sm-8 fs-5">${student.yearEnrolled}</div>
            </div>

            <div class="row mb-3 border-bottom pb-2">
                <div class="col-sm-4 fw-bold text-secondary">Điểm trung bình (GPA):</div>
                <div class="col-sm-8 fs-5">
                    <span class="text-white badge bg-success fs-6">${student.GPA}</span>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4 fw-bold text-secondary">Trạng thái:</div>
                <div class="col-sm-8 fs-5">
                    <span class="text-info fw-semibold italic">${student.status}</span>
                </div>
            </div>
            <div class="row">
                <div class="d-flex justify-content-end">
                    <a href="list" class="btn btn-outline-secondary px-4">
                        <i class="fa fa-arrow-left"></i> Quay lại danh sách
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>