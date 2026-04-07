<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<div class="container mt-3">
    <c:if test="${not empty param.search or not empty param.faculty}">
        <div class="alert alert-info alert-dismissible fade show shadow-sm" role="alert">
            <i class="fa fa-search mr-2"></i>
            Kết quả: Tìm thấy <strong>${fn:length(students)}</strong> sinh viên.

            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>
</div>
<div>
    <div>
        <label for="select">Sắp xếp</label>
        <br>
        <select class="form-control w-25" name="select" id="select" onchange="selectSortValue(this.value)">
            <option value="gpa" ${param.sortBy == 'gpa' ? 'selected' : ''}>Sắp xếp theo GPA</option>

            <option value="name" ${param.sortBy == 'name' ? 'selected' : ''}>Sắp xếp theo Tên</option>
        </select>
    </div>
    <table class="table">
        <thead>
        <th>STT</th>
        <th>ID</th>
        <th>Name</th>
        <th>Student Code</th>
        <th>Faculty</th>
        <th>Year Enrollment</th>
        <th>GPA</th>
        <th>Status</th>
        <th>Action</th>
        </thead>
        <tbody>
        <c:forEach var="p" items="${students}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${p.id}</td>
                <td>${p.fullName}</td>
                <td>${p.studentCode}</td>
                <td>${p.faculty}</td>
                <td>${p.yearEnrolled}</td>
                <td>${p.GPA}</td>
                <td>
                    <c:choose>
                        <c:when test="${p.status == 'Đang học'}">
                            <span class="badge badge-success px-3">Đang học</span>
                        </c:when>
                        <c:when test="${p.status == 'Bảo lưu'}">
                            <span class="badge badge-warning px-3 text-white">Bảo lưu</span>
                        </c:when>
                        <c:when test="${p.status == 'Tốt nghiệp'}">
                            <span class="badge badge-primary px-3">Tốt nghiệp</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge badge-secondary px-3">${p.status}</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <a href="/detail?id=${p.id}">Xem chi tiết</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
<script>
    const selectSortValue = (value) => {
        if(value){
            window.location.href = "/list?sortBy=" + value;
        }
    }
</script>
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