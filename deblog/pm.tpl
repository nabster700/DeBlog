<div class="card mb-3 w-100">
    <div class="card-body">
        <div class="row mb-5">
            <div class="col-md-4">
                <div class="sticky-top">
                    <div class="card border border-secondary mb-3">
                        <div class="card-header">Сообщения</div>
                        <ul class="list-group list-group-flush">
                            [inbox]<i class="icon-action-redo mr-2 text-success"></i>Входящие[/inbox] [outbox]
                            <i class="icon-action-undo mr-2 text-dark"></i>Отправленные[/outbox] [new_pm]
                            <i class="icon-note mr-2 text-info"></i>Создать сообщение[/new_pm]
                        </ul>
                    </div>
                    <center class="text-muted">Ящик заполнен на: {proc-pm-limit}%</center>
                    <div class="progress mt-3">
                        <div class="progress-bar" role="progressbar" style="width: {proc-pm-limit}%;" aria-valuenow="{proc-pm-limit}" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                [pmlist]

                <div class="pmlist">
                    {pmlist}
                </div>
                [/pmlist] [newpm]
                <h4>Создать сообщение</h4>
                <div class="form-group mb-3">
                    <input placeholder="Имя адресата" type="text" name="name" value="{author}" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <input placeholder="Тема сообщения" type="text" name="subj" value="{subj}" class="form-control" required>
                </div>
                {editor}
                <div class="custom-control custom-checkbox mt-3">
                    <input type="checkbox" class="custom-control-input" id="outboxcopy" name="outboxcopy" value="1">
                    <label class="custom-control-label" for="outboxcopy">Сохранить сообщение в папке "Отправленные"</label>
                </div>
                [recaptcha]
                <div class="mb-3">{recaptcha}</div>
                [/recaptcha] [question]
                <div class="form-group mb-3">
                    <label for="question_answer">Вопрос: {question}</label>
                    <input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
                </div>
                [/question] [sec_code]
                <div class="c-capcha mb-3">
                    {sec_code}
                    <input placeholder="Повторите код" title="Введите код указанный на картинке" class="form-control" type="text" name="sec_code" id="sec_code" required>
                </div>
                [/sec_code]
                <br>
                <button class="btn btn-outline-primary" type="submit" name="add">Отправить</button>
                <button class="btn btn-outline-secondary" type="button" onclick="dlePMPreview()">Предпросмотр</button>
                [/newpm] [readpm]

                <div class="card bg-light border border-light">
                    <div class="card-header">
                        <div class="dropdown">
                            <button class="btn btn-sm btn-light dropdown-toggle float-right" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-ellipsis-h text-muted"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
                                [ignore]
                                <button class="dropdown-item" type="button">Игнорировать</button>[/ignore] [complaint]
                                <button class="dropdown-item" type="button">Жалоба</button>[/complaint] [del]
                                <button class="dropdown-item" type="button">Удалить</button>[/del]
                            </div>
                        </div>
                        <ul class="list-inline m-0">
                            <li class="list-inline-item auth"><img class="commfoto" src="{foto}"></li>
                            <li class="list-inline-item auth" [online] id="online" [/online]>{author}</li>
                            <li class="list-inline-item">{date}</li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">{subj}</h5>
                        <p class="card-text">{text}</p>
                        [signature]
                        <hr />
                        <div class="text-muted">{signature}</div>[/signature] [reply]

                        <button class="btn btn-sm btn-outline-secondary float-right" type="button"><i class="icon-action-redo
 mr-2"></i>Ответить</button>[/reply]
                    </div>
                </div>
                [/readpm]

            </div>
        </div>

    </div>
</div>