# The Transaction takes add details from a transation
class Transaction
  attr_reader :amount, :type, :date, :balance
  def initialize(balance, amount, type, date)
    @balance = balance
    @amount = amount
    @type = type
    @date = date
  end
end
