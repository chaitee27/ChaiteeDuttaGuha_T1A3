require 'colorize'

class Display

  def initialize()
  end

  def game_rules
    print %Q(
        Welcome to Hangman!
        To win, you need to guess the mystery word or you die.
        You can have up to 8 incorrect guesses, before you're hanged.
        Let's begin!
    ).light_blue
  end

  def winner
    print %Q(
        You've guessed the word correctly. You are a winner!
    ).green
  end

  def loser
    print %Q(
        You have run out of lives. You're dead!
        You're a loser.
        The game is over.
    ).white
  end

  def guess_letter
    print %Q(
        Guess a letter
        >
    ).red
  end

  def play_again
    print %Q(
      Guess a letter
      >
    ).yellow
  end

  def hanged_man(lives)
    case lives
    when 7
      print %Q(
      +-----+
            |
            |
            |
            |
            |
      =======).blue
    when 6
      print %Q(
      +-----+
      |     |
            |
            |
            |
            |
      =======).green
    when 5
      print %Q(
      +-----+
      |     |
      0     |
            |
            |
            |
      =======).white
    when 4
      print %Q(
      +-----+
      |     |
      0     |
      |     |
            |
            |
      =======).red
    when 3
      print %Q(
      +-----+
      |     |
      0     |
     /|     |
            |
            |
      =======).blue
    when 2
      print %Q(
      +-----+
      |     |
      0     |
     /|\\   |
            |
            |
      =======).green
    when 1
      print %Q(
      +-----+
      |     |
      0     |
     /|\\   |
       \\   |
            |
      =======).yellow
    when 0
      print """
      +-----+
      |     |
      0     |
     /|\\   |
     / \\   |
            |
      =======""".red
    end
  end

end
