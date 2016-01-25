class Eratos
  def self.prime(n)
    cnt = 1
    ret = '2'

    i = 3
    while true do
      if n == cnt
        return ret
      end
      j = 3
      k = 0
      while j <= i ** (1/2.0) do
        if i % j == 0
          k = 1
          break
        end
        j += 2
      end
      if k == 0
        cnt += 1
        ret += ', ' + i.to_s
      end
      i += 2
    end
  end
end

n = ARGV[0].to_i
if n < 1
  puts 'wrong argument'
else
  puts Eratos.prime(n)
end
