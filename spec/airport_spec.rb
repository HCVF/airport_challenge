require "airport"

describe Airport do
  let(:airplane) { double :plane }
  capacity = Airport::CAPACITY

  it "should initialize an empty hangar" do
    expect(subject.hangar).to eq([])
  end

  describe "#land" do
    it "should respond to #land" do
      expect(subject).to respond_to(:land)
    end
    it "should enter a plane into the hangar" do
      subject.land(airplane)
      expect(subject.hangar).to eq([airplane])
    end
    it "should raise error if hangar is full" do
      capacity.times { subject.land(airplane) }
      expect { subject.land(airplane) }.to raise_error("Airport full")
    end
  end

  describe "#take_off" do
    it "should remove a plane from the hangar" do
      subject.land(airplane)
      subject.take_off(airplane)
      expect(subject.hangar).to eq([])
    end
  end
end
