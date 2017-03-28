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
  end
end

Array.include ArrayTweaks::Extension
