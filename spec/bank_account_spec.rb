require 'bank_account.rb'

describe BankAccount do
  before(:each) do
    @bank_account = BankAccount.new
    amount = 1000
    @bank_account.make_a_deposit(amount)
  end

  describe 'can return the updated balance' do
    it 'make a deposit taking a specific amount' do
      @bank_account.make_a_deposit(200)
      expect(@bank_account.balance).to eq 1200
    end

    it 'make a withdrawal taking a specific amount' do
      @bank_account.make_a_withdrawal(200)
      expect(@bank_account.balance).to eq 800
    end
  end
end
