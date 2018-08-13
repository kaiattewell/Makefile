.PHONY= test1
test_var = "hello"
filname = "a"
comment = "a"
test1:
	@echo "test1 ${test_var}"
	@echo "another test"
test2: test1
	@echo "test2"
add:
	@git add . 
commit: add
	@git commit -m ${comment}
push: commit
	@git remote add Makefile https://github.com/kaiattewell/Makefile.git
	@git push github Makefile
