require "./spec/spec_helper"
require "./dog"

describe "Dog" do
  it "is named 'Pochi'" do
    dog = Dog.new
    expect(dog.name).to eq 'Pochi'
  end

  it 'has fangs' do
    dog = Dog.new
    expect(dog.fangs).to eq 2
  end

  it 'is alived' do
    dog = Dog.new
    # どうやらbe_〇〇という感じでメソッドを呼び出してtrueならOKという書き方ができるみたい。
    expect(dog).to be_alive
  end

  it 'is hogehoge' do
    dog = Dog.new
    expect(dog).to be_hogehoge
  end
end
