
require 'bank_account.rb'

describe BankAccount do
  before(:each) do
    @bank_account = BankAccount.new
    amount = 1000
    date = '10-01-2012'
    @bank_account.make_a_deposit(amount, date)
  end

  describe 'can credit a bank account' do
    it 'records a deposit with a specific amount and date' do
      expect(@bank_account.transactions[0].balance).to eq 1000
    end

    it 'records a deposit with a specific amount without date' do
      allow(Date).to receive(:today).and_return Date.new(2019,3,18)
      @bank_account.make_a_deposit(1000)
      expect(@bank_account.transactions[1].date).to eq '18-03-2019'
    end
  end

  describe 'can debit a bank account' do
    it 'records a withdraw with a specific amount and date' do
      @bank_account.make_a_withdrawal(500, '14-01-2012')
      expect(@bank_account.transactions[1].balance).to eq 500
    end

    it 'records a deposit with a specific amount without date' do
      allow(Date).to receive(:today).and_return Date.new(2019,3,19)
      @bank_account.make_a_withdrawal(500)
      expect(@bank_account.transactions[1].date).to eq '19-03-2019'
    end
  end

  describe 'can print a bank statement' do
    it 'displays previous transactions in a reverse order' do
      @bank_account.make_a_deposit(2000, '13-01-2012')
      @bank_account.make_a_withdrawal(500, '14-01-2012')
      expect { @bank_account.print_bank_statement }.to output(
        'date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00'
      ).to_stdout
    end
  end
end
