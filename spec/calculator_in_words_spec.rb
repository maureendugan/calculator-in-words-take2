require('rspec')
require('calculator_in_words')

describe('calculator_in_words') do
  it('returns the sum of two numbers if input phrase includes word "plus"') do
    calculator_in_words('What is 5 plus 3?').should(eq(8))
  end
  it('returns the difference of two numbers if input phrase includes word "minus"') do
    calculator_in_words("What is 10 minus 4?").should(eq(6))
  end
  it('returns the quotient of two numbers if input phrase includes word "divided"') do
    calculator_in_words("What is 20 divided by 4?").should(eq(5))
  end
  it('returns the product of two numbers if input phrase includes word "multiplied"') do
    calculator_in_words("What is 5 multiplied by 4?").should(eq(20))
  end
  it('returns the sum of more than two numbers') do
    calculator_in_words("What is 5 plus 7 plus 2?").should(eq(14))
  end
  it('returns the answer for problems with complicated operations') do
    calculator_in_words("What is 20 divided by 4 plus 8?").should(eq(13))
    calculator_in_words("What is 3 plus 7 multiplied by 11?").should(eq(80))
  end
  it('can handle decimals in division') do
    calculator_in_words("What is 10 divided by 4").should(eq(2.5))
  end
  it('can handle an expression with two divide statements') do
    calculator_in_words("What is 3 divided by 1 plus 9 divided by 3 plus 2").should(eq(8))
  end
  it('returns a number to a power correctly') do
    calculator_in_words('What is 3 to the 3rd power').should(eq(27))
  end
end
