class BankAccount

  attr_reader :name, :balance, :status
  

  def initialize(name, balance = 1000, status = "open")
    @name = name 
    @balance = balance
    @status = status
  end
  
  def deposit(int)
    total_value = int + balance
    total_value
  end



end
