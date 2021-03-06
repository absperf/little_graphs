require 'spec_helper'

describe LittleGraphs do
  describe '#initialize' do
    context 'with width and height' do
      it 'sets width and height' do
        lg = LittleGraphs.new(100, 200)
        lg.width.should == 100
        lg.height.should == 200
      end
    end

    context 'without width and height' do
      it 'sets width and height to default' do
        lg = LittleGraphs.new
        lg.width.should == 100
        lg.height.should == 35
      end
    end
  end

  describe '#draw' do
    context 'with datapoints' do
      it 'draws a graph' do
        lg = LittleGraphs.new
        lg.draw([12, 3, 0, 9, 10, 8, 2, 4, 1], "example.jpeg")
      end
    end
  end

  describe '#define_coordinates' do
    context 'datapoints' do
      it 'finds x,y coordinates for 1D array' do
        lg = LittleGraphs.new
        coords = lg.define_coordinates([1, 2, 3, 4, 5])
        coords.should == [5, 28, 25, 21, 45, 14, 65, 7, 85, 0]
      end
    end
  end

  describe '#translate_datapoints' do
    context 'datapoints' do
      lg = LittleGraphs.new
      datapoints = [1, 2, 3, 4, 5]
      translated_datapoints = lg.translate_datapoints(datapoints)
      translated_datapoints.should == [28, 21, 14, 7, 0]
    end
  end
end
