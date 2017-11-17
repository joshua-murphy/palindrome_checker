require "colorize"

puts "\nWhat is your word?".yellow
@word = gets.strip.downcase

@word_arr = (@word.split(%r{\s*}))

def palindrome_check(num, fin)
  first_position = @word_arr[num]
  total_letters = @word_arr.length
  last_position = @word_arr[total_letters - fin]

  if first_position == last_position
    if num + 1 == total_letters
      puts "#@word is a palindrome".yellow
    else
      palindrome_check(num + 1, fin + 1)
    end
  else
    puts "#@word is not a palindrome".yellow
  end

end

palindrome_check(0, 1)
