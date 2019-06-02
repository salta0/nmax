require './lib/nmax'

RSpec.describe 'NMax' do
  describe '#initialize' do
    it '@result is array that contain n zeros' do
      nm = NMax.new(5)
      expect(nm.result).to eq([0, 0, 0, 0, 0])
    end
  end

  describe '#find_max' do
    let(:input_string) { "sdfj23 de346esj5 jkfd3 21sdjl8 s32dkj9" }
    it '@result contain n max digits' do
      nm = NMax.new(5)
      nm.find_max(input_string)
      expect(nm.result).to eq([9, 21, 23, 32, 346])
    end
  end
end
