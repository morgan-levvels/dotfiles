function git-clean-local-branch
	git branch | grep -v "develop" | grep -v "main" | xargs git branch -D
end
