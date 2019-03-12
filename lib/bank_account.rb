require 'date'

class Bank_account
  
  attr_reader :balance, :history
  def initialize
    @balance = 0
    @history = []
  end

  def make_a_deposit(amount, date)
    @balance =+ amount
    record_in_history(date, amount, @balance)
  end

  private

  def format_date(date)
    Date.parse(date).strftime("%d/%m/%Y")
  end

  def format_amount(amount)
    format('%.2f', amount)
  end

  def format_deposit(date, amount, balance)
    "#{format_date(date)} || #{format_amount(amount)} || || #{format_amount(@balance)}"
  end 

  def record_in_history(date, amount, balance)
    @history << format_deposit(date, amount, balance)
  end

end