require 'bank_account.rb'

class Transfer

  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @status = pending
    @amount = amt
  end #initialize

  def valid?
    @sender.valid? && @receiver.valid?

end
