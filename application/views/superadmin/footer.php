	<footer class="footer">
			2019 © Panel Administrativo v1.0.  <a href="<?= base_url();?>">Municipalidad Calana</a>
		</footer>

	</div> <!-- /wrapper -->


	<script type="text/javascript" src="<?= base_url();?>admin/js/prefixfree.min.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/excanvas.min.js"></script>
	
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.flot.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.flot.resize.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.flot.categories.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.flot.fillbetween.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.flot.stack.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.flot.crosshair.js"></script>

	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.hashchange.min.js"></script>
	<script type="text/javascript" src="<?= base_url();?>admin/js/jquery.easytabs.min.js"></script>

	<script type="text/javascript">

		$(window).load(function(){
			$('#loading').fadeOut(1000);

		// $(document).ready(function(){

			$('.collapsible > a').click(function(){
				$(this).parent().toggleClass('open');
				if( $(this).parent().siblings().hasClass('open') ){
					$(this).parent().siblings().removeClass('open');
				}
			return false;
			}) // Collapsible


			// -------------------------- SPARKLINE miniCHARTS -----------------------------//

			$("#stats_visits").sparkline('html',{
		        type: 'pie',
		        sliceColors: ['#499ac7','transparent'],
		        offset:-90,
		        tooltipClassname:'tooltip-sp',
		        disableHighlight:true
		    });
		    $("#stats_users").sparkline('html',{
		        type: 'pie',
		        sliceColors: ['#37343b','transparent'],
		        offset:-90,
		        tooltipClassname:'tooltip-sp',
		        disableHighlight:true 
		    });
		    $("#stats_orders").sparkline('html',{
		        type: 'pie',
		        sliceColors: ['#83a854','transparent'],
		        offset:-90,
		        tooltipClassname:'tooltip-sp',
		        disableHighlight:true
		    });



			// eTabs
			$('#eTabs').easytabs();

			// Mobile Nav
			$('.m-nav').click(function(){
				$('.main-nav').toggleClass('open');
			})

			// Quick Nav clicks
			$('.qn-arrow-left').click(function(){
				var sel = $('.quick-nav ul').find('.active');
				if( sel.hasClass('qn-first') ){
					sel.removeClass('active');
					sel.parent().find('.qn-last').addClass('active');
				} else {
					sel.removeClass('active').prev().addClass('active');
				}
			})
			$('.qn-arrow-right').click(function(){
				var sel = $('.quick-nav ul').find('.active');
				if( sel.hasClass('qn-last') ){
					sel.removeClass('active');
					sel.parent().find('.qn-first').addClass('active');
				} else {
					sel.removeClass('active').next().addClass('active');
				}
			})

			

		}) // Ready.
	</script>
</body>

<!-- Mirrored from themes-pixeden.com/demos/liberator/icons.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Apr 2016 13:45:06 GMT -->
</html>