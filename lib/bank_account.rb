class BankAccount

  attr_reader :name, :balance, :status
  

  def initialize(name, balance = 1000, status = "open")
    @name = name 
    @balance = balance
    @status = status
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    balance = deposit()
    Puts "Your balance is $#{name.balance}."
  end



end
