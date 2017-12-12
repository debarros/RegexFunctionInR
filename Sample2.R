text2 = "http://stat.umn.edu:80/xyz"
pattern2 = "^(([^:]+)://)?([^:/]+)(:([0-9]+))?(/.*)"
replacement2 = "G"

grep(pattern2, text2, value = F, invert = F)
grep(pattern2, text2, value = F, invert = T)

grep(pattern2, text2, value = T, invert = F)
grep(pattern2, text2, value = T, invert = T)

grepl(pattern2, text2)

sub(pattern2, replacement2, text2)

gsub(pattern2, replacement2, text2)

regexpr(pattern2, text2)

regexec(pattern2, text2)

gregexpr(pattern2, text2)
