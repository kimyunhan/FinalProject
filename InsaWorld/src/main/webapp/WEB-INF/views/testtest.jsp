<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Outflearn</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Outflearn</title>

    <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="css/detail.css">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <div class="jumbotron" style="width: 100%">
        <div id="jumbo_row" class="row">
            <img src="images/cardpx.svg" alt="썸네일" class="col-md-3">
            <div class="col-md-6">
                <h3>[Reactjs 강좌] React.js를 이용하여 웹 애플리케이션 만들기</h3>
                <div>
                    <span>평점</span><br>
                    <span>수강생</span>
                    <p>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="2" aria-valuemin="0"
                                aria-valuemax="100" style="min-width: 2em; width: 2%;">
                                2%
                            </div>
                        </div>
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <p class="text-center"><a href="void:0" class="btn btn-success btn-lg" role="button">학습하기</a></p>
            </div>
        </div>
    </div>
    <div class="container">
        <nav class="nav">
            <ul class="nav nav-tabs">
                <li class="nav-item ">
                    <a class="nav-link" href="#">Active</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#">Disabled</a>
                </li>
            </ul>
        </nav>
    </div>

    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
    <script>
    $(document).ready(function () {
        $('.nav-tabs > li > a').on('click', function() {
            $(this).css({ 'border-bottom': '2px solid #6473ff'});
            $(this).parents().siblings().children().css({ 'border-bottom': ''});
            // $(this).addClass('boroder-left-0');
            // $(this).siblings().removeClass('border-left-0');
            
        })
    })
    
    </script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/nivo-lightbox.js"></script>
    <script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
    <script type="text/javascript" src="js/contact_me.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type = "text/javascript" src = "js/detail.js"></script>
</body>

</html>