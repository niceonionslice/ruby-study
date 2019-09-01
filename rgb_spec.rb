require "./spec/spec_helper"
require "./rgb"

describe 'rgbテストを実行' do
  describe '16進数変換' do
    it "'#000000' is hax(0,0,0)" do
      rgb = Rgb.new
      expect(rgb.to_hax(0,0,0)).to eq '#000000'
    end

    it "'#FFFFFF' is hax(255,255,255)" do
      rgb = Rgb.new
      expect(rgb.to_hax(255,255,255)).to eq '#ffffff'
    end
  end

  describe '10進数変換' do
    it '#000000 is rgb[0,0,0]' do
      rgb = Rgb.new
      expect(rgb.to_ints('#000000')).to eq [0,0,0]
    end

    it '#FFFFFF is rgb[255,255,255]' do
      rgb = Rgb.new
      expect(rgb.to_ints('#ffffff')).to eq [255,255,255]
    end

  end

end
