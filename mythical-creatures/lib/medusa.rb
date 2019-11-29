require 'pry'
require_relative '../lib/person'



class Medusa
  attr_reader :name, :statues
  #attr_readers will match the number of instance variables
  #defi tab auto fills this
  #allows you to call class.new iwth arguemnt
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim) #the parenthesis is passing something into this
    victim.harden
    if @statues.length < 3
    @statues << victim
  else

    @statues.first.soften
    @statues.shift
    @statues << victim
  end

  end


end
