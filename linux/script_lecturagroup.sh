TEXT=$(ls test.txt)
FILTERS=$(more filter.txt)

for filter in $FILTERS
do
	echo "${filter}:"
	grep -c ${filter} $TEXT
done
