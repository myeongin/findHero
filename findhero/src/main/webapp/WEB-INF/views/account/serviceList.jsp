<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>fiNdhErO</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
 
  <!-- Favicons -->
  <link href="/findhero/resources/img/favicon.png" rel="icon">
  <link href="/findhero/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/findhero/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/findhero/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/findhero/resources/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/findhero/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/findhero/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/findhero/resources/css/style.css" rel="stylesheet">
	
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
      	<link href="https://cdn.datatables.net/rowreorder/1.2.5/css/rowReorder.dataTables.min.css" rel="stylesheet">
      		<link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">	
  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
  
  
</head>

<body>

  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-box-d">
          	<c:if test="${not empty user }">
            	<h1 class="title-d"><a data-toggle="modal" data-target="#centralModalSm">서비스</a> 이용 정보</h1>
            </c:if>
            <c:if test="${not empty hero }">
            	<h1 class="title-d"><a data-toggle="modal" data-target="#centralModalSm">서비스</a> 등록 정보</h1>

            </c:if>	         	            
          </div>
        </div>
                <div class="col-md-12 col-lg-4">
          <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
            <ol class="breadcrumb">
            
              <li class="breadcrumb-item active" aria-current="page">
                <c:if test="${not empty user }">
            	서비스 이용 정보
            </c:if>
            <c:if test="${not empty hero }">
            	서비스 등록 정보
            </c:if>
              </li>
              <li class="breadcrumb-item">
              	<c:if test="${not empty user }">
                	<a href="requestList.action?userNo=${user.userNo }">요청서 정보</a>
                </c:if>
                <c:if test="${not empty hero }">
                	<a href="requestList.action?heroNo=${hero.heroNo }">요청서 정보</a>
                </c:if>
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ Contact Star /-->
  <section class="contact">
    <div class="container">
		<div class="row">		        
        	<div class="col-md-12">  
        		<div class="table-responsive">                
              <table id="mytable" class="table table-bordred table-hover">
        <c:if test="${not empty user }">         
                   <thead>                   
                     <th></th>
                     <th>제목</th>                    
                     <th>분야</th>
                     <th>강사</th>
                     <th>지역</th>
                     <th>시작</th>
                     <th>종료</th>                     
                     <th>인원</th>
                     <th>가격</th>
                     <th>접수날짜</th>                                            
                     <th>상태</th>
                   </thead>
    <tbody>
    <c:forEach var="rs" items="${rss}">
    <tr>
    <td></td>
    <td>${rs.get("RsTitle") }</td>
    <td>${rs.get("RsField1") }<br>${rs.get("RsField2") }</td>    
    <td>${rs.get("HeroName") }</td>
    <td>${rs.get("RsAdd1") }/${rs.get("RsAdd2") }/${rs.get("RsAdd3") }</td>
    <td><fmt:formatDate value='${rs.get("RsStrart") }' pattern="MM/dd" /></td>
    <td><fmt:formatDate value='${rs.get("RsEnd") }' pattern="MM/dd" /></td>
    <td>${rs.get("applyCount")}/${rs.get("RsCount") }</td>
    <td><fmt:formatNumber value='${rs.get("RsPrice") }' pattern="#.###" /></td>
    <td><fmt:formatDate value='${rs.get("ApplyDay") }' pattern="MM/dd" /></td>        
    <td>${rs.get("RsDel") }</td>        
    <td></td>
    </tr>
    </c:forEach>
    </tbody>
    </c:if> 
     
      <c:if test="${not empty hero }">         
                   <thead>                   
                     <th></th>
                     <th>제목</th>                                       
                     <th>인원</th>
                     <th>요일</th>
                     <th>기간</th>                     
                     <th>등록</th>
                     <th>가격</th>
                     <th>타입</th>                                            
                     <th>상태</th>
                   </thead>
    <tbody id="rsbody">
    <c:forEach var="rs" items="${rss}">
    <tr data-toggle="modal" data-target="#exampleModal${rs.rsNo}">
    <td></td>
    <td>${rs.rsTitle }</td>     
    <td>${rs.applyCount}/${rs.rsCount }</td>
    <td>${rs.rsDay }</td>
    <td>${rs.rsTerm }</td>  
    <td><fmt:formatDate value="${rs.rsRegDate }" pattern="MM/dd" /></td>    
    <td><fmt:formatNumber value="${rs.rsPrice }" pattern="#.###" /> </td>
    <td>${rs.rsType }</td>        
    <td>
    	<c:if test="${rs.rsDel eq '접수중'}">
    	<button class="btn btn-warning btn-xs del" data-rsno="${rs.rsNo}" id="but${rs.rsNo}">
    		<span class="glyphicon glyphicon-trash" id="del${rs.rsNo}">${rs.rsDel }</span>
    	</button>
    	</c:if>
    	<c:if test="${rs.rsDel eq '진행중'}">
    	<button class="btn btn-success btn-xs del" data-rsno="${rs.rsNo}" id="but${rs.rsNo}">
    		<span class="glyphicon glyphicon-trash" id="del${rs.rsNo}">${rs.rsDel }</span>
    	</button>
    	</c:if>
    	<c:if test="${rs.rsDel eq '종료'}">
    	<button class="btn btn-primary btn-xs del" disabled data-rsno="${rs.rsNo}" id="but${rs.rsNo}">
    		<span class="glyphicon glyphicon-trash" id="del${rs.rsNo}">${rs.rsDel }</span>
    	</button>
    	</c:if>
    	<c:if test="${rs.rsDel eq '승인대기'}">
    	<button class="btn btn-secondary btn-xs" disabled data-rsno="${rs.rsNo}" id="but${rs.rsNo}">
    		<span class="glyphicon glyphicon-trash" id="del${rs.rsNo}">${rs.rsDel }</span>
    	</button>
    	</c:if>
    	<c:if test="${rs.rsDel eq '승인' }">
    	<button class="btn btn-info btn-xs del" data-rsno="${rs.rsNo}" id="but${rs.rsNo}">
    		<span class="glyphicon glyphicon-trash" id="del${rs.rsNo}">${rs.rsDel }</span>
    	</button>
    	</c:if>
    	<c:if test="${rs.rsDel eq '거절' }">
    	<button class="btn btn-danger btn-xs" disabled data-rsno="${rs.rsNo}" id="but${rs.rsNo}">
    		<span class="glyphicon glyphicon-trash" id="del${rs.rsNo}">${rs.rsDel }</span>
    	</button>
    	</c:if>
    </td>
    </tr>    
   
    
    
<div class="modal" id="exampleModal${rs.rsNo}">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
        <div class="modal-body">
       	   <div>
            <div class="title-box-d">
             <h4 class="title-d">신청 회원 정보</h4>                    
            </div>
            <c:if test="${not empty rs.users }">
            <c:forEach var="user" items="${rs.users }">                        
            <div class="row">
            	<div class="col-sm" style="text-align:center">
				      이름:${user.userName}
				    </div>
				    <div class="col-sm" style="text-align:center">
				      이메일:${user.userEmail }
				    </div>
				    <div class="col-sm" style="text-align:center">
				      전화번호:${user.userPhone }
				    </div>
				    <br>
			  <%-- //	 --%>		  
			</div>
       		      		
       		</c:forEach>   
       		</c:if>
       		
       		<c:if test="${empty rs.users }">
       		신청회원이 없습니다.
       		</c:if>
      </div>
   
    </div>
  </div>
</div>
</div> 
</c:forEach>    
     </tbody>
    
    </c:if>  
        
</table>

<div class="clearfix"></div>
          <nav class="pagination-a">
            <ul class="pagination justify-content-end">
             ${pager}
            </ul>
          </nav>

                
            </div>
            
        </div>
	</div>
</div>
    
  
  </section>
  
  <div class="modal fade" id="centralModalSm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">

  <!-- Change class .modal-sm to change the size of the modal -->
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title w-100" id="myModalLabel">fiNdhErO</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
     <c:if test="${not empty user }"> 
<!-- <ul class="nav">
  <li class="nav-item">
    <a class="nav-link" href="#" id="barlink">A</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" id="doulink">B</a>
  </li>
</ul> -->
</c:if>
      <div>
      <c:if test="${not empty user }">
        <canvas id="bar-chart" width="800" height="450"></canvas>
        <canvas id="doughnut-chart" width="800" height="450" style="display:none"></canvas>
        </c:if>
         <c:if test="${not empty hero }">
         <canvas id="bar-chart" width="800" height="450"></canvas>
         </c:if>
       </div>
   <div class="container">
   <div class="table-responsive">
 	<table id="example" class="display nowrap" style="width:100%">
 	
 	 <c:if test="${not empty user }">
        <thead>       
            <tr>
                <th>분야</th>
                <th>강사</th>
                <th>지역</th>
                <th>시작</th>
                <th>종료</th>
                <th>가격</th>
            </tr>
        </thead>
        <tbody>
         <c:forEach var="rs" items="${rss}">
            <tr>
                <td>${rs.get("RsField1") }|${rs.get("RsField2") }</td>
                <td>${rs.get("HeroName") }</td>
                <td>${rs.get("RsAdd3") }</td>
                <td><fmt:formatDate value='${rs.get("RsStrart") }' pattern="MM/dd" /></td>
                <td><fmt:formatDate value='${rs.get("RsEnd") }' pattern="MM/dd" /></td>
                <td><fmt:formatNumber value='${rs.get("RsPrice") }' pattern="#.###" /></td>
            </tr>
         </c:forEach>        
        </tbody>
        <tfoot>
            <tr>
               <th>분야</th>
                <th>강사</th>
                <th>지역</th>
                <th>시작</th>
                <th>종료</th>
                <th>가격</th>
            </tr>
        </tfoot>
        </c:if>
        
        	 <c:if test="${not empty hero }">
        <thead>       
            <tr>
               <th>인원</th>
                <th>요일</th>
                <th>지역</th>
                <th>시작</th>
                <th>종료</th>
                <th>가격</th>
            </tr>
        </thead>
        <tbody>
         <c:forEach var="rs" items="${rss}">
            <tr>                
                 <td>${rs.applyCount}/${rs.rsCount }</td>
                <td>${rs.rsDay }</td>
                <td>${rs.rsAdd3 }</td>
                <td><fmt:formatDate value="${rs.rsStart }" pattern="MM/dd" /></td>
                <td><fmt:formatDate value="${rs.rsRegDate }" pattern="MM/dd" /></td>
                <td><fmt:formatNumber value="${rs.rsPrice }" pattern="#.###" /></td>
            </tr>
         </c:forEach>        
        </tbody>
        <tfoot>
            <tr>
               <th>인원</th>
                <th>요일</th>
                <th>지역</th>
                <th>시작</th>
                <th>종료</th>
                <th>가격</th>
            </tr>
        </tfoot>
        </c:if>
        
    </table>
    </div>
</div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
  </div>
  
  <!--/ Contact End /-->

	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

  <!-- JavaScript Libraries -->
  <script src="/findhero/resources/lib/jquery/jquery.min.js"></script>
  <script src="/findhero/resources/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/findhero/resources/lib/popper/popper.min.js"></script>
  <script src="/findhero/resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="/findhero/resources/lib/easing/easing.min.js"></script>
  <script src="/findhero/resources/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/findhero/resources/lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/findhero/resources/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/findhero/resources/js/main.js"></script>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"></script> -->
  
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/rowreorder/1.2.5/js/dataTables.rowReorder.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
  
  <!-- --------------------------------- -->

	
	<script type="text/javascript">
	
		$(function(){	    
			
			new Chart(document.getElementById("bar-chart"), {
			    type: 'bar',
			    data: {
			      labels: ["1월", "2월", "3월", "4월", "5월","6월","7월","8월","9월","10월","11월","12월"],			      
			      datasets: [
			        {
			          label: "",
			          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#3e95cd","#3e95cd","#3e95cd","#3e95cd","#3e95cd","#3e95cd","#3e95cd"],
			          data: [${prices[0]},${prices[1]},${prices[2]},${prices[3]},${prices[4]},${prices[5]},${prices[6]},${prices[7]},${prices[8]},${prices[9]},${prices[10]},${prices[11]}]
			        }
			      ]
			    },
			    options: {
			      legend: { display: false },
			      title: {
			        display: true,
			        text: ''
			      }
			    }
			}); 
			
			
	/* 		new Chart(document.getElementById("doughnut-chart"),{
				type:'doughnut',
				data:{
					datasets:[{
						data:[
							${fieldCount[0]},${fieldCount[2]},${fieldCount[4]}
						],
						backgroundColor:["#3e95cd","#8e5ea2","#3cba9f"],						
					},{
						data:[
							${fieldCount[1]},${fieldCount[3]},${fieldCount[5]}
						],
						backgroundColor:["#3e95cd","#8e5ea2","#3cba9f"],	
					}],
					labels:["레슨","비즈니스","디자인/개발"]
				},
				options:{
					legend: { display: true },
				      title: {
				        display: true,
				        text: ''
				}
			}
		}); 
			 */	
			
		$("#barlink").on("click",function(e){			
			$("#bar-chart").css("display","block");
			$("#doughnut-chart").css("display","none");			
		});
		
		$("#doulink").on("click",function(e){
			$("#bar-chart").css("display","none");
			$("#doughnut-chart").css("display","block");	
		})
			
			
			
			
			$(document).ready(function() {
			    var table = $('#example').DataTable( {
			        rowReorder: {
			            selector: 'td:nth-child(2)'
			        },
			        responsive: true
			    } );
			} );

    		
			$('.btn-xs').on('click',function(event){
    			
    			var rsNo=$(this).attr('data-rsNo');    			
    			var type=$("#del"+rsNo).text();   
    			
    			event.stopImmediatePropagation();
    			
    			$.ajax({
    				"url" : "serviceDel.action",
    				"method" : "POST",
    				"data":{    						    					
    						"rsNo":rsNo,
    						"type":type    						
    					},    				
    				"success":function(data,status,xhr){   
    					
    					/* $("#rsbody").load("rslist.action",{"heroNo":${hero.heroNo},"pageNo":${pageNo}}); */
    			 		
						alert(data)		
						if(data == "진행중"){
							$("#but"+rsNo).removeClass("btn-warning");
							$("#but"+rsNo).addClass("btn-success");
						}else if(data == "종료"){
							$("#but"+rsNo).removeClass("btn-success");
							$("#but"+rsNo).addClass("btn-primary");
						}else if(data == "접수중"){
							$("#but"+rsNo).removeClass("btn-info");
							$("#but"+rsNo).addClass("btn-warning");
						}
						
						$("#del"+rsNo).text(data);		
    				},
    				"error":function(xhr,status,err){
    					alert("실패");
    				}
    			});	
    		})    		
	});
	</script>
</body>
</html>
