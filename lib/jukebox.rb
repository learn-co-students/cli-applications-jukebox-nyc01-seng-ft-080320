# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{songs_array[index]}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:" 
  input = gets.strip

  songs_array.each_with_index do |song, index|
 if songs_array[index] == input || input.to_i == (index + 1)
      puts "Playing #{songs_array[index]}"
      return
    end
  end
  
puts "Invalid input, please try again" 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
 
  puts "Please enter a command:"
  user_input = gets.strip
  
  if user_input.downcase == "help"
    help
    
  elsif user_input.downcase == "list"
    list(songs_array)
  elsif user_input.downcase == "play"
    play(songs_array)
  elsif user_input.downcase == "exit"
    exit_jukebox
  end
  
end
