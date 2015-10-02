class FixCollector < ActiveRecord::Migration
  def change
    rename_column :exchanges, :collector, :collector
  end
end
