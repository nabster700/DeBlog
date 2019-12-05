<div class="card bg-light mt-3">
  <div class="card-body">
    <h5 class="card-title">{question}</h5>
    [voted]
		<div class="float-right">Всего голосов: {votes}</div>
	[/voted]
    <div class="vote_list">
		{list}
	</div>
  </div>
  [not-voted]
  <div class="card-footer">
  	<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
  		<div class="btn-group mr-2" role="group" aria-label="Basic example">
  			<button type="submit" class="btn btn-sm btn-info" title="Голосовать" onclick="doPoll('vote', '{news-id}'); return false;">Голосовать</button>
		</div>
		<div class="btn-group mr-2" role="group" aria-label="Basic example">
  			<button type="button" class="btn btn-sm btn-secondary" title="Результаты" onclick="doPoll('results', '{news-id}'); return false;">Результаты</button>
		</div>
	</div>
  </div>
  [/not-voted]
</div>

