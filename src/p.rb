
  def print_toon(increment)
    @failed_attemps += increment

    case @failed_attemps
    when 0
      puts "  ______"
      puts "        |"
      puts "        |"
      puts "        |"
      puts "        |"
    when 1
      puts "  ______"
      puts " |      |"
      puts "        |"
      puts "        |"
      puts "        |"
    when 2
      puts "  ______"
      puts " |      |"
      puts "(oo)    |"
      puts "        |"
      puts "        |"
    when 3
      puts "  ______"
      puts " |      |"
      puts "(oo)    |"
      puts " |      |"
      puts "        |"
    when 4
      puts "  ______"
      puts " |      |"
      puts "(oo)    |"
      puts " ||     |"
      puts "        |"  
    when 5
      puts "  ______"
      puts " |      |"
      puts "(oo)    |"
      puts "/||     |"
      puts "        |"
    when 6
      puts "  ______"
      puts " |      |"
      puts "(oo)    |"
      puts "/||\\    |"
      puts "        |"
    when 7
      puts "  ______"
      puts " |      |"
      puts "(oo)    |"
      puts "/||\\    |"
      puts "/       |"
    when 8
      puts "  ______"
      puts " |      |"
      puts "(oo)    |"
      puts "/||\\    |"
      puts "/  \\    |"
    when 9
      puts "  ______"
      puts " |      |"
      puts "(ox)    |"
      puts "/||\\    |"
      puts "/  \\    |"  
    when 10
      puts "  ______"
      puts " |      |"
      puts "(xx)    |"
      puts "/||\\    |"
      puts "/  \\    |"           
    end
    puts ""
  end

