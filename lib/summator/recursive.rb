require 'summator/base'

class SummatorRecursive < BaseSummator
  def do_sum( number, previous_sum = 0 )
    @sides.times do |value| value+=1
      if number == 1
        @results[previous_sum + value] += 1
      else
        do_sum( number-1, previous_sum+value )
      end
    end
    @results
  end
  alias :results_for :do_sum
end
