require "bank_account.rb"

describe 'print bank statement' do 
  it 'returns the history of transactions' do 
    make_a_deposit(1000,10-01-2012)
    make_a_deposit(2000,13-01-2012)
    make_a_withdrawal(500, 14-01-2012)
    expect(print_bank_statement).to equal
      "date || credit || debit || balance
      14/01/2012 || || 500.00 || 2500.00
      13/01/2012 || 2000.00 || || 3000.00
      10/01/2012 || 1000.00 || || 1000.00" 
  end 
end 
