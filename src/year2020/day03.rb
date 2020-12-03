module Year2020
  class Day03
    def part1(input)
      data = input.split
      max_right = data[0].size
      max_bottom = data.size - 1

      r = [1, 3, 5, 7, 1]
      b = [1, 1, 1, 1, 2]

      trees = []

      r.each_with_index do |x_increment, index|
        pos_x = 0
        pos_y = 0
        tree_count = 0

        while pos_y < max_bottom
          pos_x = (pos_x + x_increment) % max_right
          pos_y += b[index]

          tree_count += 1 if data[pos_y].chars[pos_x] == "#"
        end

        trees << tree_count
      end

      return trees.inject(:*)
    end

    def part2(input)
    end
  end
end
