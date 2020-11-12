
# CMSIS-Pack generation requires various internal variables printed out
printvar-%: 
	@echo '$*=$($*)'

# Print variable with enclosing tags 
printvar-tagged-%: 
	@echo '$*=<LIST>$($*)</LIST>'

