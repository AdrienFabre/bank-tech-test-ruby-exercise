# The Printer prints the bank statement
class Printer
  def self.print_statement(transactions)
    transactions.reverse.map.with_index do |transaction, index|
      print 'date || credit || debit || balance' if index.zero?
      print "\n#{format_transaction(transaction)}"
    end
  end

  def self.format_transaction(transaction)
    date = format_date(transaction.date)
    amount = format_amount(transaction.amount)
    balance = format_amount(transaction.balance)
    if transaction.type == 'credit'
      "#{date} || #{amount} || || #{balance}"
    else
      "#{date} || || #{amount} || #{balance}"
    end
  end

  def self.format_date(date)
    Date.parse(date).strftime('%d/%m/%Y')
  end

  def self.format_amount(amount)
    format('%.2f', amount)
  end

  private_class_method :format_transaction, :format_date, :format_amount

end
