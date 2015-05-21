############################################################
#
#  Name:        Patrick McManis
#  Assignment:  Validation
#  Date:        4/14/2014
#  Class        CIS 283
#  Description: validate user's phone number and e-mail address
#
############################################################

phoneExp = /\A\d{3}\.\d{3}\.\d{4}\Z|\A\(\d{3}\)\s\d{3}-\d{4}\Z|\A\d{3}-\d{3}-\d{4}\Z/
run = true
while run == true
  puts 'Please enter your phone number in one of these 3 formats: (XXX) XXX-XXXX, XXX-XXX-XXXX, or XXX.XXX.XXXX'
  userPhone = gets

  if phoneExp.match(userPhone)
    puts "Thank you"
    emailExp = /\A([a-zA-Z]+\w*\W*\.*)+@[a-zA-Z]+(\.[a-zA-Z]{2,6}){1,3}\Z/
    #\A([a-zA-Z]\w*\.?)+@[a-zA-Z]+(\.[a-zA-Z]{2,6}){1,3}\Z
    loop = true
    while loop == true
      puts 'Please enter a valid e-mail address.'
      userEmail = gets

      if emailExp.match(userEmail)
        puts 'Thank you for using us!'
        break
      else
        puts 'Wrong e-mail format please try again.'
      end
    end
    break
  else
    puts 'Wrong format try again'
  end
end



