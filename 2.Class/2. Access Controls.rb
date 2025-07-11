# method declaration return the method name as Symbol
class MyClass
  def method_1
  end
  protected def method_2
  end
  private def method_3
  end
  def method_4
  end
  # same as 
  # public :method_1, :method_4
  # protected :method_2
  # private :method_3
end


class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  private def debit(account, amount)
    account.balance -= account
  end

  private def credit(account, amount)
    account.balance += amount
  end

  def transfer(amount)
    debit(account_a, amount)
    credit(account_b, amount)
  end
end


account_a = Account.new(100)
account_b = Account.new(50)

new_transaction = Transaction(account_a, account_b)
new_transaction.transfer(25)

# class can be re-opened for extension by using the class name and them implement the new code