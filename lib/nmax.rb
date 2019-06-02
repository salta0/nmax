class NMax
  attr_accessor :result, :n

  def initialize(n)
    @result = []
    n.times do
      @result.push 0
    end
    @n = n
  end

  def find_max(input)
    numbers = input.scan(/\d+/).map { |m| m.to_i }
    @result = @result | numbers
    @result = @result.sort[-@n..-1]
  end
end
