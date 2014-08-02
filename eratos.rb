module Eratos
  def self.primes(n)
    return [] if n < 2

    limit = Math.sqrt(n).floor
    numbers = (2..n).to_a
    results = []
    while (p = numbers[0]) <= limit
      results.push p
      numbers -= (1..(n/p)).map{ |m| m * p }
    end
    results + numbers
  end
end

if __FILE__ == $0
  puts Eratos.primes(ARGV.shift.to_i).join(', ')
end
