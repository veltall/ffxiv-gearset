cd $1
for old in *.png; do
  new=$(echo "$old" | sed "s/^[0-9]*_//g" | sed "s/\ /-/g" | sed "s/\(.*\)/\L\1/g");
  mv "$old" "$new";
done
cd ..