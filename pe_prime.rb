require 'prime'

class PePrime
  @current_prime = 2

  class << self
    attr_accessor :current_prime
  end

  def self.next_prime
    @current_prime += 1
    @current_prime += 1 until Prime.prime?(@current_prime)
    @current_prime
  end
end
