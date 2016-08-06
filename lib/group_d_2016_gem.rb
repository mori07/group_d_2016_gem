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
    end
