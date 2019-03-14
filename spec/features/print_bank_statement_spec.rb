require 'bank_account.rb'

describe 'Feature test: acceptance criteria' do
  it 'client can make a deposit, a withdrawal and print a bank statement' do
    @bank_account = BankAccount.new
    @bank_account.make_a_deposit(1000, '10-01-2012')
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
