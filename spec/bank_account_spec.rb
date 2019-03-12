require "bank_account.rb"

describe 'can credit a bank account' do
  it 'records a deposit with a specific amount and date' do
    bank_account = Bank_account.new
    amount = 1000
    date = "10-01-2012"
    bank_account.make_a_deposit(amount, date)
    expect(bank_account.history).to include("10/01/2012 || 1000.00 || || 1000.00")
  end 
end