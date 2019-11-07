
class Image
    def initialize(array_of_arrays)
        @array_of_arrays = array_of_arrays
    end

    def output_image
        @array_of_arrays.each do |subarray|
            puts subarray.join
        end
    end
end

image = Image.new([ 
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
])
image.output_image
# => 0000
# => 0100
# => 0001
# => 0000

