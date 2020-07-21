require 'bank_account.rb'

class Transfer

  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @status = pending
    @amount = amt
  end #initialize

  def valid?
    @sender.valid? && @receiver.valid? && @sender.balance > @amount
  end #valid?

  def execute_transaction
    if self.valid?
      @sender.balance -= amt
      @receiver.deposit(amt)
    end #if
  end #execute_transaction

end
