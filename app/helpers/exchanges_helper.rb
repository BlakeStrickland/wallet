module ExchangesHelper
  def phone_numberize(number)
    string = number.to_s
    string.first(3) + "-" + string.last(4)
    # string.insert(3, "-")
  end
end
