$(document).ready ()->
	$('.form-product__item_1').addClass('active')
	# Ставит галочку продукту поумолчинию
	prodDefault = $('.form-product__item_1').find('[type="radio"]')
	prodDefault.attr('checked', 'checked')

	$('[type="radio"]').on 'change', ()->
		# Добавляет класс активному элементу
		$('.form-product__item').removeClass('active')
		$(this).parents('.form-product__item').addClass('active')