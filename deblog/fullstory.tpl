<script>
    $(document).ready(function() {
        $('.owl-carousel').owlCarousel({
            loop: false,
            margin: 8,
            autoplay: 3000,
            responsiveClass: true,
            dots: false,

            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                360: {
                    items: 1,
                    nav: false
                },
                600: {
                    items: 2,
                    nav: false
                },
                1000: {
                    items: 3,
                    nav: false,
                    loop: false
                }
            }
        })
    });
</script>
<script>
    jQuery(document).ready(function($) {
        $('#gallery').magnificPopup({
            delegate: 'a',
            type: 'image',
            tLoading: '...',
            gallery: {
                enabled: true,
                navigateByImgClick: true,
                preload: [0, 1]
            }
        });
        if (!$('#gallery').find('div.item').length) {
            $('#ggwp').hide();
        }
    });
</script>
<div class="col-md-12">
   <div class="card mb-4 w-100">
    <div class="card-body">

        [not-group=5]
        <div class="dropdown float-right">
            <button class="text-black-50 btn btn-sm btn-light dropdown-toggle pt-1" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
            </button>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2" style="font-size: 90%;">
                [add-favorites]
                <button class="dropdown-item" type="button">Добавить в закладки</button>
                [/add-favorites] [del-favorites]
                <button class="dropdown-item" type="button">Удалить из закладок</button>
                [/del-favorites] [group=1,2,3]
                <a class="dropdown-item" href="/admin.php?mod=editnews&action=editnews&id={news-id}" target="_blank">Редактировать</a>
                <a class="dropdown-item" onclick="ajax_prep_for_edit('{news-id}', 'full'); return false;" href="#">Быстрое редактирование</a> [/group] [complaint]
                <button class="dropdown-item" type="button">Пожаловаться</button>
                [/complaint]
            </div>
        </div>
        [/not-group]

        <h4 class="h5 gss mb-4">[fixed]<i class="icon-energy mr-2 ffx"></i>[/fixed]{title}</h4>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 order-lg-last order-md-first order-sm-first w-100">
              [ifxfvalue panel="Предупреждение"]
              <div role="status" style="position: absolute;margin: 20px 0px 0px 20px;">
                <span class="badge badge-warning"><h2 class="mb-0 title">[xfvalue_panel]</h2></span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Важное"]
              <div role="status" style="position: absolute;margin: 20px 0px 0px 20px;">
                <span class="badge badge-primary"><h2 class="mb-0 title">[xfvalue_panel]</h2></span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Выполнено"]
              <div role="status" style="position: absolute;margin: 20px 0px 0px 20px;">
                <span class="badge badge-success"><h2 class="mb-0 title">[xfvalue_panel]</h2></span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Внимание"]
              <div role="status" style="position: absolute;margin: 20px 0px 0px 20px;">
                <span class="badge badge-danger"><h2 class="mb-0 title">[xfvalue_panel]</h2></span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Информация"]
              <div role="status" style="position: absolute;margin: 20px 0px 0px 20px;">
                <span class="badge badge-info"><h2 class="mb-0 title">[xfvalue_panel]</h2></span>
              </div>
              [/ifxfvalue]
				<div role="status" style="position: absolute;margin: 110px 0px 0px 20px;">
                	<span class="badge badge-light"><h2 class="mb-0 title">{category}</h2></span>
              	</div>
        [xfgiven_poster_one]<img src="[xfvalue_image_url_poster_one]" class="xfieldimage poster_one mb-3" alt="{title}">[/xfgiven_poster_one]
        [xfnotgiven_poster_one]<img src="{THEME}/dleimages/no_image.jpg" class="xfieldimage poster_one mb-3" alt="{title}">[/xfnotgiven_poster_one]
                <p>{full-story}[pages]
                    <br>{pages}[/pages] [poll]{poll}[/poll]</p>
                [xfgiven_gallery]
                <div class="card-footer px-0 mt-3">
                <h5 class="card-title">Галерея</h5>
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-content" id="ggwp">
                            <div class="owl-carousel owl-theme xfieldimagegallery skrinshoty" id="gallery">
                                {gallery}
                            </div>
                        </div>
                    </div>
                </div> </div>
                [/xfgiven_gallery]
				<div class="card-footer px-0 mt-3" id="files">
                    <h5 class="card-title">Файлы</h5>
					<div class="row px-3">
                        {include file="engine/modules/attachments.php?news_id={news-id}"}
					</div>
				</div>
         [edit-date]
            <hr>
			<div class="card mt-2">
            <a class="card-link alert alert-warning p-1" data-toggle="collapse" href="#editnews" role="button" aria-expanded="false" aria-controls="editnews">
            <div class="text-muted">
              [edit-reason]<i class="icon-arrow-down float-right mt-1"></i>[/edit-reason]
              <span class="iconify mb-1 mr-1 text-warning" data-icon="simple-line-icons:info" data-inline="false"></span>Новость отредактировал: <b>{editor}</b> - {edit-date}
              [edit-reason]
                <div class="collapse px-4 py-2" id="editnews">
				Причина: <i>{edit-reason}</i>
              </div>
              [/edit-reason]  
            </div>
             </a>
          	</div>
         [/edit-date]
            </div>
        </div>

    </div>
    <div class="card-footer">

        <ul class="list-inline m-0 text-muted f90">
			<li class="list-inline-item auth" [online] id="online" [/online]> <i class="icon-user" aria-hidden="true"></i> {author}</li>
            <li class="list-inline-item isize"><i class="icon-book-open" aria-hidden="true"></i> {views}</li>
            <li class="list-inline-item isize"><i class="icon-bubbles" aria-hidden="true"></i> {comments-num}</li>
            <li class="list-inline-item isize d-none d-sm-inline"><i class="icon-clock" aria-hidden="true"></i> {date=d.m.Y}</li>
            <li class="list-inline-item float-right">
                [rating] [rating-type-2]
                <a href="#" onclick="doRate('plus', '{news-id}'); return false;">
 					<button class="btn btn-sm btn-outline-info float-right mr-0" style="margin: 0px 3px 0 0;padding: 1px 6px 1px 6px;" data-placement="left" data-toggle="tooltip" title="Мне нравится">
						<span class="fa fa-thumbs-o-up"></span>
						<span id="news-{news-id}" class="ignore-select">
						<span class="ratingtypeplus ignore-select">
                        {rating}
						</span></span>
					</button></a>
                [/rating-type-2] [/rating]
            </li>
        </ul>
    </div>
</div></div>
[related-news]
    {related-news}
[/related-news]
<div class="col-md-12">
<div class="card w-100">
    <div class="card-body">
        [not-comments]
        <p class="text-muted"><i class="icon-close mr-2 text-danger"></i> Нет комментариев. </p>
        {comments} {navigation} [/not-comments] [comments] {comments} {navigation} [/comments] {addcomments}
    </div>
</div>
</div>
