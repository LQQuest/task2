require 'rails_helper'
require 'benchmark'
# require 'rails-benchmark'

RSpec.describe Order, type: :model do
  include RSpec::Benchmark::Matchers
  context "Benchmark integer" do
    it 'should find by id' do
      # expect { Order.find_by_id(3) }.to perform_under(0.11).sec
      Benchmark.bm do |x|
        x.report { Order.find_by_id(3) }
      end
    end
  end

end
