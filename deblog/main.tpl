<!DOCTYPE html>
<html>

<head>
    {headers}
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="{THEME}/images/favicon.ico">
    <link rel="apple-touch-icon" href="{THEME}/images/touch-icon-iphone.png">
    <link rel="apple-touch-icon" sizes="76x76" href="{THEME}/images/touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="120x120" href="{THEME}/images/touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="152x152" href="{THEME}/images/touch-icon-ipad-retina.png">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <link href="{THEME}/css/ssg.css" type="text/css" rel="stylesheet">
    <link href="{THEME}/css/bootstrap.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="{THEME}/css/owl.carousel.css">
    <link rel="stylesheet" href="{THEME}/css/animate.css">
    <link rel="stylesheet" href="{THEME}/css/bbcode.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">
    <link rel="stylesheet" href="{THEME}/css/magnific-popup.css">
</head>
<script>
  $(document).ready(function() {
    $submenu = $('.child-menu-ul');
    $('.child-menu .toggle-right').on('click', function(e) {
      e.preventDefault();
      $this = $(this);
      $parent = $this.parent().next();
      // $parent.addClass('active');
      $tar = $('.child-menu-ul');
      if (!$parent.hasClass('active')) {
        $tar.removeClass('active').slideUp('fast');
        $parent.addClass('active').slideDown('fast');
      } else {
        $parent.removeClass('active').slideUp('fast');
      }
    });
  });
</script>
<body>
    {include file="modules/menu.tpl"}
    <div class="container ">
        <div class="row">
            <div class="col-lg-9 col-md-12 col-sm-12 my-4">
                [aviable=cat]
                <div class="card mb-4">
                    <a class="card-link" data-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample1">
                        <div class="card-body text-muted">
                            <i class="icon-arrow-down float-right"></i>
                            <i class="icon-info mr-2 text-primary"></i>{category-title}
                            <div class="collapse" id="collapseExample1">
                                <br> {category-description}
                            </div>
                        </div>
                    </a>
                </div>
                [/aviable] [available=main]
                <div class="card mb-4 d-none d-sm-block d-md-block d-lg-block">
                    <div class="card-body">
                        <a href="/index.php?do=lastcomments" class="float-right card-link">Вся актирвность</a>
                        <h5 class="card-title mb-4"><i class="icon-bubbles mr-2 text-muted"></i>Последняя активность</h5>
                        <div class="row row-flex row-flex-wrap">
                            {customcomments template="lastcomments_main" available="global" from="0" limit="3" order="date" sort="desc" cache="no"}
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="card mb-4">
                            <div class="card-body">

                                [sort]
                                <div class="dropdown w-100">
                                    <button class="btn btn-block btn-outline-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-sort mr-2" aria-hidden="true"></i> Сортировать по:
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        {sort}
                                    </div>
                                </div>
                                [/sort]

                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="dropdown w-100">
                                    <button class="btn btn-block btn-outline-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-info-circle" aria-hidden="true"></i> По информации:
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="/xfsearch/Выполнено/">Выполнено</a>
                                        <a class="dropdown-item" href="/xfsearch/Важное/">Важное</a>
                                        <a class="dropdown-item" href="/xfsearch/Предупреждение/">Предупреждение</a>
                                        <a class="dropdown-item" href="/xfsearch/Внимание/">Внимание</a>
                                        <a class="dropdown-item" href="/xfsearch/Информация/">Информация</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                [/available] {info} {content}
            </div>
            <div class="col-lg-3 col-md-12 col-sm-12">
                {include file="modules/sidebar.tpl"}
            </div>
        </div>
    </div>

    <footer class="footer mt-auto py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    © NABSTERS.RU 2018-2019. все права защищены.
                </div>
            </div>
        </div>
    </footer>
    {AJAX}
    <script src="{THEME}/js/jquery.magnific-popup.min.js"></script>
    <script src="{THEME}/js/owl.carousel.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script type="text/javascript" src="{THEME}/js/bootstrap.js"></script>
    <script src="https://code.iconify.design/1/1.0.3/iconify.min.js"></script>
</body>

</html>
