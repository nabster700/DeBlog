<div class="col-md-6">
<div class="card mb-4">
  <div class="card-body p-3">
    <div class="row">
        <div class="col-md-12 mb-1 poster">
            <a href="{full-link}">
              [ifxfvalue panel="Предупреждение"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-warning">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Важное"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-primary">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Выполнено"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-success">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Внимание"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-danger">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Информация"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-info">[xfvalue_panel]</span>
              </div>
              [/ifxfvalue]
				<div role="status" style="position: absolute;margin: 125px 0px 0px 10px;">
                	<span class="badge badge-light"><p class="mb-0">{category}</p></span>
              	</div>
        [xfgiven_poster_one]<img src="[xfvalue_image_url_poster_one]" class="xfieldimage poster_one" alt="{title}">[/xfgiven_poster_one]
        [xfnotgiven_poster_one]<img src="/templates/nabster/dleimages/no_image.jpg" class="xfieldimage poster_one" alt="{title}">[/xfnotgiven_poster_one]
            </a>
       </div>
        <div class="col-md-12">
		[not-group=5]
            <div class="dropdown float-right">
               <button class="text-black-50 btn btn-sm btn-light dropdown-toggle pt-1" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
               </button>
               <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2" style="font-size: 90%;">
                  [add-favorites]
                  <button class="dropdown-item" type="button">Добавить в закладки</button>
                  [/add-favorites]
                  [del-favorites]
                  <button class="dropdown-item" type="button">Удалить из закладок</button>
                  [/del-favorites]
            [group=1,2,3]
            <a class="dropdown-item" href="/admin.php?mod=editnews&action=editnews&id={news-id}" target="_blank">Редактировать</a>
            <a class="dropdown-item" onclick="ajax_prep_for_edit('{news-id}', 'full'); return false;" href="#">Быстрое редактирование</a>
            [/group]
                  [complaint]
                  <button class="dropdown-item" type="button">Пожаловаться</button>
                  [/complaint]
               </div>
            </div>
            [/not-group]           
            [fixed]
            <h4 class="h5 gss"><a href="{full-link}" class="text-dark" style="color: #f69f00 !important;"><i class="icon-energy mr-2 ffx"></i>[poll] <i class="icon-chart" aria-hidden="true"></i> [/poll]{title}</a></h4>
            [/fixed]
            [not-fixed]
            <h4 class="h5 gss"><a href="{full-link}" class="text-dark">[poll] <i class="icon-chart" aria-hidden="true"></i> [/poll]{title}</a></h4>
            [/not-fixed]
            <div class="noimg" style="color: #868588;line-height: 1.4;font-size: 94%;">{short-story limit="100"}</div>
         [edit-date]
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
    <ul class="list-inline m-0 text-muted f90 isize">
		<li class="list-inline-item auth" [online] id="online" [/online]> <i class="icon-user" aria-hidden="true"></i> {author}</li>
        <li class="list-inline-item"><i class="icon-book-open" aria-hidden="true"></i> {views}</li>
        <li class="list-inline-item"><i class="icon-bubbles" aria-hidden="true"></i> {comments-num}</li>
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
</div>
</div>
