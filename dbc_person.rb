require_relative 'high_fiveable'

class DBCPerson

attr_reader :age, :phase
attr_accessor :name

  include HighFiveable

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, '')
    @phase = options.fetch(:phase, 3)
  end

end
