require "group_d_2016_gem/version"

module GroupD2016Gem

class Sorter
  def select_sort
    tmp = self.dup
    res = []
    res.push tmp.delete_min until tmp.empty?
    res
  end
  def delete_min
    min_idx = find_index { |item| item == self.min }
    delete_at(min_idx)
  end



    def bubble_sort(a)
        n = a.size
        0.upto(n - 2) do |i|
            (n - 1).downto(i + 1) do |j|
                if a[j] < a[j - 1]
                    a[j], a[j - 1] = a[j - 1], a[j]
                    p a
                end
            end
        end 
    end
end
end


