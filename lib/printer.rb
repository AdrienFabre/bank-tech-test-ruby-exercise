# The Printer prints the bank statement
class Printer
  def print_statement(transactions)
    transactions.reverse.map.with_index do |transaction, index|
      print 'date || credit || debit || balance' if index.zero?
      print "\n#{format_transaction(transaction)}"
    end
  end

  private

  def format_transaction(transaction)
    date = format_date(transaction.date)
    amount = format_amount(transaction.amount)
    balance = format_amount(transaction.balance)
    if transaction.type == 'credit'
      "#{date} || #{amount} || || #{balance}"
    else
      "#{date} || || #{amount} || #{balance}"
    end
  end

  def format_date(date)
    Date.parse(date).strftime('%d/%m/%Y')
  end

  def format_amount(amount)
    format('%.2f', amount)
  end
end
