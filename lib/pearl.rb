# frozen_string_literal: true

require_relative "pearl/version"

module Pearl 
  class Error < StandardError; end
  # Your code goes here...

  LAYOUT_TEMPLATE = <<~HAML
    !!!
    %html
      %head
        %title
      %body
        = yield
  HAML

  def create_layout(name:)
    @name = name

    File.write("layouts/#{name}.haml", LAYOUT_TEMPLATE)
  end
end
