printvar-%: 
	@echo '$*=$($*)'

printvar-tagged-%: 
	@echo '$*=<LIST>$($*)</LIST>'

