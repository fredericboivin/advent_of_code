require 'pry'

module Year2021
  class Day01
    def part1(input)
      measurements = input.split.map(&:to_i)
      last = measurements.shift
      increases = 0

      measurements.each do |ms|
        if ms > last
          increases +=1
        end

        last = ms
      end

    end

    def part2(input)
      measurements = input.split.map(&:to_i)
      increases = 0
      last = nil

      measurements.each_cons(3) do |ms|
        if last === nil
          last = ms
          next
        end

        if ms.sum > last.sum
          increases +=1
        end

        last = ms
      end

      increases
    end
  end
end
