<div class="media comment-box">
    <div class="media-left">
        <a onclick="ShowProfile('{login}', '{login}'); return false;" href="{login}">
            <img class="img-responsive user-photo" style="width: 50px;height: 50px;object-fit: cover;border-radius: 4px;" src="{foto}">
        </a>
    </div>
    <div class="media-body">
        <div class="media-heading">

            <div class="btn-group float-right" role="group">
                [reply]
                <button type="button" class="btn btn-sm btn-light" style="color: #999;padding: 1px 6px 1px 6px;margin: -1px 3px 0 0;" data-placement="left" data-toggle="tooltip" title="Ответить"><i class="fa fa-reply" aria-hidden="true"></i></button>
                [/reply] [not-group=5]
                <div class="dropdown float-right">
                    <button class="btn btn-light btn-sm dropdown-toggle" style="color: #AAB2BD;padding: 1px 8px 1px 8px;margin: -1px 3px 0 0;" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
                        [com-edit]
                        <button type="button" class="dropdown-item"><i class="fa fa-cogs" aria-hidden="true"></i> Изменить</button>
                        [/com-edit] [com-del]
                        <button type="button" class="dropdown-item"><i class="fa fa-trash" aria-hidden="true"></i> Удалить</button>
                        [/com-del] [complaint]
                        <button type="button" class="dropdown-item"><i class="fa fa-times-circle" aria-hidden="true"></i> Жалоба</button>
                        [/complaint]
                    </div>
                </div>
                [/not-group]
            </div>

            [rating] [rating-type-2]
            <div class="rate_like" title="Мне нравится">
                [rating-plus]
                <button class="btn btn-sm btn-outline-info float-right" style="margin: 0px 3px 0 0;padding: 1px 6px 1px 6px;" data-placement="left" data-toggle="tooltip" title="Мне нравится"><span class="fa fa-thumbs-o-up"></span> {rating}
                </button>
                [/rating-plus]
            </div>
            [/rating-type-2] [/rating]

            <ul class="list-inline mb-0">
                <li class="list-inline-item auth" [online] id="online" [/online]>{author}</li>
                <li class="list-inline-item f90 text-muted">{date}</li>
                <li class="list-inline-item"> [childrencomments] <span class="badge badge-pill badge-light"><i class="fa fa-reply-all" aria-hidden="true"></i> Ответ</span> [/childrencomments]</li>

            </ul>
        </div>
        <div class="coma">
            {comment} [signature]
            <div class="mt-2 arrow_box f90 p-1" style="color: #898b96;">{signature}</div>
            [/signature]
        </div>

    </div>
</div>