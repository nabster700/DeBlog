<div class="card my-4">
  <div class="card">
  <div class="card-header">{title}</div>
  <div class="card-body">
    [votelist]
		<form method="post" name="vote">
	[/votelist]
		<div class="vote_list">
			{list}
		</div>
  </div>
  <div class="card-footer">
	[votelist]
	<input type="hidden" name="vote_action" value="vote">
	<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
	<button title="Голосовать" class="btn btn-outline-primary btn-sm btn-block" type="submit" onclick="doVote('vote'); return false;" >Голосовать</button>
	<button title="Результаты опроса" class="btn btn-outline-primary btn-sm btn-block" type="button" onclick="doVote('results'); return false;" >Результаты</button>
	[/votelist] 
  </div>
  </div>
</div>