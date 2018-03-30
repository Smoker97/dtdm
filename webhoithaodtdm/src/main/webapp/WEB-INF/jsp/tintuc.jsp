<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<link rel="stylesheet" href="static/css/dataTables.bootstrap.min.css">
	
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
   
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

	<section>
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="row margin-top-20" style="margin: 0px">
				<div class="col-md-12">
					<div class="profile-content">
						<div class="row">
							<div class="col-md-8" style="margin-left: 16.33%">
								<h1 style="text-align: center; color: red">TIN TỨC</h1>
                                    <div class="portlet light">
                                        <div class="portlet-title tabbable-line">
                                            <div class="caption caption-md">
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_1_1">
                                                   <table id="table" class="table table-bordered table-striped table-hover">
                                                <thead style="background-color: rgb(189, 189, 235);text-align: center">
                                                    <tr>
                                                        <th>Mã tin tức</th>
                                                        <th>Tiêu đề tin tức</th>
                                                        <th>Nội dung tin tức</th>       
                                                         <th>Thời gian</th> 
                                                         <th></th>
                                                          <th></th>                                          
                                                    </tr>
                                                </thead>                                                
                                                <tbody>                                                 
												 <c:forEach var="tintuc" items="${tintucs}">
							<tr>
								<td>${tintuc.idtintuc }</td>
								<td>${tintuc.tieude }</td>
								<td>${tintuc.noidung }</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${tintuc.thoigian }"/></td>								
								<td><a href="update-tintuc?id=${tintuc.idtintuc }"><span class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a href="delete-tintuc?id=${tintuc.idtintuc }"><span class="glyphicon glyphicon-trash"></span></a></td>
								
							</tr>
						</c:forEach>
                                                </tbody>
                                            </table>
                                            		<a href="new-tintuc">Thêm tin tức</a>
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

        
  <script src="static/js/jquery-3.2.1.min.js"></script>
    <!-- <script src="static/js/JQuery.js"></script> -->
    <script type="text/javascript"
	src="static/jquery-confirm-v3.3.0/jquery-confirm-master/js/jquery-confirm.js"></script>
	<script src="static/ckeditor_4.9.0_full/ckeditor/ckeditor.js"></script>
	<!-- <script src="static/js/jquery.js"></script> -->
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/jquery.scrollUp.min.js"></script>
        <script src="static/js/price-range.js"></script>
        <script src="static/js/jquery.prettyPhoto.js"></script>
        <script src="static/js/main.js"></script>
      
         <!-- JS -->
     <script src="static/js/jquery.dataTables.min.js"></script>
	<script src="static/js/dataTables.bootstrap.min.js"></script>
     <script type="text/javascript">

 	$(document).ready(function(){
		var table= $('#table').DataTable({			
			"language": {				
	            "lengthMenu": "Xem _MENU_ giá trị",
	            "zeroRecords": "Không tìm thấy",
	             "info": "Hiển thị _START_ trên _END_ của _TOTAL_ giá trị ", 
	            "infoEmpty": "Không có kết quả",
	            "infoFiltered": "(không tìm thấy trên _MAX_ dữ liệu)",
	            "search":         "Tìm kiếm:",
	            "loadingRecords": "Loading...",
	            "processing":     "Processing..."
			}
		});
		
		$("tbody tr").on('click', function(){
				$("tbody tr").css("background-color","white");
				$(this).closest("tr").css("background-color","#F2F2F2");
			//	bool = $(this).closest("tr").find("td:eq(2)").text();		
				$("#ID").val($(this).closest('tr').find('td:first').text());
				/* $("#CauTraLoi").val($(this).closest('tr').find('td:nth-child(2)'));     */
				
			}); 	
	});
</script>
</body>
</html>