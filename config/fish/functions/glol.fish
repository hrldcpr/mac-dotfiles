function glol
	 git log --all --graph --pretty=format:\
'%C(red)%h%C(reset)%x09%C(yellow)%d%C(reset) %s %C(cyan)(%cr) %C(blue)[%aN]%C(reset)'
end
