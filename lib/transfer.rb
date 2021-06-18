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
    if @amount > @sender.balance
      @status = "rejected"
      "Transaction rejected. Please check your account balance."

    else @status == "complete"
      puts "Transaction was already excuted"
    elsif
      @sender.deposit( amount * -1 ) 
      @receiver.deposit( amount )
      @status = "complete"
    end
  end
  
  
  
  
  
  
end
