<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>

<%
    ArticleDto article = (ArticleDto)request.getAttribute("article");
%>

<h1>게시물 수정페이지</h1>

<%--<div>--%>
<%--    <% if ( article != null ) { %>--%>
<%--    <div>--%>
<%--        ID : <%=article.getId()%>--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        TITLE : <%=article.getTitle()%>--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        BODY : <%=article.getBody()%>--%>
<%--    </div>--%>
<%--    <% } %>--%>
<%--</div>--%>

<script>
    function ArticleSave__modifyForm(form) {
        form.title.value = form.title.value.trim();
        if ( form.title.value.length == 0 ) {
            alert('제목을 입력해주세요.');
            form.title.focus();
            return;
        }
        form.body.value = form.body.value.trim();
        if ( form.body.value.length == 0 ) {
            alert('내용을 입력해주세요.');
            form.body.focus();
            return;
        }
        form.submit();
    }
</script>

<form method = "POST" onsubmit="ArticleSave__modifyForm(this); return false;">

    <div>
        ID : <%=article.getId()%>
    </div>

    <div>
        <span>제목</span>
        <div>
            <input name="title" type="text" maxlength="50" placeholder=<%=article.getTitle()%> />
        </div>
    </div>

    <div>
        <span>내용</span>
        <div>
            <input name="body" type="text" maxlength="300" placeholder=<%=article.getBody()%> />
        </div>
    </div>

    <div>
        <span>수정</span>
        <div>
            <input type="submit" value="수정" />
        </div>
    </div>
</form>