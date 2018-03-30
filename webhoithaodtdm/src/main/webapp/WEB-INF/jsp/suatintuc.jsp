<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>UTE Seminar</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/font-awesome.min.css" rel="stylesheet">
    <link href="static/css/prettyPhoto.css" rel="stylesheet">
    <link href="static/css/price-range.css" rel="stylesheet">
    <link href="static/css/animate.css" rel="stylesheet">
    <link href="static/css/main.css" rel="stylesheet">
    <link href="static/css/responsive.css" rel="stylesheet">

    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
    <script src="static/js/JQuery.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/Css_Trangchu.css">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="static/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="static/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="static/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="static/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="static/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body  style="margin-left: 50px; margin-right: 50px;">
<div class="row">
<div class="col-sm-10" >
<img src="./static/img/bia.png" alt="Flowers" style="width:100%; height: 200px; background-color: gray;">
</div>
<div class="col-sm-2"">
<img src="./static/img/logo.png" alt="Flowers" style="width:100%; height: 200px;">
</div>
</div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="./static/img/1.png" alt="Los Angeles" style="width:100%; height: 300px;">
      </div>

      <div class="item">
        <img src="./static/img/2.jpg" alt="Chicago" style="width:100%; height: 300px;">
      </div>
    
      <div class="item">
        <img src="./static/img/3.jpg" alt="New york" style="width:100%; height: 300px;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">HOI THAO</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="/">Home</a></li>
      <li><a href="trangquanly">Quản Lý Tin Tức</a></li>
      <li><a href="/logout"><i class="fa fa-lock"></i> Đăng xuất</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>
</nav>


    <!--/slider-->

    <section>
        <div class="">
            <div class="page-content">
                <div class="row margin-top-20" style="margin: 0px">
                    <div class="col-md-12">
                        <div class="profile-content">
                            <div class="row">
                                <div class="col-md-8" style="margin-left:16.33% ">
                                   	<c:choose>
		<c:when test="${mode=='MODE_UPDATE' }">
			<h1 style="text-align: center; color: red">CHỈNH SỬA TIN TỨC</h1>
		</c:when>
		<c:when test="${mode=='MODE_NEW' }">
			<h1 style="text-align: center; color: red">THÊM TIN TỨC</h1>
		</c:when>
		</c:choose>
                                    
                                    <div class="portlet light">
                                        <div class="portlet-title tabbable-line">
                                            <div class="caption caption-md">
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_1_1">
                                                    <form role="form" action="capnhat-tintuc" method="post">
                                                       <input type="hidden" name="idtintuc" value="${tin.idtintuc}"/>
                                                        <div class="form-group">
                                                        
                                                            <label class="control-label">Tiêu đề</label>
                                                            <input id="tieude" name = "tieude" type="text" placeholder="" class="form-control" value="${tin.tieude}"/>
                                                        </div>
                                                         <%-- <input type="linkanh" name="linkanh" value="${tin.linkanh}"/> --%>
                                                        
                                                        <div class="form-group">
                                                            <label class="control-label">Chi tiết bài đăng</label>
                                                            <textarea id="noidung" name="noidung" class="form-control" rows="3" >${tin.noidung}</textarea>
                                                        </div>   
														<div class="form-group col-md-3">	
											</div>																				
											 <div class="margiv-top-10">
                                                            	 <input type="submit" value="Lưu">                                                   
                                                      </div> 
                                                      
                                                      <div class="row space-fiels">
                          <div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
                            <label for="nametopic">Hình ảnh mô tả </label><span class="require">*</span>
                          </div>
                          <div class="col-md-9 col-sm-9 col-xs-12">
                            <div class="imgnew">
                            <%if(request.getAttribute("IdImage")!=null){ %>
                              <img src=<%=request.getAttribute("FileName") %> class="img-rounded file-upload-image" width="100%">
                              <input type="hidden" name="FileImage" id="FileImageNews">
                              <%}else{ %>
                              	<img src="static/images/hinhtri.jpg" class="img-rounded file-upload-image" width="100%">
                              	<input type="hidden" name="FileImage" id="FileImageNews">
                              <%} %>
                            </div>
                            <form action="uploadImage" method="POST" enctype="multipart/form-data">
                              <div class="row">
                                <div class="col-md-8 col-xs-12">
                                  <input type="file" name="file" value="" id="img-new" accept="image/*">
                                </div>
                                <div class="col-md-4 col-xs-12">
                                  <button class="btn btn-default" type="submit">Tải ảnh lên</button>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                        
                        
                        <div class="row space-fiels">
                          <div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
                            <label for="nametopic">Tệp đính kèm </label><span class="require">*</span>
                          </div>
                          <div class="col-md-9 col-sm-9 col-xs-12">
                            <form action="uploadFile" method="POST" enctype="multipart/form-data" >
                              <div class="row">
                                <div class="col-md-8 col-xs-12">
                                  <div class="addfile">
                                    <div class="space-fileup" style="margin-top: 0px;">
                                      <label class="input-label" for="file">
                                        <i class="fa fa-upload"></i>
                                        <span class="label-span">Tải lên tệp</span></label>
                                        <% if(request.getAttribute("FileName")!=null){ %>
	                                        <input type="file" name="file" id="file" accept=".pdf,.docx,.xsls" value=<%=request.getAttribute("FileName") %>>
	                                        <input type="hidden" id="FileName" name="" value=<%=request.getAttribute("IdFile") %>>
                                        <%}else{ %>
                                        	<input type="file" name="file" id="file" accept=".pdf,.docx,.xsls">
	                                        <input type="hidden" id="FileName" name="">
                                        <%} %>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-4 col-xs-12">
                                  <button class="btn btn-default" type="submit">Tải lên tệp</button>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      
                        <div class="clearfix"></div>
                        <hr>
                      
                                                      
                                                      
                                                      
                                                      	                                                    
                                                    </form>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
   <div id="footer" style="background-color:black;color:white">
<p>FACEBOOK: HoiThaoHCMUTE</p>
<P>EMAIL: viettelplus@gmail.com</P>
<P>ADDRESS: 1 Võ Văn Ngân, Quận Thủ Đức</P>
<P>PHONE: 19008198</P>
<p></p>
</div>
        <!--/Footer-->
</body>
</html>