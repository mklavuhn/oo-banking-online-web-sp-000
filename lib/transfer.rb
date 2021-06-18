class Transfer
  
  attr_reader :amount
  attr_accessor :status, :sender, :receiver
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = status 
  end
  
  def valid? 
    if @sender && @receiver 
  end
    
  
  
  
  
  
  
  
end
