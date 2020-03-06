require "test_helper"

class DataStructureErrorLibraryTest < Minitest::Test

  def test_version_defined()
    refute_nil ::DataStructureErrorLibrary::VERSION
  end

end
