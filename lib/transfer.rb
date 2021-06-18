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
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    elsif
      
    
    
  end
  
  
  
  
  
  
end
