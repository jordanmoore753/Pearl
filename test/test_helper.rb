# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "pearl"

require 'minitest/autorun'
require 'minitest/reporters'
require 'fileutils'
require 'tempfile'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new(time: true)
