require 'transfer.rb'

class BankAccount

  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end #initialize

  def deposit(amt)
    @balance += amt
  end #deposit

  def close_account
    @status = 'closed'
  end #close_account

  def display_balance
    "Your balance is $#{self.balance}."
  end #display_balance

  def valid?
    self.balance > 0 && self.status == 'open'
  end #valid?

end
