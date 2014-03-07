def calculator_in_words(phrase)
  split_phrase = phrase.split(' ')
  problem_array = []

  split_phrase.each do |word|
    if (word =~ /(plus)|(minus)|(divided)|(multiplied)/) != nil
      problem_array << word
    elsif (word =~ /(\d+)/) != nil
      problem_array << word.to_f
    end
  end
  return calculate(problem_array)
end

def calculate(problem_array)

  operators = ['divided', 'multiplied', 'plus', 'minus']

  while problem_array.length > 1 do

    operators.each do |operator|
    
      if problem_array.index(operator) != nil
        i = problem_array.index(operator)
        problem_array[i-1] = sub_calculate(problem_array[i-1..i+1])
        problem_array.delete_at(i+1)
        problem_array.delete_at(i)
        break
      end
    end
  end

  return problem_array[0]
end


def sub_calculate(problem_array)

    if problem_array[1] == "divided"
      result = problem_array[0] / problem_array[2]
    elsif problem_array[1] == "multiplied"
      result = problem_array[0] * problem_array[2]
    elsif problem_array[1] == "plus"
      result = problem_array[0] + problem_array[2]
    elsif problem_array[1] == "minus"
      result = problem_array[0] - problem_array[2]
    end

  return result
end
