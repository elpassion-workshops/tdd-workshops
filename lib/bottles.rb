class Bottles

  def verse num_of_bottles
    case num_of_bottles
    when 0
      'No more bottles of beer on the wall, no more bottles of beer. '\
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    when 1
      '1 bottle of beer on the wall, 1 bottle of beer. '\
      'Take it down and pass it around, no more bottles of beer on the wall.'    
    else
      "#{num_of_bottles} #{pluralize(num_of_bottles, 'bottle')} of beer on the wall, #{num_of_bottles} #{pluralize(num_of_bottles, 'bottle')} of beer. "\
      "Take one down and pass it around, #{num_of_bottles - 1} #{pluralize(num_of_bottles - 1, 'bottle')} of beer on the wall."  
    end
  end

  def pluralize quantity, name
    quantity > 1 ? "#{name}s" : "#{name}"
  end
end