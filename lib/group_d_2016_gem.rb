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
<<<<<<< HEAD
end
=======
end 
>>>>>>> master
