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

  describe 'can print a bank statement' do 
    it 'prints the history of deposits and withdrawals made' do 
      @bank_account.make_a_deposit(2000,"13-01-2012")
      @bank_account.make_a_withdrawal(500, "14-01-2012")
      expect { @bank_account.print_bank_statement }.to output(
        "date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00").to_stdout
    end
  end
end
 