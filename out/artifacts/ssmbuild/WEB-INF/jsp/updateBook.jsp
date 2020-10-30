<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/29
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>修改书籍</small>
                    </h1>
                </div>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/book/updateBook">
            <div class="form-group">
                <label >书籍编号</label>
                <input type="text" class="form-control" name="bookID" value="${book.bookID}" readonly>
            </div>
            <div class="form-group">
                <label for="bkname">书籍名称</label>
                <input type="text" class="form-control" id="bkname" name="bookName" value="${book.bookName}" required>
            </div>
            <div class="form-group">
                <label for="bkcounts">书籍数量</label>
                <input type="text" class="form-control" id="bkcounts" name="bookCounts" value="${book.bookCounts}" required>
            </div>
            <div class="form-group">
                <label for="bkdetail">书籍详情</label>
                <input type="text" class="form-control" id="bkdetail" name="detail" value="${book.detail}" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="修改">
            </div>

        </form>
    </div>
</body>
</html>
