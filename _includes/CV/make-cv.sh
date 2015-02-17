#=====================================================================
#          FILE:  cv.sh
#         USAGE:  Run manually to generate CV
#   DESCRIPTION:  Uses Pandoc to pull together Markdown documents
#                 & process them with Pandoc to generate my CV
#        AUTHOR:  Scott Granneman (RSG), Dennis Tenen
#       VERSION:  0.3
#=====================================================================

# Inlcude name in the date
cvName="denten-CV-$(date +%Y-%m-%d)"

# Combine into one file
# Only look for files that start with a digit
# to avoid other random md files
# pandoc [[:digit:]]*.md > temp.md
cat [[:digit:]]*.md > temp.md

# Convert into PDF

pandoc -H style.tex -so "imprints/$cvName.pdf" temp.md
