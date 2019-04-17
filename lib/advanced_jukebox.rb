#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# /home/asynchronous-history-4603/Desktop/Dev/jukebox-cli/audio/Emerald-Park/01.mp3
# Users/<your name>/Desktop/Dev/jukebox-cli/audio/Emerald-Park/01.mp3

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
    #this method should be the same as in jukebox.rb
end



def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
    puts "Please enter a song name or number:"
    users_input = gets.chomp
      if my_songs.keys.include?(users_input)
        puts "Playing #{users_input}"
      else
        puts "Invalid input, please try again"
      end
end
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash


def exit_jukebox
  puts "Goodbye"
  #this method is the same as in jukebox.rb
end

def run(my_songs)
  users_input = ""
  while users_input
    puts "Please enter a command:"
    users_input = gets.downcase.chomp
    case users_input
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
  #this method is the same as in jukebox.rb
