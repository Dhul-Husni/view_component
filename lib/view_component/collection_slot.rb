# frozen_string_literal: true

module ViewComponent
  class CollectionSlot
    attr_accessor :content

    class << self
      def inherited(child)
        child.module_parent.register_slot(child)
      end

      def to_sym
        self.name.demodulize.to_s.downcase.to_sym
      end
    end
  end
end
