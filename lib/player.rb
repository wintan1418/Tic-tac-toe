class Player
#   attr_accessor :name, :key

#   def initialize(name, key)
#     @name = name
#     @key = key
#   end
# end
attr_reader :name
  attr_accessor :type

  def initialize(name)
    @name = name
    @type = '_'
  end
end