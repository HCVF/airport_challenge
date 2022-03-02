require "airport"

describe Airport do
  let(:airplane) { double :plane }

  it "should initialize an empty hangar" do
    expect(subject.hangar).to eq([])
  end

  describe "testing the #land method" do
    it "should respond to #land" do
      expect(subject).to respond_to(:land)
    end
    it "should enter a plane into the hangar" do
      subject.land(airplane)
      expect(subject.hangar).to eq([airplane])
    end
  end
end
