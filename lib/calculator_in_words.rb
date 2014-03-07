def calculator_in_words(phrase)
  split_phrase = phrase.split(' ')
  problem_array = []

  split_phrase.each do |word|
    if (word =~ /(plus)|(minus)|(divided)|(multiplied)|(the)/) != nil
      problem_array << word
    elsif (word =~ /(\d+)/) != nil
      problem_array << word.to_f
    end
  end
  return evaluate(problem_array)
end

def evaluate(problem_array)
  result_string = ""

  problem_array.each do |word|
    if word == "plus"
      result_string += "+"
    elsif word == "minus"
      result_string += "-"
    elsif word == "divided"
      result_string += "/"
    elsif word == "multiplied"
      result_string += "*"
    elsif word == "the"
      result_string += "**"
    else
      result_string += word.to_s 
    end
  end
  
  puts result_string
  return eval(result_string)
end

puts calculator_in_words("What is 10 divided by 4")
