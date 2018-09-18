# encoding: UTF-8
# frozen_string_literal: true

module ArrayTweaks
  module Extension
    def drop_last
      slice(0, (size - 1).abs) # or slice(0...-1)
    end

    def drop_last!
      slice!(-1)
    end

    def each_with_index_and_size
      size = self.size
      each_with_index { |item, index| yield(item, index, size) }
    end

    def each_after(n)
      each_with_index do |item, i|
        yield(item) if i >= n
      end
    end

    def map_key(key)
      map { |item| item[key] }
    end
  end
end

Array.include ArrayTweaks::Extension
