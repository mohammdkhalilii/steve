<%-- SteVe - SteckdosenVerwaltung - https://github.com/steve-community/steve Copyright (C) 2013-2024 SteVe Community
    Team All Rights Reserved. This program is free software: you can redistribute it and/or modify it under the terms of
    the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at
    your option) any later version. This program is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
    General Public License for more details. You should have received a copy of the GNU General Public License along
    with this program. If not, see <https://www.gnu.org/licenses />.

--%>
<%@ page contentType="text/html" pageEncoding="utf-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <%@ include file="00-context.jsp" %>

            <!DOCTYPE html>
            <html>

            <head>
                <link rel="icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
                <link rel="shortcut icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
                <link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/style.css">
                <title>Asil CSMS - Steve</title>
                <style>
                    .login-page-custom {
                        width: 360px;
                        padding: 8% 0 0;
                        margin: auto;
                    }

                    .form-custom {
                        position: relative;
                        z-index: 1;
                        background: #FFFFFF;
                        max-width: 360px;
                        margin: 0 auto 100px;
                        padding: 45px;
                        text-align: center;
                        box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
                        border-radius: 15px;
                    }

                    .form-custom input {
                        outline: 0;
                        background: #f2f2f2;
                        width: 100%;
                        border: 0;
                        margin: 0 0 15px;
                        padding: 15px;
                        box-sizing: border-box;
                        font-size: 14px;
                        border-radius: 10px;
                        ;
                    }

                    .form-custom .custom-submit {
                        outline: 0;
                        background: #4CAF50;
                        width: 100%;
                        border: 0;
                        padding: 15px;
                        color: #FFFFFF;
                        font-size: 14px;
                        -webkit-transition: all 0.3 ease;
                        transition: all 0.3 ease;
                        cursor: pointer;
                        height: auto;
                    }

                    .form-custom .custom-submit:hover,
                    .form-custom .custom-submit:active,
                    .form-custom .custom-submit:focus {
                        background: #43A047;
                    }
                </style>
            </head>

            <body style="background-color: black;">
                <div>
                    <div class="login-page-custom">
                        <div class="form-custom">
                            <form class="login-form-custom" method="POST" action="${ctxPath}/manager/signin">
                                <input type="text" name="username" id="username" placeholder="Username" required />
                                <input type="password" name="password" id="password" placeholder="Password" required />
                                <input class="custom-submit" type="submit" value="Sign In">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            </form>
                        </div>
                        <a style="display:flex;justify-content: center;" href="${ctxPath}/manager/home"><img
                                style="width:20em;filter:invert(1)" src="${ctxPath}/static/images/logo2.png"></a>

                        <%@ include file="00-footer.jsp" %>