<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<title>Spring Mobile | Lite Device Delegating View Resolver</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
</head>
<body>
    <header>
        <h1>Home [Tablet]</h1>
    </header>
    <p>
        View the <a th:href="@{/about}">About</a> page.
    </p>
      <p>어서오너라, 태블릿 페이지 이니라.</p>
    <p>Site:
        <span th:if="${currentSitePreference.normal}" th:remove="tag">Normal | <a href="?site_preference=mobile">Mobile</a> | <a href="?site_preference=tablet">Tablet</a></span>
        <span th:if="${currentSitePreference.mobile}" th:remove="tag"><a href="?site_preference=normal">Normal</a> | Mobile | <a href="?site_preference=tablet">Tablet</a></span>
        <span th:if="${currentSitePreference.tablet}" th:remove="tag"><a href="?site_preference=normal">Normal</a> | <a href="?site_preference=mobile">Mobile</a> | Tablet</span>
    </p>
</body>
</html>