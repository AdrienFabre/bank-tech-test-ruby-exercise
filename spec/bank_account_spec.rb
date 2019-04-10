require 'bank_account.rb'

describe BankAccount do

  subject(:bank_account) {described_class.new}

  before(:each) do
    amount = 1000
    subject.make_a_deposit(amount)
  end

  describe 'can return the updated balance' do
    it 'make a deposit taking a specific amount' do
      subject.make_a_deposit(200)
      expect(subject.balance).to eq 1200
    end

    it 'make a withdrawal taking a specific amount' do
      subject.make_a_withdrawal(200)
      expect(subject.balance).to eq 800
    end
  end
end
