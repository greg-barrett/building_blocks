require 'caeser_cipher.rb'

describe ".cipher" do
  context "given 'abc', 3'" do
    it "returns 'def'" do
      expect(cipher("abc", 3)).to eql("def")
    end
  end

  context "given blank string, '1'" do
    it "returns blank string" do
      expect(cipher("", 1)).to eql("")
    end
  end

  context "given no shift or 0" do
    it "returns input string 'abc'" do
      expect(cipher("abc")).to eql("abc")
    end
  end

  context ""
end
