#A ruby file called lipsum.rb that can be run from the command line using ruby lipsum.rb <argument>.

lipsum_wanted = ARGV[0]
num = ARGV[1] || 1

case lipsum_wanted.downcase
when "starwars" then puts "starwars"
when "empire" then puts "empire"
when "jedi" then puts "jedi"
else
  puts "Not an option. Choices are: \n
    1) 'StarWars' for 'A New Hope' Lipsum.\n
    2) 'Empire' for 'Empire Strikes Back' Lipsum.\n
    3) 'Jedi' for 'Return of the Jedi' Lipsum."
end
