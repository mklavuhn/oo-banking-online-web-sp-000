class BankAccount

  attr_reader :name, :status
  attr_accessor :balance
  

  def initialize(name, balance = 1000, status = "open")
    @name = name 
    @balance = balance
    @status = status
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid? 
    if status == "open" && balance > 0 
      true 
    else 
      false 
    end
  end



end
