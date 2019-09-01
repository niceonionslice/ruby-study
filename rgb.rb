class Rgb

  def to_hax(r,g,b)
    # 先頭には必ずシャープを追加すること
    # r,g,bについては16進数に変換すること to_s
    # 16進数に変換後はからなず2桁表示であること rjust
    # injestを利用して文字変換したものをつなげることで16進数を返すことができそう。
    [r,g,b].inject('#') do |hex, ele|
      hex += ele.to_s(16).rjust(2,'0')
    end
  end

  def to_ints(hex)
    # 正規表現を利用することで、文字列を判定の結果を抽出する
    rgb = hex.scan(/\w\w/) #正規表現で文字列だけ
    rgb.map(&:hex)
  end
end
