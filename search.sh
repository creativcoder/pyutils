# search for method signatures through grep
# arguements in sequence are
#  -i   :ignore case
#  -n   :show line number
#  -I   :skip binary files (only match texts)
#  -E   :confirm to posix extended regular expressions
#  -r   :recursive search
#  "main" : pattern or method to match
# `.`   :directory to search for
#------------------------------------------------------
grep -inIEr "main" .
