require "group_d_2016_gem/version"

module GroupD2016Gem
  class Sorter
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
        a 
    end
  
    # Merge Sort 
    # Use this method if you want to sort.
    def merge_sort(list)
      length = list.length

      if length <= 1
	return list
      end
      
      mid = length/2
      a = list.slice(0...mid)
      b = list.slice(mid..-1)
      ma = merge_sort(a)
      mb = merge_sort(b)

      merge(ma, mb)
    end

    # Merge the list
    def merge(a, b)
      res = []
      until a.empty? && b.empty?
	res <<
	  case
	  when a.empty? then b.shift
	  when b.empty? then a.shift
	  when a.first < b.first then a.shift
	  else b.shift
	  end
      end
      res
    end

  end
end

