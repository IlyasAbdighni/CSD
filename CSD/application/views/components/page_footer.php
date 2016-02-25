
<!--footer start here-->
<div class="strip"> </div>

<div class="footer-container clearfix">
    <div class="footer-grids clearfix">
        <div class="footer one clearfix">
            <h3>About Group</h3>
            <p> We are a group of four students of University of Camerino (UniCam) studying master in Computer Science and more specifically in Enterprise Software Systems. We undertook this project to accomplish the subject Complex System Design of professor Flavio Corradini. We hope that this project will fulfill all our expectations and will be a helpful advisor for all students that want to study abroad.
            .</p>
            <p class="adam">- Patrick Victoria, CEO</p>
            <div class="clear"></div>
        </div>
        <div class="footer two clearfix">
            <h3>WEBSITE LINKS</h3>
            <?php echo show_menu(); ?>
        </div>
        <div class="footer three clearfix">
            <h3>Contact Information</h3>
            <ul>
                <li>The company name <span>Lorem ipsum dolor,</span>Glasglow Dr 40 Fe 72.  </li>
                <li>1234567890  </li>
                <li><a href="mailto:info@example.com">udunig@hotmail.com</a> </li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
    <div class="copy-right-grids clearfix">
        <div class="copy-left">
                <p class="footer-gd">© 29/02/2016 Complex System Design Class Project by <a href="https://w3layouts.com/" target="_blank">Keep it simple GROUP</a></p>
        </div>

        <div class="clear"></div>
    </div>
</div>

<script>
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
</body>
</html>
