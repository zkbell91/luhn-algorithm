module Luhn
  def self.is_valid?(number)
    digits = number.to_s.chars.map(&:to_i)
    reorder = digits.reverse
    double_even = reorder.map.with_index{|v,i| i % 2 == 0 ? v : v * 2 }
    double_even.map! { |digit|
      if(digit >= 10)
        digit - 9
      else
        digit
      end
      }
    total = double_even.sum
    if total % 10 == 0 
      return true
    else 
      return false
    end
  end
end