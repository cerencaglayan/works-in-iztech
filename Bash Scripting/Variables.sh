#adlandirmada = ifadesi ile dip dibe yazım önemli:
variable=5
echo $variable

#A backslash "\" is used to escape special character meaning
#${} ile de string formatlama oluyor.
PRICE_PER_APPLE=5
echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"
echo "The price of an Apple today is: ${PRICE_PER_APPLE}"

# <!- not: encapsulate yaparsan stringleri boşluları ile yazarsın. >
