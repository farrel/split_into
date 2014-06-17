require 'simplecheck'
require 'split_into/split_exception'

module SplitInto
  class <<self
    include Simplecheck
  end

  def self.split(number, divisor)
    check(number, Integer)
    check(divisor, Integer)

    raise(SplitInto::SplitException, 'Divisor is less than zero') if divisor < 0
    raise(SplitInto::SplitException, 'Divisor is greater than the dividend') if divisor > number

    return [] if divisor.zero?

    buckets = Array.new(divisor){ number.div(divisor) }
    quotient = number.modulo(divisor)
    quotient.times { |i| buckets[i] += 1 }
    buckets.sort
  end
end
