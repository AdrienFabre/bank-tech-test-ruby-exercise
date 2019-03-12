require "bank_account.rb"

describe Bank_account do 

  before(:each) do
    @bank_account = Bank_account.new
    amount = 1000
    date = "10-01-2012"
    @bank_account.make_a_deposit(amount, date)
  end

  describe 'can credit a bank account' do
    it 'records a deposit with a specific amount and date' do
      expect(@bank_account.history).to include("10/01/2012 || 1000.00 || || 1000.00")
    end 
  end

  describe 'can debit a bank account' do 
    it 'records a withdraw with a specific amount and date' do 
      @bank_account.make_a_withdrawal(500, "14-01-2012")
      expect(@bank_account.history).to include("14/01/2012 || || 500.00 || 500.00")
    end 
  end
end
