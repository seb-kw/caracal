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
        const_set(:DEFAULT_SECTION_BREAK_CONTINUOUS, "continuous")

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

        def type(value)
          @section_break_continuous = value.to_s
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
