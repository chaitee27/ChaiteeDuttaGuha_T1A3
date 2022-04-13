
require 'colorize'
require 'display'

class Hangman

    def initialize
      @word = words.sample
      @lives = 10
      @word_teaser = ""
  
      @word.first.size.times do
        @word_teaser += "_ "
      end
    end
  
    def words
      [
      
       ["Venus","Which planet is the hottest in the solar system?"],
       ["Sinestro","Who is Green Lantern nemesis?"],
       ["Germany", "Which European nation was said to invent hot dogs?"],
       ["Italy" , "Which country is responsible for giving us pizza and pasta?"],
       ["Nile","What is the name of the world longest river?"],
       ["Rolex","Which watch company has a pointed crown as its logo?"],
       ["cricket", "A game played by gentlemen"],
       ["Horse" , "Which animal can be seen on the Porsche logo ?"],
       ["Chickpeas", "What is the primary ingredient in hummus ?"],
       ["Skin", "What is your body largest organ?"],
       ["Vatican City", "What is the smallest country in the world?"],
       ["Agra", "Which city in India would you find the Taj Mahal in?"],
      ]
    end
  
    def print_teaser last_guess = nil
      update_teaser(last_guess) unless last_guess.nil?
      puts @word_teaser..colorize(:red)
    end
  
    def update_teaser last_guess
      new_teaser = @word_teaser.split
  
      new_teaser.each_with_index do |letter, index|

        # replace blank values with guessed letter if matches letter in word

        if letter == '_' && @word.first[index] == last_guess
          new_teaser[index] = last_guess
        end
      end
  
      @word_teaser = new_teaser.join(' ')
    end
  
    def make_guess
      if @lives > 0
        puts "Enter a letter"..colorize(:green)
        guess = gets.chomp
  
        good_guess = @word.first.include? guess
  
        if guess == "exit"
          puts "Thank you for playing!".colorize(:blue)
          
        #if guess is longer than 1 letter
        elsif guess.length > 1
          puts "only guess 1 letter at a time please!".colorize(:gray)
            make_guess
          
        elsif good_guess
          puts "You are correct!".colorize(:yellow)
  
          print_teaser guess
  
          if @word.first == @word_teaser.split.join
            puts "Congratulations... you have won this round!"colorize(:red)
          else
            make_guess
          end
        else
          @lives -= 1
          puts "Sorry... you have #{ @lives } lives left. Try again!".colorize(:green)
          make_guess
        end
      else
        puts "Game over... better luck next time!".colocolorize(:blue)
      end
    end
  
    def begin
      # ask user for a letter
      puts "New game started... your word is #{ @word.first.size } characters long"colorize(:white)
      puts "To exit game at any point type 'exit'"colorize(:red)
      print_teaser
  
      puts "Clue: #{ @word.last }"colorize(:white)
  
      make_guess
    end
  
  end
  
  game = Hangman.new
  game.begin