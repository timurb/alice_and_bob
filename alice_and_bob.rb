#!/usr/bin/env ruby

begin
  require 'person'
rescue LoadError
  puts "Run me as `ruby -Ilib #{__FILE__}`"
  exit 1
end

alice = Person.new(6,20)
bob = Person.new(20,6)

wins = { :alice => 0, :bob => 0 }

alice.probabilities.each do |asum, aprob|
  bob.probabilities.each do |bsum, bprob|
    if asum > bsum
      wins[:alice] += aprob*bprob
    else
      wins[:bob] += aprob*bprob
    end
  end
end

wins.each_key do |key|
  puts "#{key} #{format("%.5f", wins[key])}"
end
