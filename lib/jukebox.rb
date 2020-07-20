# Add your code here

require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  play_it = valid?(songs, choice)
  # binding.pry
  if play_it
    puts "Playing " + play_it
  else
    puts "Invalid input, please try again"
  end
  
end

def valid?(songs, choice)
  return choice if songs.include?(choice)
  if choice.to_i.between?(1,songs.length)
    return songs[choice.to_i - 1]
  else
    return false
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  choice = gets.strip
  
  case choice
    when "help" then help ; run(songs)
    when "list" then list(songs) ; run(songs)
    when "play" then play(songs); run(songs)
    when "exit" then exit_jukebox
    else help; run(songs)
  end
end