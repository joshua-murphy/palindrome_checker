puts "What is your word?"
word = gets.strip.downcase

@word_arr = (word.split(%r{\s*}))

def palindrome_check(num, fin)
  first_position = @word_arr[num]
  total_letters = @word_arr.length
  last_position = @word_arr[total_letters - fin]

  if first_position == last_position
    if num + 1 == total_letters
      puts "Palindrome"
    else
      palindrome_check(num + 1, fin + 1)
    end
  else
    puts "Not a palindrome"
  end

end

palindrome_check(0, 1)
