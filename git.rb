def puts_git(cmd)
  puts `git #{cmd} -h`
end

  def menu
    puts "1 enter git command"
    puts "2 exit"
    choice - gets.to_i
    case choice
    print `clear`
    # sleep(3)
      when 1
        puts "Enter get command"
        puts_git(gets.strip)
        menu
      when 2
        puts "thanks for using program"
        exit
      else
        puts "invalid input"
        menu
    end
  end

menu
