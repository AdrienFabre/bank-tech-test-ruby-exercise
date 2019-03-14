require 'date'
require 'transaction.rb'
require 'operation.rb'
require 'statement.rb'

class BankAccount
  attr_reader :balance, :transactions
  def initialize(
    operation_class = Operation,
    transaction_class = Transaction,
    statement_class = Statement
  )
    @balance = 0
    @transactions = []
    @operation = operation_class
    @transaction = transaction_class
    @statement = statement_class
  end

  def make_a_deposit(amount, date)
    @balance = @operation.new(@balance, amount, 'credit').new_balance
    @transactions << @transaction.new(@balance, amount, 'credit', date)
  end

  def make_a_withdrawal(amount, date)
    @balance = @operation.new(@balance, amount, 'debit').new_balance
    @transactions << @transaction.new(@balance, amount, 'debit', date)
  end

  def print_bank_statement
    @statement.new(@transactions).print_statement
  end
end
