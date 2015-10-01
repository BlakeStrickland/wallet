require 'byebug'

class Exchange < ActiveRecord::Base

  def self.trans_count
    self.count
  end


  def self.total_money
     self.all.inject(0) { |sum, number| sum + number.amount.to_f }
  end


end
