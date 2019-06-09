require 'singleton'

class EulerComputer
  include Singleton
  include Computation

  def greet
    'hi there jackass'
  end
end
