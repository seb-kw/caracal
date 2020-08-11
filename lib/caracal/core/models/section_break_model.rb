require 'caracal/core/models/base_model'


module Caracal
  module Core
    module Models

      # This class encapsulates the logic needed to store and manipulate
      # section break data.
      class SectionBreakModel < BaseModel

        #-------------------------------------------------------------
        # Configuration
        #-------------------------------------------------------------

        # constants
        const_set(:DEFAULT_SECTION_BREAK_CONTINUOUS, 'continuous')

        # accessors
        attr_reader :section_break_continuous

        # initialization
        def initialize(options={}, &block)
          @section_break_continuous = DEFAULT_SECTION_BREAK_CONTINUOUS

          super options, &block
        end


        #-------------------------------------------------------------
        # Public Methods
        #-------------------------------------------------------------

        #=============== SETTERS ==============================

        # value can be 'continuous' or 'nextPage'
        def type(value)
          allowed = ['nextPage','continuous']
          given   = value.to_s
          @section_break_continuous = allowed.include?(given) ? given : 'portrait'
        end


        #-------------------------------------------------------------
        # Private Instance Methods
        #-------------------------------------------------------------
        private

        def option_keys
          [:continuous]
        end

      end

    end
  end
end
