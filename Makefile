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
	git add ${filename}
commit: add
	git commit -m ${comment}
push: commit
	git push ${file}
