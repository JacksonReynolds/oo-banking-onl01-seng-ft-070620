require 'bank_account.rb'

class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amt
  end #initialize

  def valid?
    @sender.valid? && @receiver.valid? && @sender.balance > @amount
  end #valid?

  def execute_transaction
    if self.valid? && self.status == 'pending'
      @sender.balance -= @amount
      @receiver.deposit(@amount)
      @status = 'complete'
    else
      "Transaction rejected/ Please check your account balance."
    end #if
  end #execute_transaction

  def reverse_transfer
    if @status == 'complete' 
      @sender.deposit(@amount)
      @receiver.balance -= @amount
    end #if
  end #reverse_transfer

end
