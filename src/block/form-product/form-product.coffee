$(document).ready ()->
	$('.form-product__item_1').addClass('active')
	# Ставит галочку продукту поумолчинию
	prodDefault = $('.form-product__item_1').find('[type="radio"]')
	prodDefault.attr('checked', 'checked')

	$('[type="radio"]').on 'change', ()->
		# Добавляет класс активному элементу
		$('.form-product__item').removeClass('active')
		$(this).parents('.form-product__item').addClass('active')
		if false	
			# Анимация
			tl = new TimelineMax()
			tl.to('.form-product__item.active', 0.5, { opacity: 0.6 })
			tl.to('.form-product__item.active', 1, { opacity: 1 })
			
	# Popup	
	if false
		$('.header').mouseleave ()->
			date = new Date()
			seconds = date.getSeconds()
			minutes = date.getMinutes()
			hours = date.getHours()
			popupTimeLife = seconds + minutes * 60  + hours * 60 * 60

			if popupTimeLife >= $.cookie('popup') || $.cookie('popup') == undefined || !$.cookie('popup')
				$.cookie('popup', popupTimeLife + 60)
				location.href = 'popup.html'