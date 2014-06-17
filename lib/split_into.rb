require 'simplecheck'
require 'split_into/split_error'

module SplitInto
  class <<self
    include Simplecheck
  end

  def self.split(dividend, divisor)
    check(dividend, Integer)
    check(divisor, Integer)

    raise(SplitInto::SplitError, 'Divisor is less than zero') if divisor < 0
    raise(SplitInto::SplitError, 'Divisor is greater than the dividend') if divisor > dividend

    return [] if divisor.zero?

    buckets = Array.new(divisor){ dividend.div(divisor) }
    dividend.modulo(divisor).times { |i| buckets[i] += 1 } 
    buckets.reverse
  rescue Simplecheck::CheckFailed => exception
    raise SplitInto::SplitError, exception.message
  end
end
