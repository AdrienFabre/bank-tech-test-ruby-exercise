require 'operation.rb'

describe 'Operation' do
  describe 'can calculate new balance' do
    it 'add an amount to the balance' do
      balance = 1000
      amount = 500
      type = 'credit'
      expect(Operation.new(balance, amount, type).new_balance).to eq 1500
    end

    it 'deduce an amount from the balance' do
      balance = 1000
      amount = 500
      type = 'debit'
      expect(Operation.new(balance, amount, type).new_balance).to eq 500
    end

    it 'prevents overdraft' do
      balance = 1000
      amount = 2000
      type = 'debit'
      expect { Operation.new(balance, amount, type).new_balance }
        .to raise_error 'Overdraft'
    end
  end
end
