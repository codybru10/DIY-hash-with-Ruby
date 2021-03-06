require('rspec')
require('hash_editor')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetchValue("kitten")).to(eq("cute"))
    end

    it("retrieves a stored value by its value") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetchKey("cute")).to(eq("kitten"))
    end

    it("return true or false if it has a key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myHasKey?("kitten")).to(eq(true))
    end

    it("return true or false if it has a value") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myHasValue?("cute")).to(eq(true))
    end

    it("return length of object key value pairs") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "adorable")
      test_hash.myStore("baby panda", "sneezes")
      expect(test_hash.myLength()).to(eq(3))
    end

  end
end
