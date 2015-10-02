class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.decimal :withdrawal
      t.decimal :deposit
      t.string :collector
      
      t.timestamps null: false
    end
  end
end
