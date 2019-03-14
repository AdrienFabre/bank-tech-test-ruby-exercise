require 'statement.rb'

describe Statement do
  let(:transactions) { [transaction1, transaction2] }
  let(:transaction1) do
    double(
      :transaction,
      balance: 1000,
      amount: 1000,
      type: 'credit',
      date: '13/01/2012'
    )
  end
  let(:transaction2) do
    double(
      :transaction,
      balance: 600,
      amount: 400,
      type: 'debit',
      date: '14/01/2012'
    )
  end
  describe 'can print transactions' do
    it 'prints formated transactions' do
      expect { Statement.new(transactions).print_statement }.to output(
        'date || credit || debit || balance
14/01/2012 || || 400.00 || 600.00
13/01/2012 || 1000.00 || || 1000.00'
      ).to_stdout
    end
  end
end
