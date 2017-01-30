#!/usr/bin/env ruby

#A ruby file called lipsum.rb that can be run from the command line using ruby lipsum.rb <argument> <argument (optional)> to generate star wars based lipsum.
#Second argument tells how many paragraphs to generate. Output is copied to clipboard.
#Also can be run from [Directory]/lipsum.rb

lipsum_wanted = ARGV[0] || "none"
ARGV[1].to_i.to_s == ARGV[1] && ARGV[1].to_i > 1 ? num = ARGV[1].to_i : num = 1 if ARGV[1]


starwars = "How did I get into this mess? I really don't know how. We seem to be made to suffer. It's our lot in life. I've got to rest before I fall apart. My joints are almost frozen. What a desolate place this is. Where are you going? Well, I'm not going that way. It's much too rocky. This way is much easier. What makes you think there are settlements over there? Don't get technical with me. What mission? What are you talking about? I've had just about enough of you! Go that way! You'll be malfunctioning within a day, you nearsighted scrap pile! And don't let me catch you following me begging for help, because you won't get it. No more adventures. I'm not going that way.\n"

empire = "Lord Vader, the fleet has moved out of light-speed, and we're preparing to...Aaagh! You have failed me for the last time, Admiral. Captain Piett. Yes, my lord. Make ready to land out troops beyond the energy shield and deploy the fleet so that nothing gets off that system. You are in command now, Admiral Piett. Thank you, Lord Vader.\n"

jedi = "If I don't make it back, you're the only hope for the Alliance. Luke, don't talk that way. You have a power I--I don't understand and could never have. You're wrong, Leia. You have that power too. In time you'll learn to use it as I have. The Force is strong in my family. My father has it... I have it ...and...my sister has it. Yes. It's you Leia. I know. Somehow...I've always known. Then you know why I have to face him.\n"

result = case lipsum_wanted.downcase
when "starwars" then starwars*num
when "empire" then empire*num
when "jedi" then jedi*num
else
  puts "Not an option. Choices are: \n
    1) 'StarWars' for 'A New Hope' Lipsum.\n
    2) 'Empire' for 'Empire Strikes Back' Lipsum.\n
    3) 'Jedi' for 'Return of the Jedi' Lipsum."
end

if result
  puts result
  system("echo \"#{result}\" | pbcopy")
end
