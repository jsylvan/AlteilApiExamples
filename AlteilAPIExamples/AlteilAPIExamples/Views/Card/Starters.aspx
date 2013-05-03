<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sample listing of Alteil's cards.">
    <meta name="author" content="Alteil Marketing Team">
    <link rel="stylesheet" href="/Content/angular-ui.css">
    <link rel="stylesheet" href="/Content/bootstrap.min.css">
    <link rel="stylesheet" href="/Content/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="/Content/Browse.css">
    <link rel="stylesheet" href="/Content/avgrund.css">
    <script src="/Scripts/jquery-1.9.1.js"></script>
    <script src="/Scripts/angular.js"></script>
    <script src="/Scripts/angular-resource.js"></script>
    <script src="/Scripts/angular-ui.js"></script>
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Scripts/Card/ jquery.avgrund.js"></script>
    <title>Starter Files</title>
</head>
<body>
    <div>
        <!-- Carousel
    ================================================== -->
        <div id="myCarousel" class="carousel slide">
            <div class="carousel-inner">
                <div class="item active " style="background-color: black;">
                    <img src="/Content/images/firestorm-banner.jpg" alt="" style="width: 100%;">
                </div>
                <div class="item" style="min-height: 480px">                    
                    <iframe frameBorder="0" src="/Card/File?starter=Refess&activeCard=0" style="min-height: 485px;width:100%;"></iframe>                                            
                </div>
                <div class="item" style="min-height: 480px">                    
                    <iframe frameBorder="0" src="/Card/File?starter=Gowen&activeCard=0" style="min-height: 485px;width:100%;"></iframe>                                            
                </div>
                <div class="item">
                    <iframe frameBorder="0" src="/Card/File?starter=Lawtia&activeCard=133" style="min-height: 485px;width:100%;"></iframe>                                                                
                </div>
                <div class="item">
                    <iframe frameBorder="0" src="/Card/File?starter=Falkow&activeCard=0" style="min-height: 485px;width:100%;"></iframe>                                                                
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
        <!-- /.carousel -->

    </div>
    <script>
        //Stop autoscrolling
        //Credit: http://stackoverflow.com/questions/10521165/bootstrap-javascript-carousel-doesnt-stop-cycling
        $(function() {
            $('.myCarousel').each(function(){
                $(this).carousel({
                    interval: false
                });
            });
        });​
    </script>
</body>
</html>
