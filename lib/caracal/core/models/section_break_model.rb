require 'caracal/core/models/base_model'


module Caracal
  module Core
    module Models

      # This class encapsulates the logic needed to store and manipulate
      # section break data.
      #
      class SectionBreakModel < BaseModel; end
      #-------------------------------------------------------------
      # Configuration
      #-------------------------------------------------------------

      # constants
      const_set(:DEFAULT_SECTION_BREAK_TYPE, "continuous")

      # accessors
      attr_reader :section_break_type

      # initialization
      def initialize(options={}, &block)
        @section_break_type = DEFAULT_SECTION_BREAK_TYPE

        super options, &block
      end


      #-------------------------------------------------------------
      # Public Methods
      #-------------------------------------------------------------

      #=============== SETTERS ==============================

      def type(value)
        @section_break_type = value
      end


      #=============== VALIDATION ==============================

      def valid?
        if section_break_type == "continuous" || section_break_type == ""
          true
        end
      end


      #-------------------------------------------------------------
      # Private Instance Methods
      #-------------------------------------------------------------
      private

      def option_keys
        [:type]
      end
    end
  end
end