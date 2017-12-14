# Sample1.R
#   Text vector has more than one element
#   Pattern has no parentheticals

text1 = c("abc", "abab", "def")
pattern1 = "a"
replacement1 = "G"

# grep(value = FALSE) returns a vector of the indices of the elements of x that yielded a match (or not, for invert = TRUE)
grep(pattern1, text1, value = F, invert = F) # which elements of text have a match?
grep(pattern1, text1, value = F, invert = T) # which elements of text have no match?

# grep(value = TRUE) returns a character vector containing the selected elements of x 
# (after coercion, preserving names but no other attributes).
grep(pattern1, text1, value = T, invert = F) # what are the elements of text that have a match?
grep(pattern1, text1, value = T, invert = T) # what are the elements of text that have no match?

# grepl returns a logical vector (match or not for each element of x).
grepl(pattern1, text1) # Does each element of x have a match?

# sub returns a character vector of the same length and with the same attributes as x with the first occurrence of the pattern replaced
sub(pattern1, replacement1, text1) # In each element of x, replace each first instance of pattern with replacement

# gsub returns a character vector of the same length and with the same attributes as x with all occurrences of the pattern replaced
gsub(pattern1, replacement1, text1) # in each element of x, replace every instance of pattern with replacement

# regexpr returns an integer vector of the same length as text giving the starting position of the first match or -1 if there is none, 
# with attribute "match.length", an integer vector giving the length of the matched text (or -1 for no match). 
regexpr(pattern1, text1) # Where does pattern first occur in each element of text, and how long is that first match?

# regexec returns a list of the same length as text, each element of which is either -1 if there is no match, or a sequence of 
# integers with the starting positions of the match and all substrings corresponding to parenthesized subexpressions of pattern, 
# with attribute "match.length" a vector giving the lengths of the matches (or -1 for no match).
regexec(pattern1, text1) # mostly, for each element of text, where does pattern occur first, and how long is it?
# Note that, unless the pattern contains parenthetical expressions, the same information comes 
# from  regexec and regexpr (though in different formats)

# gregexpr returns a list of the same length as text, each element of which is an integer vector with the starting positions of 
# every (disjoint) match in that element of text or -1 if there is no match in that element of text, with attribute "match.length", 
# an integer vector giving the length of the matched text (or -1 for no match).
gregexpr(pattern1, text1) # for each element of text, where is every match?  And how long are they?


# regmatches basically allows you to use regexpr, gregexpr, or regexec as though they had 
# an invert parameter and grep's value = T setting
regmatches()

