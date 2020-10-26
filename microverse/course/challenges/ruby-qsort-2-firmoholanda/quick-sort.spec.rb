require "./quick-sort.rb"

describe "#quick-sort" do
  context "when supplied with an empty array, it should return an empty array" do
    it {
      expect(quicksort([])).to eq []
    }
  end

  context "when supplied with an array that has only one element, it should return the same array" do
    it {
      expect(quicksort([43])).to eq [43]
    }
  end

  context "when supplied with a pre-sorted array, it should return the same array" do
    it {
      expect(quicksort([11, 33, 37, 43, 63])).to eq [11, 33, 37, 43, 63]
    }
  end

  context "when supplied with an array pre-sorted in reverse order, it should sort the array" do
    it {
      expect(quicksort([63, 43, 37, 33, 11])).to eq [11, 33, 37, 43, 63]
    }
  end

  context "when supplied with an unsorted array, it should sort the array" do
    it {
      expect(quicksort([43, 37, 11, 33, 63])).to eq [11, 33, 37, 43, 63]
    }
  end
end
