$(document).ready ()->
	$('.form-product__item_1').addClass('active')
	# Ставит галочку продукту поумолчинию
	prodDefault = $('.form-product__item_1').find('[type="radio"]')
	prodDefault.attr('checked', 'checked')

	$('[type="radio"]').on 'change', ()->
		# Добавляет класс активному элементу
		$('.form-product__item').removeClass('active')
		$(this).parents('.form-product__item').addClass('active')
		# Анимация
		tl = new TimelineMax()
		tl.to('.form-product__item.active', 0.5, { opacity: 0.6 })
		tl.to('.form-product__item.active', 1, { opacity: 1 })

	$('.header').mouseleave ()->
		if !$('.wrapper.home').hasClass('popup-true')
			height = $(window).height()
			width = $(window).width()
			$('.wrapper.home').addClass('popup-true')
			window.open('popup.html', 'hello', 'width=' + width + ',height=' + height)
