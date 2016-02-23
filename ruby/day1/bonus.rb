# If you’re feeling the need for a little more, write a program that picks a
# random number. Let a player guess the number, telling the player whether the
# guess is too low or too high.

ans = rand(10) + 1
puts 'Make a guess between 1 and 10:'
guess = gets.to_i
puts 'Correct!' if guess == ans
puts 'Too high!' if guess > ans
puts 'Too low!' if guess < ans
puts "The answer was #{ans}" unless guess == ans
