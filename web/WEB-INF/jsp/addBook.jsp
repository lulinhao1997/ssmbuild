<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/29
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍页面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>新增书籍</small>
                    </h1>
                </div>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/book/addBook">
            <div class="form-group">
                <label for="bkname">书籍名称</label>
                <input type="text" class="form-control" id="bkname" name="bookName" required>
            </div>
            <div class="form-group">
                <label for="bkcounts">书籍数量</label>
                <input type="text" class="form-control" id="bkcounts" name="bookCounts" required>
            </div>
            <div class="form-group">
                <label for="bkdetail">书籍详情</label>
                <input type="text" class="form-control" id="bkdetail" name="detail" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="添加">
            </div>

        </form>
    </div>
</body>
</html>
