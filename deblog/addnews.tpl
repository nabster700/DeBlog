<div class="col-md-12">
    <div class="card w-100">
        <div class="card-body">
            <h5 class="card-title mb-5"><i class="icon-note mr-2 text-primary"></i>Форма Публикации</h5>

            <ul class="timeline">
                <li>
                    <div class="form-group mb-4">
                        <label for="title"> Заголовок </label>
                        <input type="text" name="title" id="title" value="{title}" class="form-control w-100" aria-label="title" required>
                    </div>
                </li>

                <li>
                    <div class="form-group">
                        <label for="category">
                            Категория
                        </label>
                        {category}
                    </div>
                </li>

                <li>
                    <div class="form-group">
                        <label for="xf_poster">Загрузить постер для публикации</label>
                        [xfinput_poster_one]
                    </div>
                </li>

                <li>
                    <div class="form-group">
                        <label for="xf_imgs">Загрузите несколько фотографий</label>
                        [xfinput_gallery]
                    </div>
                </li>
                <li>
                    <div class="form-group">
                        <label for="xf_imgs">Закрепить в информационный блок</label>
                        <br>[xfinput_panel]
                    </div>
                </li>
                <li>
                    <label for="tags">Ключевые слова</label>
                    <input type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" class="form-control w-100">
                    <small id="emailHelp" class="form-text text-white">Вводите ключевые слова через запятую. Они нужны для того чтобы ваша публикация была всегда на виду!</small>
                </li>
                <li>
                    <div class="form-group">
                        <label for="short_story">Описание</label>
                        [not-wysywyg]
                        <div class="bb-editor">
                            {bbcode}
                            <textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="8" class="wide" required>{short-story}</textarea>
                        </div>
                        [/not-wysywyg] {shortarea}
                    </div>
                </li>
                <li>
                    <div class="form-group">
                        <label for="full_story">Полное описание</label>
                        [not-wysywyg]
                        <div class="bb-editor">
                            {bbcode}
                            <textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="18" class="form-control">{full-story}</textarea>
                        </div>
                        [/not-wysywyg] {fullarea}
                    </div>
                </li>
                <li>
                    <button id="opros" class="btn btn-light mb-3" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        <i class="zmdi zmdi-sort-amount-desc text-muted" style="font-weight: bold;font-size: 16px;"></i> Добавить опрос
                    </button>
                    <div class="arrow_box mb-5 pt-2 pb-2 pr-3 pl-3">
                        <p class="f90 m-0 text-muted">Вы можете прикрепить опрос к публикации. Для этого необходимо заполнить соответстсвующие поля ниже, кликнув по кнопке.</p>
                        <div class="collapse" id="collapseExample">
                            <div class="form-group mb-3 mt-5">
                                <label for="vote_title">Заголовок опроса</label>
                                <input type="text" name="vote_title" value="{votetitle}" class="form-control">
                            </div>
                            <div class="form-group mb-3">
                                <label for="frage">Вопрос</label>
                                <input type="text" name="frage" value="{frage}" class="form-control">
                            </div>
                            <div class="form-group custom-control custom-checkbox">
                                <label for="vote_body">Список ответов</label>
                                <textarea name="vote_body" rows="5" class="form-control" placeholder="Каждая новая строка является новым вариантом ответа">{votebody}</textarea>
                                <div class="custom-control custom-checkbox">
                                    <input class="custom-control-input" type="checkbox" name="allow_m_vote" value="1" id="add_news" {allowmvote}>
                                    <label for="add_news" class="custom-control-label">Разрешить выбор нескольких вариантов</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                [group=1,2]
                <li>
                    <p>Опции администратора</p>
                    <br> {admintag}
                </li>
                [/group] [question]
                <li>
                    <label for="question_answer">{question}</label>
                    <input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="form-control w-100" required>
                    <li>
                        [/question] [sec_code]
                        <li>
                            Введите код с картинки
                            <br>
                            <div class="c-capcha">
                                {sec_code}
                                <input class="form-control" placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
                            </div>
                        </li>
                        [/sec_code]
            </ul>
            [recaptcha]
            <center>{recaptcha}</center>
            [/recaptcha]
            <button class="btn btn btn-outline-info ml-4 mt-4" type="submit" name="add"> Отправить</button>
        </div>
    </div>
</div>
