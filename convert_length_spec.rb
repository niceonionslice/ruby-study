require "./spec/spec_helper"
require "./convert_length"

# 仕様について

# ・メートル(m)、フィート(ft)、インチ(in)の単位を相互に変換する
# ・第１引数に変換元の長さ（数値）、第２引数に変換元の単位、第３引数に変換後の単位を指定する
# ・メソッドの戻り値は変換後の長さ（数値）とする。端数が出る場合は小数第３位で四捨五入する
# ・単位　メートル 1.00 フィート 3.28 インチ 39.37

describe '長さの単位を変換する' do
  it 'メートルを変換' do
    cl = ConvertLength.new
    expect(cl.convert_length(1, from: :m, to: :in)).to eq 39.37
  end

  it 'フィートを変換' do
    cl = ConvertLength.new
    expect(cl.convert_length(35000, from: :ft, to: :m)).to eq 10670.73
  end

  it 'インチを変換' do
    cl = ConvertLength.new
    expect(cl.convert_length(15, from: :in, to: :m)).to eq 0.38
  end
end
