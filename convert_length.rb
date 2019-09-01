class ConvertLength

  UNITS = {m: 1.0, ft: 3.28, in: 39.37}
  # 変換後の長さを求める式はこちら
  # キーワード引数を利用することで引数の意味がより明確になる
  def convert_length(length, from:, to:)
    # (変換前の長さ / 変換前の単位) * 変換後の単位
    (length / UNITS[from] * UNITS[to]).round(2)
  end
end
