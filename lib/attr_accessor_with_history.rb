class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      # attr_name getter
      def #{attr_name}; @#{attr_name};end
      
      # attr_name setter and attr_name_history setter
      def #{attr_name}=(val)
        @#{attr_name}_history ||= []
        @#{attr_name}_history << @#{attr_name}
        @#{attr_name}=val
      end
      
      # attr_name_history getter
      def #{attr_name}_history; @#{attr_name}_history; end
    }
  end
end
