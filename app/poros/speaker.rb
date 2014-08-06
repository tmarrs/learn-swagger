class Speaker
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :about
  attr_accessor :email
  attr_accessor :company
  attr_accessor :tags
  attr_accessor :about

  def initialize
    @tags = []
  end

  def tag=(x)
    @tags << x
  end
end