[not-group=5]
<div class="card my-4">
    <div class="card-body">

        <div class="media">
            <img src="{foto}" class="lfoto mr-3" alt="{login}">
            <div class="media-body">
                <h5 class="mt-0" style="font-size: 17px;">Здравствуйте!</h5>
                <p class="text-muted m-0">{login}</p>
            </div>
        </div>
[group=1,2,3]
        <hr>
        <center class="mb-3 mt-4"><a href="/addnews.html" class="gradient-button px-3 py-2">+ Добавить</a></center>
[/group]
    </div>
    <div class="list-group list-group-flush">
        [admin-link]<a target="_blink" href="{admin-link}" class="list-group-item list-group-item-action"><i class="icon-ghost mr-2"></i>Админка</a>[/admin-link]
        <a href="{profile-link}" class="list-group-item list-group-item-action"><i class="icon-user mr-2"></i>Мой профиль</a>
        <a href="{favorites-link}" class="list-group-item list-group-item-action"><i class="icon-star mr-2"></i>Мои закладки</a>
        <a href="{pm-link}" class="list-group-item list-group-item-action"><i class="icon-speech mr-2"></i>Мои сообщения</a>
        <!-- <a href="/index.php?do=lastcomments&userid={userid}" class="list-group-item list-group-item-action"><i class="icon-bubbles mr-2"></i>Мои комментарии</a> -->
        <a href="{logout-link}" class="list-group-item list-group-item-action text-muted"><i class="icon-close mr-2"></i>Выйти</a>
    </div>
</div>
[/not-group] [group=5]

<div class="card my-4">
    <div class="card-body">

        <form class=" py-3" role="form" method="post" action="">
            <div class="form-group">
                <input class="form-control" style="width: 100%;" type="text" id="inputEmail" name="login_name" placeholder="Логин" />
            </div>
            <div class="form-group">
                <input class="form-control" style="width: 100%;" type="password" id="inputPassword" name="login_password" placeholder="Пароль" />
            </div>
            <center class="mb-3">или</center>
            <ul class="social-btns center-block p-0 mb-3 text-center">
                [vk]
                <li><a href="{vk_url}" class="btn btn-facebook"> Вконтакте</a></li>[/vk] [google]
                <li><a href="{google_url}" class="btn btn-google"> Google.com</a></li>[/google]
            </ul>

            <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" value="1" name="login_not_save" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Чужой компьютер</label>
            </div>

            <button type="submit" class="btn btn-outline-primary btn-block"> Войти</button>
            <input class="form-control" name="login" type="hidden" id="login" value="submit" />
        </form>
        <a class="btn btn-outline-success btn-block" href="{registration-link}">регистрация</a>
        <a class="btn btn-outline-danger btn-block" href="{lostpassword-link}">Я забыл свой пароль</a>
    </div>
</div>
[/group]
