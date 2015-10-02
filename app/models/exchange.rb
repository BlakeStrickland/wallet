require 'byebug'

class Exchange < ActiveRecord::Base
 validates :amount, :collector, presence: true
  def self.trans_count
    self.count
  end

  def self.biggest_expense
    @big = []
    self.all.each do |x|
      @big << x.amount
    end
    @big.min
  end

  def self.expensive_company
    # bigger = []
    # self.all.each do |x|
    #   bigger << x.amount.to_s
    # end

    # @h3 = Hash[bigger.map {|amount, collector| [amount, collector]}]
    # companies = Hash[bigger.each { |x| [amount, collector] }]
    # comapnies = companies.sort

    Exchange.select("collector(id) as collector, sum(amount) as total_amount").group("collector(id)")
    Exchange.sum("collector")

  end

  def self.total_money
    self.all.inject(0) { |sum, number| sum + number.amount.to_d }
  end

  def self.broke
    self.total_money < 0 ? true : false
  end

end
