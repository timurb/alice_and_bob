# TODO: fix to require only used summators
require 'summator/caching'

class Person
  def initialize(sides,count, summator = SummatorCaching)
    @sides = sides
    @count = count
    @summator = summator.new(@sides,@count)
  end

  def results
    @results ||= @summator.calculate
  end

  def outcomes
    return @outcomes if @outcomes
    @outcomes = 0
    results.each do |key,count|
      @outcomes += count
    end
    @outcomes
  end

  def probabilities
    return @probabilities if @probabilities
    @probabilities ||= Hash.new(0)
    results.each do |key,count|
      @probabilities[key] = count / Float(outcomes)
    end
    @probabilities
  end
end
