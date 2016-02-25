var Actors = {
    init: function( config ) {
        this.config = config;
        this.bindEvents();
    },

    bindEvents: function() {
        this.config.lettersSelection.on('change', this.fetchActors )
    },

    fetchActors: function() {
        var self = Actors;
        // console.log(self.config.form.serialize()); return;
        $.ajax({
            url: "index.php",
            type: "POST",
            data: self.config.form.serialize(),
            dataType: "json",
            success: function(results) {
                    console.log("finished");
                    console.log(results[0].first_name);
            }
        });
    },

}

Actors.init({
    lettersSelection: $("#q"),
    form: $("#actor-selection"),
    actorListTemplate: $("#actor_list_template").html()
});
