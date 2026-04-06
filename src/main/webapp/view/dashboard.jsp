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
<div class="container py-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-secondary font-weight-bold">BÁO CÁO THỐNG KÊ</h2>
        <a href="/list" class="btn btn-outline-primary">Quay lại danh sách</a>
    </div>

    <div class="row">
        <div class="col-md-4 mb-4">
            <div class="card shadow-sm bg-white">
                <div class="card-body text-center">
                    <h6 class="text-uppercase text-muted">Tổng số sinh viên</h6>
                    <h2 class="display-4 font-weight-bold text-primary">${statistic.allStudent}</h2>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card shadow-sm bg-white">
                <div class="card-body text-center">
                    <h6 class="text-uppercase text-muted">GPA Trung bình</h6>
                    <h2 class="display-4 font-weight-bold text-success">${statistic.avgGPA}</h2>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card shadow-sm border-left border-warning bg-white">
                <div class="card-body">
                    <h6 class="text-uppercase text-muted">Thủ khoa nhóm</h6>
                    <h5 class="font-weight-bold mb-1">
                        ${not empty statistic.highestGPA ? statistic.highestGPA.fullName : "Chưa có"}
                    </h5>
                    <p class="text-warning font-weight-bold mb-0">GPA: ${statistic.highestGPA.GPA}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="card shadow-sm border-0 mt-2">
        <div class="card-body">
            <h5 class="card-title text-muted mb-4">Tỷ lệ sinh viên theo trạng thái</h5>

            <div class="mb-4">
                <div class="d-flex justify-content-between mb-1">
                    <span>Đang học</span>
                    <span class="font-weight-bold text-success">${statistic.percentInProgress}%</span>
                </div>
                <div class="progress" style="height: 25px;">
                    <div class="progress-bar bg-success" style="width: ${statistic.percentInProgress}%">
                        ${statistic.percentInProgress}%
                    </div>
                </div>
            </div>

            <div class="mb-4">
                <div class="d-flex justify-content-between mb-1">
                    <span>Bảo lưu</span>
                    <span class="font-weight-bold text-warning">${statistic.percentReserve}%</span>
                </div>
                <div class="progress" style="height: 25px;">
                    <div class="progress-bar bg-warning text-dark" style="width: ${statistic.percentReserve}%">
                        ${statistic.percentReserve}%
                    </div>
                </div>
            </div>

            <div class="mb-2">
                <div class="d-flex justify-content-between mb-1">
                    <span>Tốt nghiệp</span>
                    <span class="font-weight-bold text-primary">${statistic.percentGraduated}%</span>
                </div>
                <div class="progress" style="height: 25px;">
                    <div class="progress-bar bg-primary" style="width: ${statistic.percentGraduated}%">
                        ${statistic.percentGraduated}%
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<h1>Tổng số sinh viên trong nhóm : ${statistic.allStudent}</h1>--%>
<%--<h1>Tỷ lệ % sinh viên "Đang học" : ${statistic.percentInProgress}%</h1>--%>
<%--<h1>Tỷ lệ % sinh viên "Bảo lưu" : ${statistic.percentReserve}%</h1>--%>
<%--<h1>Tỷ lệ % sinh viên "Tốt nghiệp" : ${statistic.percentGraduated}%</h1>--%>
<%--<h1>GPA trung bình toàn nhóm : ${statistic.avgGPA}</h1>--%>
<%--<h1>"Thủ khoa" của nhóm : ${statistic.highestGPA.fullName}(GPA : ${statistic.highestGPA.GPA})</h1>--%>


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