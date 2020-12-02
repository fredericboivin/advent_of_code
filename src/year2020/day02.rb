module Year2020
  class Day02
    def part1(input)
      parse(input) { |min, max, char, pwd| (min..max).cover?(pwd.count(char)) }
    end

    def part2(input)
      parse(input) { |min, max, char, pwd| (pwd[min - 1] == char) ^ (pwd[max - 1] == char) }
    end

    def parse(input)
      input.split.each_slice(3).count do |row|
        min, max = row[0].split('-').map(&:to_i)
        char = row[1][0]
        pwd = row[2]

        yield min, max, char, pwd
      end
    end
  end
end
