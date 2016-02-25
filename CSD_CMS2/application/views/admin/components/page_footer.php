
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
<script>
    $(function () {

        //bootstrap WYSIHTML5 - text editor
        $(".textarea").wysihtml5({
            toolbar: {
                "font-styles": true
                ,"emphasis": true
                ,"lists": true
                ,"html": true
                ,"link": false
                ,"image": false
                ,"color": false
                ,"blockquote": false
                ,"outdent": false
                ,"indent": false
                ,"size": 'sm'
                ,"fa": true
            }
        });
    });
</script>
</body>
</html>