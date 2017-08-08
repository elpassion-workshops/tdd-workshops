class Calculator
  def initialize(first_number, second_number)
    @first_number = first_number
    @second_number = second_number
  end

  def multiply
    first_number * second_number
  end

  def self.add(first_number, second_number)
    first_number + second_number
  end

  private

  attr_reader :first_number, :second_number
end
