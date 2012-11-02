class BaseSummator
  def initialize(sides, number)
    @results = Hash.new(0)
    @sides = sides
    @number = number
  end

  def calculate
    results_for(@number)
  end

  def results_for(number)
    raise "Not defined"
  end
end
