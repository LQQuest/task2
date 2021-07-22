require 'benchmark'

order = Order.find_by_department_id(1)

Benchmark.bm do |x|
  x.report { order }
end