# frozen_string_literal: true

require "../lib/caesar_cipher"

describe "#caesar_cipher" do
  it "works with lowercase letters" do
    expect(caesar_cipher("what", 5)).to eql("bmfy")
  end

  it "works with uppercase letters" do
    expect(caesar_cipher("What", 5)).to eql("Bmfy")
  end

  it "works with spaces" do
    expect(caesar_cipher("What a string", 5)).to eql("Bmfy f xywnsl")
  end

  it "works with puncuation" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "works with a positive key" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "works with a negative key" do
    expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eql("What a string!")
  end

  it "works with an empty string" do
    expect(caesar_cipher("", 5)).to eql("")
  end
end
