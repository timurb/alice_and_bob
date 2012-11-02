# Time to run

  desktop% time ruby -Ilib ./alicebob.rb
  alice 0.65496
  bob 0.34504
  ruby -Ilib ./alicebob.rb  0,05s user 0,01s system 72% cpu 0,082 total

# My computer params

  desktop% cat /proc/cpuinfo | grep 'model name'
  model name	: Intel(R) Celeron(R) CPU          420  @ 1.60GHz
  desktop% cat /proc/meminfo | grep MemTotal    
  MemTotal:        2065200 kB
