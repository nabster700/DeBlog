<div class="col-md-4 mb-3">
   <div class="card mb-1 w-100" [online]data-toggle="tooltip" data-placement="top" title="В сети"[/online]>
   <div class="card-body p-2">
      <div class="media">
         <div class="usava">
            <a {profile_m} href="{profile}" class="stretched-link">
            <img class="rounded" style="width: 100px;" src="{foto}" class="mr-3" alt="{usertitle}">
            </a>
         </div>
         <div class="media-body ml-2">
            [online]
            <div class="spinner-grow spinner-grow-sm text-success float-right" role="status">
               <span class="sr-only"></span>
            </div>
            [/online]
            <div class="lnk">
               <h5 class="m-0 text-truncate" style="font-size: 1rem;">
                  <a {profile_m} href="{profile}">{usertitle}</a>
               </h5>
            </div>
            [fullname]
            <p class="text-muted m-0 mt-1 f90">@{fullname}</p>
            [/fullname]
            [not-fullname]
            <p class="text-muted m-0 mt-1 f90"> Не указано имя</p>
            [/not-fullname]
         </div>
      </div>
   </div>
   <div class="card-footer text-muted f90">
      <ul class="list-inline" style="margin:0px;">
         <li class="list-inline-item lnk">
            <i class="fa fa-clone" aria-hidden="true"></i> {news-num}
         </li>
         <li class="list-inline-item lnk">
            <i class="icon-bubble" aria-hidden="true"></i> {comm-num}
         </li>
      </ul>
   </div>
</div>
</div>