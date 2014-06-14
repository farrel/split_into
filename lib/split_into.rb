require 'split_into/split_exception'

module SplitInto
  def self.split(number, divisor)
    raise(SplitInto::SplitException, 'Divisor is less than zero') if divisor < 0
    raise(SplitInto::SplitException, 'Divisor is greater than argument') if divisor > number

    return [] if divisor.zero?

    buckets = Array.new(divisor){ number.div(divisor) }
    quotient = number.modulo(divisor)
    quotient.times { |i| buckets[i] += 1 }
    buckets.sort
  end
end
