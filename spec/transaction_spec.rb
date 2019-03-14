require 'transaction.rb'

describe Transaction do 
  describe 'can store transaction details' do 
    it 'saves transaction details' do
      balance = 500
      transaction = Transaction.new(balance, 1000, 'credit', '10-01-2012')
      expect(transaction.amount).to eq 1000
      expect(transaction.type).to eq 'credit'
      expect(transaction.date).to eq '10-01-2012'
      expect(transaction.balance).to eq balance
    end
  end
end
