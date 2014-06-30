require 'simplecheck'
require 'split_into/split_error'

module SplitInto
  class << self
    include Simplecheck
  end

  def self.split(dividend, divisor)
    check(dividend, divisor, Integer, error_message: 'Dividend and divisor must be of type Integer')
    check(divisor >= 0, error_message: 'Divisor is less than zero')
    check(divisor <= dividend, error_message: 'Divisor is greater than the dividend')

    return [] if divisor.zero?

    parts = Array.new(divisor, dividend.div(divisor))
    dividend.modulo(divisor).times { |i| parts[i] += 1 }
    parts.reverse
  rescue Simplecheck::CheckFailed => exception
    raise SplitInto::SplitError, exception.message
  end
end
