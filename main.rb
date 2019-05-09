require 'colorize'

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts 'MAIN MENU'.colorize(:cyan)
  puts '1: Enter git command'.colorize(:cyan)
  puts '2: Exit'.colorize(:cyan)
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter git command'.colorize(:green)
    puts_git(gets.strip)
    menu
  when 2
    puts "thanks for using our program"
    exit
  else
    puts 'Invalid choice'.colorize(:red)
    sleep(1)
    print `clear`
    menu
  end
end

menu
