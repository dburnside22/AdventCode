

def day_two(arr, target_number)
  99.times do |one|
    99.times do |two|
      returned_array = day_two_part_one(arr, one, two)
      if (return_array[0] == target_number)
        p one
        p two
        return 'done'
    end
  end
end


def day_two_part_one(input_arr, switch_index_1, switch_index_2)
  answer = input_arr
  answer[1] = switch_index_1
  answer[2] = switch_index_2
  input_arr.each_with_index  do |element, index|
    if (index % 4 == 0)
      if (element == 99)
        return answer
      else
        next_number = answer[index + 1]
        second_number = answer[index + 2]
        third_number = answer[index + 3]
        if (element == 1)
          answer[third_number] = answer[next_number] + answer[second_number]
        else
          answer[third_number] = answer[next_number] * answer[second_number]
        end
      end
    end
  end
  return answer
end





p day_two([1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,19,5,23,2,9,23,27,1,5,27,31,1,5,31,35,1,35,13,39,1,39,9,43,1,5,43,47,1,47,6,51,1,51,13,55,1,55,9,59,1,59,13,63,2,63,13,67,1,67,10,71,1,71,6,75,2,10,75,79,2,10,79,83,1,5,83,87,2,6,87,91,1,91,6,95,1,95,13,99,2,99,13,103,1,103,9,107,1,10,107,111,2,111,13,115,1,10,115,119,1,10,119,123,2,13,123,127,2,6,127,131,1,13,131,135,1,135,2,139,1,139,6,0,99,2,0,14,0],
19690720)
