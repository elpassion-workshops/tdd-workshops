class Bottles
  def verse number
    "#{first_line(number)}
#{last_line(number - 1)}"
  end

  private

  def format bottle
    case bottle
      when 1 then "#{bottle} bottle"
      else "#{bottle} bottles"
    end
  end

  def first_line number
    case
      when number == 0
        'No more bottles of beer on the wall, no more bottles of beer.'
      when number > 0
        "#{format(number)} of beer on the wall, #{format(number)} of beer."
      else
        'Invalid params for first line'
    end
  end

  def last_line number
    case
      when number == 0
        'Take it down and pass it around, no more bottles of beer on the wall.'
      when number == -1
        'Go to the store and buy some more, 99 bottles of beer on the wall.'
      when number > 0
        "Take one down and pass it around, #{format(number)} of beer on the wall."
      else
        "Invalid params for last line"
    end
  end
end