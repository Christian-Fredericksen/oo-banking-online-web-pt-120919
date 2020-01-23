class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending" if receiver.balance != receiver.balance + @amount 
  else 
    
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else
      false 
    end
  end
  
  def execute_transaction
    sender.balance = sender.balance - @amount
    receiver.balance = receiver.balance + @amount
    @status = "complete"
  end 
end
