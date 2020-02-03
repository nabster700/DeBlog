<div class="col-md-12">
    <div class="card mb-3">
    <div class="card-body">
        <h5 class="card-title mb-4">Обратная связь</h5> [not-logged]
        <div class="row mb-3">
            <div class="col-md-6">
                <input placeholder="Ваше имя" type="text" maxlength="35" name="name" id="name" class="form-control" required>
            </div>
            <div class="col-md-6">
                <input placeholder="Ваш E-mail" type="email" maxlength="35" name="email" id="email" class="form-control" required>
            </div>
        </div>
        [/not-logged]
        <label class="mb-3"><span class="mr-3">Получатель </span> {recipient}</label>
        <div class="form-group mb-3">
            <input placeholder="Тема сообщения" type="text" maxlength="45" name="subject" id="subject" class="form-control" required>
        </div>
        <div class="form-group mb-3">
            <textarea placeholder="Сообщение" name="message" id="message" rows="8" class="form-control" required></textarea>
        </div>
        [attachments]
        <div class="form-group m-0 mb-3 file">
            <label for="attachments[]" class="float-right">Прикрепить файлы</label>
            <input name="attachments[]" type="file" multiple>
        </div>
        [/attachments] [recaptcha]
        <div>{recaptcha}</div>
        [/recaptcha] [question]
        <div class="form-group mb-3">
            <label for="question_answer">Вопрос: {question}</label>
            <input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
        </div>
        [/question] [sec_code]
        <div class="c-capcha mb-3">
            {code}
            <input placeholder="Повторите код" class="form-control" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
        </div>
        [/sec_code]
        <button class="btn btn-primary" type="submit" name="send_btn">Отправить</button>
    </div>
</div>
</div>
