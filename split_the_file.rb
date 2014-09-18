class SplitTheFile
  def make_the_file_into_array(filename)
    @get_file = []
    @get_file << filename.split('----')
    
    print_the_keynote
  end

  def print_the_keynote
    first_element = @get_file
    puts first_element[0][0]

    print "> "
    @get_input = gets.chomp
    exit_the_keynote = 'q'

    
    @get_file.each_with_index do |element, index|
      next_element = element[index+1]
      if @get_input == "next"
        puts next_element
      elsif @get_input == 'q' || @get_input == "Q"
        break
      end
    end 
  end
end