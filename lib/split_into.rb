require 'simplecheck'
require 'split_into/split_exception'

module SplitInto
  class <<self
    include Simplecheck
  end

  def self.split(dividend, divisor)
    check(dividend, Integer)
    check(divisor, Integer)

    raise(SplitInto::SplitException, 'Divisor is less than zero') if divisor < 0
    raise(SplitInto::SplitException, 'Divisor is greater than the dividend') if divisor > dividend

    return [] if divisor.zero?

    buckets = Array.new(divisor){ dividend.div(divisor) }
    dividend.modulo(divisor).times { |i| buckets[i] += 1 } 
    buckets.reverse
  rescue Simplecheck::CheckFailed => exception
    raise SplitInto::SplitException, exception.message
  end
end
