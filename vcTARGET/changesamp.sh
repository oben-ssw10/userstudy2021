mkdir resamp
find . -name '*.wav' | sort -V | sed -e 's|^|sox |' -e 's|$| -r 22050 -c 1 |' > aa
find . -name '*.wav' | sort -V | sed -e 's|\.\/||' -e 's|^|resamp/|' > bb
paste aa bb > ab.sh
chmod u=rwx ab.sh
./ab.sh

mv resamp/* .
rmdir resamp
