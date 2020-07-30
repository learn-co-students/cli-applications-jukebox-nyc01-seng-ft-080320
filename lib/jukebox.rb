songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts" I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|bandAndSong, i|
    trackNumber = i + 1;
    puts "#{trackNumber}. #{bandAndSong}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  
  stringInput = gets.strip;
  intInput = stringInput.to_i;
  
  songs.each_with_index {|track, i|
      
    trackNum = i + 1;
    songName = track.split(' ')[2];
      
    if (trackNum == intInput or stringInput == songName or stringInput == track)
      puts "Playing #{track}";
      return nil;
    end
  }
  puts "Invalid input, please try again";
  return nil;
end

def exit_jukebox
  puts "Goodbye";
end

def run(songs)
  puts "Please enter a command:";
  
  command = gets.strip;
  
  if (command == "exit")
    exit_jukebox;
    return nil;
  
  elsif (command == 'play')
    play(songs);
  
  elsif (command == 'help')
    help();
  
  elsif (command == 'list')
    list(songs);
  end
  #the fn will keep calling itself unless it gets the input 'exit'. It returns nil;
  run(songs);
end


