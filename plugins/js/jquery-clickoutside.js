//_Para agregar el evento CLICKOUTSIDE
(function(jQuery){
	jQuery.fn.clickoutside = function(callback) {
		var outside = 1, self = jQuery(this);
		self.cb = callback;
		this.click(function() {
			outside = 0;
		});
		jQuery(document).click(function() {
			outside && self.cb();
			outside = 1;
		});
		return jQuery(this);
	}
})(jQuery);