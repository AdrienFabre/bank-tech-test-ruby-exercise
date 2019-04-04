require 'date'
require 'transaction.rb'
# The BankAccount enable the user to make a deposit and a withdrawal
class BankAccount
  attr_reader :balance, :transactions
  def initialize(transaction_class = Transaction)
    @balance = 0
    @transactions = []
    @transaction_class = transaction_class
  end

  def make_a_deposit(amount, date = Date.today.strftime('%d-%m-%Y'))
    @balance += amount
    @transactions << @transaction_class.new(@balance, amount, 'credit', date)
  end

  def make_a_withdrawal(amount, date = Date.today.strftime('%d-%m-%Y'))
    @balance -= amount
    @transactions << @transaction_class.new(@balance, amount, 'debit', date)
  end
end
