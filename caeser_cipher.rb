def cipher(string, shift)
  letters= string.split(//)# splits string to characters
  letters.each do |x| # selects characters
    number = x.ord # converts characters to ascii


    if
      number.between?(97,122)# A-Z?
        number = number + shift
        if number >122 # if result is past Z
          number = (number -122) %26 + 96 #
        end
    elsif number.between?(65,90)
      number = number + shift
      if number >90
        number = (number-90) %26 + 64
      end
    end
    print number.chr
  end

end
puts "Hail Caesar. Please input your string."
string= gets.chomp
puts "Please select a number to encrypt your text"
shift= Integer gets.chomp
cipher(string, shift)
