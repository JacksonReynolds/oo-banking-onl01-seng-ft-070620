require 'transfer.rb'

class BankAccount

  attr_accessor :balance, :status
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

end
