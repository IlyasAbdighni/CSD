<?php include '_partials/header.php'; ?>

<h1>Search Actors By Last Name: <small></small></h1>

<form id="actor-selection" class="form-group col-md-1" action="index.php" method="post">
  <label for="q"></label>
  <select class="form-control" name="q" id="q">
      <?php
        $alphabet = str_split("qwertyuioplkjhgfdsazxcvbnm");
        foreach ($alphabet as $letter ) {
            echo "<option value='$letter'>$letter</option>";
        }

       ?>
  </select>
  <input type="submit" name="name" value="GO!">
</form>
<div class="clearfix col-md-12">
    <?php if (isset($actors)): ?>
    <ul class="actors_list">
        <?php foreach ($actors as $a ) {
            echo "<li data-actor_id='{$a->actor_id}'><a href='actor.php?actor_id={$a->actor_id}'>{$a->first_name}  {$a->last_name}</a></li>";
        } ?>

        <script type="text/javascript" id="actor_list_template">
            {{#each this}}
            <li>
                <a href="actor.php?actor_id={{actor_id}}">{{fullName this}}</a>
            </li>
            {{/each}}

        </script>
    </ul>
    <? endif; ?>
</div>



<?php include '_partials/footer.php'; ?>
