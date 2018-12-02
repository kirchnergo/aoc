# Download Input

```zsh
for i in `seq 1 25`; 
  curl https://adventofcode.com/2017/day/$i/input -H 'Cookie: session=123..' 
  > ${(l:2::0:)i}.txt
```

## Download Problems

```zsh
for i in `seq 1 25`; 
  pandoc -s -r html https://adventofcode.com/2017/day/$i 
  -t gfm -f html-native_divs-native_spans -o ${(l:2::0:)i}.md
```

Delete header:
```zsh
for i in `seq 1 25`; sed -i '' '/^##/,$!d' ${(l:2::0:)i}.md
```
and footer:
```zsh
for i in `seq 1 25`; sed -i '' '/^To play,/,$d' ${(l:2::0:)i}.md
```
and one of the ending empty lines:
```zsh
for i in `seq 1 25`; sed -i '' '$ d' ${(l:2::0:)i}.md
```