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
    if @amount > @sender.balance || @status == "closed"
      @status = "rejected"
      "Transaction rejected. Please check your account balance."

    elsif status == "complete"
      "Transaction was already excuted"
    else
      @sender.deposit( amount * -1 ) 
      @receiver.deposit( amount )
      @status = "complete"
    end
  end
  
  
  
  
  
  
end
