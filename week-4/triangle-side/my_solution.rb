# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(side_1, side_2, side_3)
 if side_1 > side_2 && side_1 > side_3
   c = side_1
   b = side_2
   a = side_3
 end

 if side_2 > side_3 && side_2 > side_1
   c = side_2
   b = side_1
   a = side_3
 end

 if side_3 > side_2 && side_3 > side_1
   c = side_3
   b = side_2
   a = side_1
 end

 if side_1 == 0 || side_2 == 0 || side_2 == 0
   return false
 end

 if side_1 == side_2 && side_2 == side_3 && side_1 == side_3
   return true
 end

 if a ** 2 + b ** 2 == c ** 2
   return true
 end

 if side_1 == side_2
   return false
 end
end

