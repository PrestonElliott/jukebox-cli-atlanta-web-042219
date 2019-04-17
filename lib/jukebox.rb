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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end
# format for list method
# 1. Phoenix - 1901
# 2. Tokyo Police Club - Wait Up

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.chomp
    if (1..9).to_a.include?(users_input.to_i)
      puts "Playing #{songs[users_input.to_i - 1]}"
    elsif songs.include?(users_input)
      puts "Playing #{users_input}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  users_input = ""
  while users_input
    puts "Please enter a command:"
    users_input = gets.downcase.chomp
    case users_input
    when "list"
      list(songs)
    when "play"
      play(songs)
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
