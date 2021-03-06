<%@page pageEncoding="utf-8"%>

<html>
    <head>
        <title>index</title>
        <meta charset="utf-8"/>
        <link rel="short icon" href="/resource/img/logosm.png"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="/resource/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="/resource/css/style.css" rel="stylesheet">
    </head>
    <body class="bg-light text-dark">
        <!--header-->
        <br>
        <a href="/" style="float:left;" class="text-dark"><h3>会飞的羊博客</h3></a>
        <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link active" href="#">首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">链接</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">联系</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">关于</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="modal" data-target="#exampleModal">登陆</a>
            </li>
        </ul>
        <br>
        <div class="page-left"></div>
        <div id="article-content" class="page-center">
            <!--article-->
            <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- 指示符 -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- 轮播图片 -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://static.runoob.com/images/mix/img_fjords_wide.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="https://static.runoob.com/images/mix/img_nature_wide.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="https://static.runoob.com/images/mix/img_mountains_wide.jpg">
                    </div>
                </div>

                <!-- 左右切换按钮 -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div><br>
            <div class="card" style="width: 48rem;">
                <div id="article-page0" class="card-body">
                    <%--<h5 class="card-title">记一次服务器搬迁过程</h5>--%>
                    <%--<p class="card-text">因为腾讯云的学生机已经快到期了，所以博主得转移阵地前往阿里云了。不过不知道是不是优惠了，阿里云学生机114一年居然有2G内存，美滋滋啊。不过搬迁博客还是挺麻烦的，用了一上午加下午两个小时才弄好。好了，...</p>--%>
                    <%--<a href="#" class="card-link">收藏</a>--%>
                    <%--<a href="#" class="card-link">阅读全文</a>--%>
                </div>
            </div><br>
            <div class="card" style="width: 48rem;">
                <div id="article-page1" class="card-body">
                </div>
            </div><br>
            <div class="card" style="width: 48rem;">
                <div id="article-page2" class="card-body">
                </div>
            </div><br>
            <div class="card" style="width: 48rem;">
                <div id="article-page3" class="card-body">
                </div>
            </div><br>
            <!--foot-->
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" onclick="get(0)">1</a></li>
                    <li class="page-item"><a class="page-link" onclick="get(1)">2</a></li>
                    <li class="page-item"><a class="page-link" onclick="get(2)">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="page-right">
            <div class="card  bg-light mb-3" style="max-width: 20rem;">
                <div class="card-header">最新资讯</div>
                <div id="newArticle" class="card-body">
                </div>
            </div>
            <div class="card  bg-light mb-3" style="max-width: 20rem;">
                <div class="card-header">热门文章</div>
                <div id="mostView" class="card-body">
                </div>
            </div>
            <div class="card  bg-light mb-3" style="max-width: 20rem;">
                <div class="card-header">最多评论</div>
                <div id="mostComment"class="card-body">
                </div>
            </div>
            <div class="card  bg-light mb-3" style="max-width: 20rem;">
                <div class="card-header">热门标签</div>
                <div class="card-body">
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">登陆</h5>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="/admin/login">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">用户</span>
                                </div>
                                <input type="text" name='username' class="form-control"   aria-describedby="basic-addon1">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">密码</span>
                                </div>
                                <input type="password" name="password" class="form-control"   aria-describedby="basic-addon1">
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">登陆</button>
                                <button type="button" class="btn btn-primary" onclick="window.location='/admin/register'">注册</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
      <!--添加一些必要的js-->
      <script src="/resource/js/jquery-3.3.1.min.js"></script>
      <script src="/resource/js/bootstrap.min.js"></script>
      <script>
          if('${register}'=='true'){
              alert("注册成功");
          }
          //获取最新文章，最热文章模板函数
          function getList(id,data){
              var html='';
              for(var i=0;i<5;i++){
                  html+='<a href="/article/'+data[i].id+'"class="text-muted">'+data[i].title+'</a><br>';
              }
              $(id)[0].innerHTML=html;
          }
          function get(i) {
              $.ajax({
                  url: "http://localhost:8080/"+i,
                  type: "get",
                  success: function (data) {
                      for (var i = 0; i < 4; i++) {
                          $(('#article-page' + i))[0].innerHTML =
                              "<h5 class='card-title'>" + data[i].title + "</h5>" +
                              "<p class='card-text'>" + data[i].descriable + "</p>" +
                              "<a href='#' class='card-link'>收藏</a>" +
                              "<a href='/article/" + data[i].id + "'  class='card-link'>阅读全文</a>";
                      }
                  }
              })
          }
         $.ajax({
             url:"http://localhost:8080/article/newArticle",
             type:"GET",
             success:function(data){
                 getList('#newArticle',data);
             }
         });
          $.ajax({
              url:"http://localhost:8080/article/mostView",
              type:"GET",
              success:function(data){
                  getList('#mostView',data);
              }
          });
          $.ajax({
              url:"http://localhost:8080/article/mostComment",
              type:"GET",
              success:function(data){
                  getList('#mostComment',data);
              }
          });
          get(0);
      </script>
    </body>
</html>