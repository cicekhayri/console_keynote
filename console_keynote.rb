require_relative 'split_the_file'


class ConsoleKeynote
  def get_the_keynote_file(file_to_open)
    @get_the_file = File.open("#{file_to_open}", "r").read

    if @get_the_file.nil?
      print "No such file sorry"
    else
      print_to_the_console
    end
  end

  def print_to_the_console
    call_the_split_class = SplitTheFile.new.make_the_file_into_array(@get_the_file)
  end
end

make_new_keynote = ConsoleKeynote.new

print "please enter the filename >/"
get_file = gets.chomp

make_new_keynote.get_the_keynote_file(get_file)
