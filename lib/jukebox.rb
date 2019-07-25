# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays a list of songs you can play" 
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..9).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run 
  help 
  puts "Please enter a command:"
  input = gets.chomp 
  case choice
    when input == "list"
      list(songs) 
    when input == "play"
      play(songs)
    when input == "help"
      help 
    when input == "exit"
      exit_jukebox
    else
      help
    end
end





