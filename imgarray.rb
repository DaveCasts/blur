
class Image
  def initialize(array)
    @array = array
  end

  def output_image
    @array.each do |subarray|
      puts subarray.join
    end
  end

  def blurz!
    blurz = []
    @array.each_with_index do |row, i|
      row.each_with_index do |x, row_i|
        blurz << [i, row_i] if x == 1
      end 
    end

    blurz.each do |cords|
      @array[cords[0]][cords[1] + 1] = 1 if cords[1] + 1 <= @array[cords[0]].length - 1
      @array[cords[0]][cords[1] - 1] = 1 if cords[1] - 1 >= 0
      @array[cords[0] + 1][cords[1]] = 1 if cords[0] + 1 <= @array.length - 1
      @array[cords[0] - 1][cords[1]] = 1 if cords[0] - 1 >= 0
    end
  end
end

image = Image.new([ 
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
  [1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
])
image.blurz!
image.output_image

