require File.expand_path(File.dirname(__FILE__) + '/../triangle.rb')

describe Triangle do
  describe '#check' do
    it 'is an equilateral triangle' do
      expect(Triangle.check(3,3,3)).to eq '正三角形ですね！'
    end
    it 'is an isosceles triangle' do
      expect(Triangle.check(3,3,5)).to eq '二等辺三角形ですね！'
      expect(Triangle.check(3,5,5)).to eq '二等辺三角形ですね！'
    end
    it 'is another triangle' do
      expect(Triangle.check(2,3,4)).to eq '不等辺三角形ですね！'
    end
    it 'is no triangle' do
      expect(Triangle.check(2,3,5)).to eq '三角形じゃないです＞＜'
      expect(Triangle.check(2,0,5)).to eq '三角形じゃないです＞＜'
    end
  end
end
