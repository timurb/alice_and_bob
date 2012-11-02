require 'summator/base'

class SummatorCaching < BaseSummator
  def results_for(depth)
    @results_for ||= []

    @results_for[depth] ||= calculate_results_for(depth)
  end

  def calculate_results_for(depth)
    tmp_results = Hash.new(0)
    return {} if depth==0

    @sides.times do |value| value+=1
      if depth == 1
        tmp_results[value] += 1
      else
        results_for(depth-1).each do |key,sum|
          tmp_results[key+value] = sum+tmp_results[key+value]
        end
      end
    end
    tmp_results
  end
end
