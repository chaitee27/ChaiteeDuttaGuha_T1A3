class RandomWord
  def initialize
    @words = ["argentina", "chocolate", "dolphin", "plant", "window", "glasses", "brazil", "lion", "laptop", "html", "css", "java", "javascript", "crossing", "music", "shoes", "south", "bank", "salsa", "quizzing","hip-hop","bachata","aster","camellias" ,"rock n roll", "travel", "ballet", "blackcurrant", "nactarines", "macadamia", "hungary", "finland", "denmark", "jam"]
  end

  def pick_random_word
    @words.sample
  end
end
