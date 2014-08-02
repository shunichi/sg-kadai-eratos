module Eratos
  def self.primes(n)
    []
  end
end

if __FILE__ == $0
  puts Eratos.primes(ARGV.shift).join(', ')
end
