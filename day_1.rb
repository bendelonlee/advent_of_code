
class String
  def to_i_plus_minus
    n = self[1..-1].to_i
    case self[0]
    when '-'
      -1 * n
    else
      n
    end
  end

  def sum_data
    split.sum{|n|n.to_i_plus_minus}
  end
end

data = File.open(ARGV.first).read
puts "The answer is: #{data.sum_data}"
