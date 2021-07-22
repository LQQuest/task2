class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :department_id
      t.string :description, size: 10
      t.index :description
      t.timestamps
    end

    create_table :comment do |t|
      t.belongs_to :order, using: :hash
      t.string :description, size: 10
    end
  end
end
