require 'summator/base'

class SummatorCycling < BaseSummator
  def results_for(number)
    case number
    when 1
      @sides.times do |x| x += 1
        @results[x] += 1
      end
    when 2
      @sides.times do |x| x += 1
        @sides.times do |y| y += 1
          @results[x+y] += 1
        end
      end
    when 3
      @sides.times do |x| x += 1
        @sides.times do |y| y += 1
          @sides.times do |z| z += 1
            @results[x+y+z] += 1
          end
        end
      end
    when 4
      @sides.times do |x| x += 1
        @sides.times do |y| y += 1
          @sides.times do |z| z += 1
            @sides.times do |t| t += 1
              @results[x+y+z+t] += 1
            end
          end
        end
      end
    else
      raise "Not defined for #{number}"
    end
    @results
  end
end
