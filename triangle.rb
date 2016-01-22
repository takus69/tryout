class Triangle
  def self.check(a, b, c)
    side = [a, b, c]
    side.sort!

    message = '三角形じゃないです＞＜'

    if side[0] <= 0 || side[1] <= 0 || side[2] <= 0
      return message
    end

    if side[0] + side[1] > side[2]
      if side[0] == side[1]
        if side[1] == side[2]
          message = '正三角形ですね！'
        else
          message = '二等辺三角形ですね！'
        end
      elsif side[1] == side[2]
          message = '二等辺三角形ですね！'
      else
        message = '不等辺三角形ですね！'
      end
    end

    return message
  end
end

if ARGV.size != 3
  puts '引数が違います'
else
  input = [ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i]
  puts(Triangle.check(input[0],input[1],input[2]))
end

