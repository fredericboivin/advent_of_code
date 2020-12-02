module Year2020
  class Day01
    def part1(input)
      data = format_input(input)

      hash = {}
      first = nil
      second = nil

      data.each do |row|
        first = row
        complement = 2020 - first

        if hash[complement]
          second = complement
          break
        end

        hash[first] = complement
      end

      return first * second
    end

    def part2(input)
      data = format_input(input)
      set = data.combination(3).to_a

      set.each do |perm|
        if perm.sum == 2020
          return perm.inject(:*)
        end
      end
    end

    def format_input(input)
      data = input.split.map(&:to_i)
    end
  end
end
