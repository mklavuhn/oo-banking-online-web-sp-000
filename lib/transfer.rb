class Transfer
  
  
  attr_accessor :status, :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = status 
  end
  
  def valid? 
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end
  end
    
  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    elsif
      @status == "complete"
      puts "Transaction was already executed"
    else
      @sender.deposit (@amount * -1)
    
    
  end
  
  
  
  
  
  
end
