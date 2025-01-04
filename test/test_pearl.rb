# frozen_string_literal: true

require_relative "test_helper"

class TestPearl < Minitest::Test
  def setup
    @layouts_dir = "layouts"
    @docx_dir = "docx"
    @converted_dir = "site"
    
    [@layouts_dir, @docx_dir, @converted_dir].each { |path| FileUtils.mkdir_p(path) }

    @layout_name = "post"
    @layout_file = File.join(@layouts_dir, "#{@layout_name}.haml")
    File.write(@layout_file, "!!!\n%html\n  %head\n    %title Post Layout\n  %body\n    .content\n      = yield")

    @docx_filename = "example-1.docx.#{@layout_name}"
    @docx_path = File.join(@docx_dir, @docx_filename)
    File.write(@docx_path, "Dummy DOCX content")
  end

  def teardown
    FileUtils.rm_rf(@layouts_dir)
    FileUtils.rm_rf(@docx_dir)
    FileUtils.rm_rf(@converted_dir)
  end

  def test_that_it_has_a_version_number
    refute_nil ::Pearl::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
