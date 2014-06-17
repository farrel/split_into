require 'split_into'

class Integer
  def split_into(divisor)
    SplitInto.split(self,divisor)
  end
end
