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
  elsif input == 1 | 2 | 3 | 4 | 5 | 6 |7|8|9
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end





