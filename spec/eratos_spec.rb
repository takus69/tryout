require File.expand_path(File.dirname(__FILE__) + '/../eratos.rb')

describe Eratos do
  describe '#prime' do
    it 'outputs prime numbers of a given integer' do
      expect(Eratos.prime(1)).to eq '2'
      expect(Eratos.prime(2)).to eq '2, 3'
      expect(Eratos.prime(3)).to eq '2, 3, 5'
      expect(Eratos.prime(10)).to eq '2, 3, 5, 7, 11, 13, 17, 19, 23, 29'
    end
  end
end
