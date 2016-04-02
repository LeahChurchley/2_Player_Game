@scores = [3, 3]

@active_player = 1

def math_game
  while @scores[0] > 0 && @scores[1] > 0
    num_1 = (1..20).to_a.sample
    num_2 = (1..20).to_a.sample
    
    puts "Player #{@active_player}: What is #{num_1} + #{num_2}?"
    player_answer = gets.chomp.to_i
    if player_answer == num_1 + num_2
      puts "That is correct!"
    else
      @scores[@active_player - 1] -= 1
      puts "Wrong! Player One's score is: #{@scores[0]}. Player Two's score is #{@scores[1]}."
    end

    if @active_player == 1
      @active_player = 2
    elsif @active_player == 2
      @active_player = 1
    end
  end
  puts "Game over man! Game over!"
end

puts math_game
