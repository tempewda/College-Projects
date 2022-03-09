#! /usr/bin/bash
# doesn't work on windows, Linux only

echo "Convert the quadratic equation in the form:"
echo "ax^2 + bx + c = 0"
echo "Enter the values of a, b, c"
echo -e "a: \c"
read -r a
echo -e "b: \c"
read -r b
echo -e "c: \c"
read -r c

#discriminant
d=$(echo "scale=2; ($b^2) - (4*$a*$c)" | bc)

#discriminant less than 0, unreal roots
if [ "$d" -lt 0 ]
then
    sq=$(echo "scale=2; sqrt(-($d))" | bc -l)
    echo The roots are:
    b=$(echo "-($b)" | bc)
    echo "($b + $sq i) / $(( 2*a ))"
    echo "($b - $sq i) / $(( 2*a ))"

#discriminant equals 0, equal roots
elif [ "$d" -eq 0 ]
then
    x=$(echo "scale=2; (-($b)) / (2*$a)" | bc)
    echo The roots are equal: "$x"

#discriminant greater than 0, real roots
else
    x1=$(echo "scale=2; (-($b) + sqrt($d)) / (2*$a)" | bc -l)
    x2=$(echo "scale=2; (-($b) - sqrt($d)) / (2*$a)" | bc -l)
    echo The roots are "$x1" and "$x2"
fi
