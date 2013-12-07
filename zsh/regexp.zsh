# regexp related stuff
#
# [[ "foobar_123" -regex-match "^([a-zA-Z0-9]+)_([0-9]+)$" ]] && echo match || echo no match
# [[ "foobar_123" -pcre-match "^(\w+)_(\d+)$" ]] && echo match || echo no match
#
# pcre_compile "^(\w+)_(\d+)$"
# pcre_match "foobar_123" && echo match || echo no match
#
# pcre_compile -i "^foobar\s+\d+$"
# pcre_match "fOoBaR   123" && echo match || echo no match
#
# [[ "fOoBaR   123" -pcre-match "^[fF][oO]{2}[bB][aA][rR]\s+\d+$" ]] && echo match || echo no match
#

#zmodload zsh/regex
#zmodload zsh/pcre
