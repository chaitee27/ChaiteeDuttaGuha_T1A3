
require 'colorize'
require_relative 'display'


class Hangman

    def initialize
      @word = words.sample
      @lives = 10
      @word_teaser = ""
  
      @word.first.size.times do
      @word_teaser += "_ "
      @display = Display.new

      end
    end
  # create a array with words with clue.
    def words
      [
      
       ["Venus","Which planet is the hottest in the solar system?"],
       ["Sinestro","Who is Green Lantern nemesis?"],
       ["Germany", "Which European nation was said to invent hot dogs?"],
       ["Italy" , "Which country is responsible for giving us pizza and pasta?"],
       ["The-Nile","What is the name of the world longest river?"],
       ["Rolex","Which watch company has a pointed crown as its logo?"],
       ["Cricket", "A game played by bat and ball"],
       ["Horse" , "Which animal can be seen on the Porsche logo ?"],
       ["Chickpeas", "What is the primary ingredient in hummus ?"],
       ["Skin", "What is your body largest organ?"],
       ["Vatican City", "What is the smallest country in the world?"],
       ["Agra-City", "Which city in India would you find the Taj Mahal in?"],
      ]
    end

   # Build path and read ascii text file

    def render_ascii_art
      File.readlines("ascii.txt") do |line|
        puts line
      end
    end

    def print_teaser last_guess = nil
      update_teaser(last_guess) unless last_guess.nil?
      puts @word_teaser.red
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
        puts "Enter a letter".green
        guess = gets.chomp
  
        good_guess = @word.first.include? guess
  
        if guess == "exit"
          puts ascii.img 'game_over.txt'
          puts "Thank you for playing!".blue
          
        #if guess is longer than 1 letter
        elsif guess.length > 1
          puts "only guess 1 letter at a time please!".red
            make_guess
          
        elsif good_guess
          puts "You are correct!".yellow
  
          print_teaser guess
  
          if @word.first == @word_teaser.split.join
            puts "Congratulations... you have won this round!".blue
          else
            make_guess
          end
        else
          @lives -= 1
          @display.hanged_man(@lives)
          puts "Sorry... you have #{ @lives } lives left. Try again!".white

          make_guess
        end
      else
        puts "Game over... better luck next time!".light_blue
      end
    end
  

    # define a second method so this one will be called to begin the game to start the game
    def begin
      # ask user for a letter

      puts "New game started... your word is #{ @word.first.size } characters long".white
      puts "To exit game at any point type 'exit'".red
      
      print_teaser
  
      puts "Clue: #{ @word.last }".blue
  
      make_guess
    end
  
  end
  

  game = Hangman.new
  game.begin