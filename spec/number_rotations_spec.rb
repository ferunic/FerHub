require 'number_rotation'
describe NumberRotation do
  it 'one digit numbers returns same number' do
    rotation = NumberRotation.new
    actual = rotation.rotate(1)
    expected = 1
    expect(actual).to eq(expected)
  end
 end