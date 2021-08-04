require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'order' do
    Benchmark.bm do |x|
      x.report("   id   ") { Order.find_by_id(3) }
      x.report("  desc  ") { Order.find_by_description("qwe") }
      x.report(" dep id ") { Order.find_by_department_id(2) }
      x.report(" create ") { Order.create(department_id: 2, description: "qwe") }
      x.report("datetime") { Order.order(created_at: :desc).first }
    end
  end
end

RSpec.describe Comment, type: :model do
  context 'comment' do
    Benchmark.bm do |x|
      x.report("order id") { Comment.find_by_order_id(2) }
    end
  end
end
