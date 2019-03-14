class Operation
  def initialize(balance, amount, type)
    @balance = balance
    @amount = amount
    @type = type
  end

  def new_balance
    raise 'Overdraft' if (@type == 'debit') && (@amount > @balance)
    return @balance - @amount if @type == 'debit'
    return @balance + @amount if @type == 'credit'
  end
end
