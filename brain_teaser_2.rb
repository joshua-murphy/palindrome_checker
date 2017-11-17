require "colorize"

while true

  puts "\n===== What is your word? ===== \nMake it 'exit' if you wish to leave".yellow
  @word = gets.strip.downcase
  @word == "exit" ? exit() : "continue"

  @word_arr = (@word.split(%r{\s*}))

  def palindrome_check(num, fin)
    first_position = @word_arr[num]
    total_letters = @word_arr.length
    last_position = @word_arr[total_letters - fin]

    if first_position == last_position
      if num + 1 == total_letters
        puts "#@word is a palindrome".green
      else
        palindrome_check(num + 1, fin + 1)
      end
    else
      puts "#@word is not a palindrome".red
    end

  end

  palindrome_check(0, 1)

end