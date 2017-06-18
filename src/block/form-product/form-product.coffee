$(document).ready ()->
	$('.form-product__item_1').addClass('active')
	# Ставит галочку продукту поумолчинию
	prodDefault = $('.form-product__item_1').find('[type="radio"]')
	prodDefault.attr('checked', 'checked')

	$('[type="radio"]').on 'change', ()->
		# Добавляет класс активному элементу
		$('.form-product__item').removeClass('active')
		$(this).parents('.form-product__item').addClass('active')
			


	window.arrMove = []
	$('body').on "mousemove", (event) => 
			# Добавляет в массив позицию на которой находится мышь
			window.arrMove.unshift(event.pageY)
			# Оставляет в массиве последние 30 позиций
			window.arrMove.splice(30, 1)

	# Popup	
	$('.header').mouseleave ()->

		activePopup = $(this).hasClass('active-popup')

		if window.arrMove[0] <= window.arrMove[5] <= window.arrMove[10]
			mouseUp = true

		if !activePopup && mouseUp
			$('.popup').addClass('active')
			$(this).addClass('active-popup')