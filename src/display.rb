
  class Display

    def initialize()
    end
  
    def game_rules
      print %Q(
          Welcome to Hangman!
          To win, you need to guess the mystery word or you die.
          You can have up to 8 incorrect guesses, before you're hanged.
          Let's begin!
      )
    end
  
    def winner
      print %Q(
          You've guessed the word correctly. You are a winner!
      )
    end
  
    def loser
      print %Q(
          You have run out of lives. You're dead!
          You're a loser.
          The game is over.
      )
    end
  
    def guess_letter
      print %Q(
          Guess a letter
          >
      )
    end
  
    def play_again
      print %Q(
        Guess a letter
        >
      )
    end
  
    def hanged_man(lives)
      case lives
      when 10
        print %Q(
        ------+
              |
              |
              |
              |
              |
        =======).white
      when 9
        print %Q(
        +-----+
              |
              |
              |
              |
              |
        =======).green
      when 8
        print %Q(
        +-----+
        |     |
              |
              |
              |
              |
        =======).yellow
      when 7
        print %Q(
        +-----+
        |     |
        0     |
              |
              |
              |
        =======).light_blue
      when 6
        print %Q(
        +-----+
        |     |
        0     |
        |     |
              |
              |
        =======).white
      when 5
        print %Q(
        +-----+
        |     |
        0     |
       /|     |
              |
              |
        =======).green
      when 4
        print %Q(
        +-----+
        |     |
        0     |
       /|\    |
              |
              |
        =======).blue
      when 3
        print %Q(
        +-----+
        |     |
        0     |
       /|\\   |
              |
              |
        =======).yellow
    when 2
        print %Q(
        +-----+
        |     |
        0     |
       /|\\   |
       /      |
              |
        =======).white
    when 1
        print %Q(
        +-----+
        |     |
        0     |
       /|\\   |
       / \\   |
              |
        =======).green
    when 0
        print """
        +-----+
        |     |
        |     |
        0     |
       /|\\   |
       / \\   |
              |
        =======""".red
      end
    end
  
  end

  