def prompt(message)
  puts "=> #{message}"
end

prompt "Welcome to the Car Loan Calculator! Enter your name:"

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt "Hi #{name}!"

loan = ''
loop do
  prompt "What's the loan amount?"
  loan = gets.chomp
  if loan != 0
    break
  else
    prompt "Hmm... that doesn't look like a valid number"
  end
end

apr = ''
loop do
  prompt "What's the APR?"
  apr = gets.chomp.to_f
  if apr > 0
    break
  else
    prompt "Please enter as a percentage number"
  end
end

months = ''
loop do
  prompt "How many months is the loan duration?"
  months = gets.chomp.to_i
  if months > 0
    break
  else
    prompt "Hmm... that doesn't look like a valid number"
  end
end

apr_per = apr / 100
mo_int = apr_per / 12
mo_loan = loan.to_f * mo_int / (1 - (1 + mo_int**-months.to_i))

puts "Your monthly loan amount is #{mo_loan}."
