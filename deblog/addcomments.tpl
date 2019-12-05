[not-logged]
<style>
    #dle-comments-form {
        pointer-events: none!important;
        opacity: 0.7!important;
    }
</style>
[/not-logged]

<h5 class="mb-3">Добавить комментарий</h5>

[not-logged]
<div class="err mb-3" role="alert">
    Для того, что бы оставить свой комментарий, пройдите Регистрацию.
    <br>Для быстрого входа воспользуйтесь соц. сетями.
</div>
[/not-logged]

<div>{editor}</div>

[recaptcha]
<div>{recaptcha}</div>
[/recaptcha]

[question]
<label for="question_answer">{question}</label>
<input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
[/question]

[sec_code]
<div class="c-capcha mt-2">
    {sec_code}
    <input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" class="form-control" required>
</div>
[/sec_code]

<button class="btn btn-outline-info mt-2" type="submit" name="submit" title="Отправить комментарий">Отправить</button>