class Bottles
  def verse(number)
    first_line(number).capitalize + second_line(number)
  end

  private

  def first_line(number)
    "#{bottle_form(number)} of beer on the wall, #{bottle_form(number)} of beer. "
  end

  def second_line(number)
    if number.zero?
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    else
      "Take #{number == 1 ? 'it' : 'one'} down and pass it around, #{bottle_form(number - 1)} of beer on the wall."
    end
  end

  def bottle_form(number)
    case number
    when 0
      'no more bottles'
    when 1
      "#{number} bottle"
    else
      "#{number} bottles"
    end
  end
end
