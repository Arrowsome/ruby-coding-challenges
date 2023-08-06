require_relative 'solution'

def find_rectangle(image)
  raise NotImplementedError
end

describe 'find_rectangle' do
  it "finds rectangle in image 01" do
    image_01 = [
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 0, 0, 0, 1],
      [1, 1, 1, 0, 0, 0, 1],
      [1, 1, 1, 1, 1, 1, 1],
    ]

    expect(find_rectangle(image_01)).to eq([2, 3, 3, 5])
  end

  it "finds rectangle in image 02" do
    image_02 = [
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 0],
    ]

    expect(find_rectangle(image_02)).to eq([4, 6, 4, 6])
  end

  it "finds rectangle in image 03" do
    image_03 = [
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 0, 0],
      [1, 1, 1, 1, 1, 0, 0],
    ]

    expect(find_rectangle(image_03)).to eq([3, 5, 4, 6])
  end

  it "finds rectangle in image 04" do
    image_04 = [
      [0, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
    ]

    expect(find_rectangle(image_04)).to eq([0, 0, 0, 0])
  end

  it "finds rectangle in image 05" do
    image_05 = [
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [0, 0, 1, 1, 1, 1, 1],
      [0, 0, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
    ]

    expect(find_rectangle(image_05)).to eq([2, 0, 3, 1])
  end

  it "finds rectangle in image 06" do
    image_06 = [
      [0],
    ]

    expect(find_rectangle(image_06)).to eq([0, 0, 0, 0])
  end
end
