require_relative 'test_helper'

# DataStructureErrorLibraryTest.
# @class_description
#   Tests the DataStructureError library.
class DataStructureErrorLibraryTest < Minitest::Test

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and
  #   README.md files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(::DataStructureErrorLibrary::VERSION)
  end

  # setup().
  # @abstract
  # Set fixtures.
  def setup()
  end

  # teardown().
  # @abstract
  # Cleanup.
  def teardown()
  end

end
