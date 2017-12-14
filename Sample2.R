# Sample2.R
#   Text vector has one element
#   Pattern has parentheticals

text2 = "http://stat.umn.edu:80/xyz"
pattern2 = "^(([^:]+)://)?([^:/]+)(:([0-9]+))?(/.*)"
replacement2 = "G"

# grep(value = FALSE) returns a vector of the indices of the elements of x that yielded a match (or not, for invert = TRUE)
grep(pattern2, text2, value = F, invert = F)
grep(pattern2, text2, value = F, invert = T)

# grep(value = TRUE) returns a character vector containing the selected elements of x 
# (after coercion, preserving names but no other attributes).
grep(pattern2, text2, value = T, invert = F)
grep(pattern2, text2, value = T, invert = T)

# grepl returns a Logical vector (match or not for each element of x).
grepl(pattern2, text2)

# sub returns a character vector of the same length and with the same attributes as x 
# with the first occurrence of the pattern replaced
sub(pattern2, replacement2, text2)

# gsub returns a character vector of the same length and with the same attributes as x 
# with all occurrences of the pattern replaced
gsub(pattern2, replacement2, text2)

# regexpr returns an integer vector of the same length as text giving the starting position of the first match or -1 if there is none, 
# with attribute "match.length", an integer vector giving the length of the matched text (or -1 for no match). 
regexpr(pattern2, text2) # Where does pattern first occur in each element of text, and how long is that first match?

# regexec returns a list of the same length as text, each element of which is either -1 if there is no match, or a sequence of 
# integers with the starting positions of the match and all substrings corresponding to parenthesized subexpressions of pattern, 
# with attribute "match.length" a vector giving the lengths of the matches (or -1 for no match).
regexec(pattern2, text2) # mostly, for each element of text, where does pattern occur first, and how long is it?
# Note that, unless the pattern contains parenthetical expressions, the same information comes 
# from  regexec and regexpr (though in different formats)

# gregexpr returns a list of the same length as text, each element of which is an integer vector with the starting positions of 
# every (disjoint) match in that element of text or -1 if there is no match in that element of text, with attribute "match.length", 
# an integer vector giving the length of the matched text (or -1 for no match).
gregexpr(pattern2, text2) # for each element of text, where is every match?  And how long are they?

regmatches()