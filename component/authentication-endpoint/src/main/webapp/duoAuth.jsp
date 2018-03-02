<%--
  ~ Copyright (c) 2016, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
  ~
  ~ WSO2 Inc. licenses this file to you under the Apache License,
  ~ Version 2.0 (the "License"); you may not use this file except
  ~ in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied.  See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <title>Denison University: Duo Authentication Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="author" content="">

        <link rel="icon" href="/denisonAuthEndpoint/images/favicon.ico" type="image/x-icon"/>
        <link href="/denisonAuthEndpoint/css/reset.css" rel="stylesheet">
        <link href="libs/bootstrap_3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <link href="/denisonAuthEndpoint/css/denison-classic.css" rel="stylesheet">
    </head>
    <body>
        <!-- page content -->
        <div class="container">

            <!-- header -->
            <header>
                <div class="row">
                    <div class="col-sm-4">
                        <img src="/denisonAuthEndpoint/images/denison-university-wordmark-red.svg" alt="Denison University SSO" title="Denison University SSO" class="img-responsive logo">
                    </div>
                    <div class="col-sm-8"></div>
                </div>
            </header>
            <div class="panel panel-default">
                <div class="panel-body text-center">
                     <iframe id="duo_iframe"
                             data-host="<%=request.getParameter("duoHost")%>"
                             data-sig-request="<%=request.getParameter("signreq")%>"
                             data-post-action="/commonauth">
                     </iframe>
                     <form method="POST" id="duo_form">
                         <input type="hidden" name="sessionDataKey" value='<%=request.getParameter("sessionDataKey")%>' />
                     </form>
                </div>
            </div>
        </div>
        <%final
            java.text.SimpleDateFormat yearFormat = new java.text.SimpleDateFormat("yyyy");
            java.util.Date currentDate = new java.util.Date();
        %>
        <div class="row">
            <p class="text-center"><em>For security reasons, please logout and close your web browser when you are done.</em></p>
        </div>

        <footer class="row">
            <p class="text-center">For more information, contact <a href="mailto:helpdesk@denison.edu">Information Technology Services</a>.<br />
                <em>&copy; 1999-<%=yearFormat.format(currentDate)%>, Denison University</em>
            </p>
        </footer>
        <script src="js/Duo-Web-v2.min.js"></script>
    </body>
</html>