## Personal Vim settings backup

Clone in the home folder: ~/.vim

**NOTE:** 

	mv ~/.vim/.vimrc ~/.vimrc

iTerm2 font settings for vim-airline:

![iTerm2 font settings for vim-airline](https://raw.githubusercontent.com/nickrealdini/.vim/master/iTerm2-font-settings.png)

### Vimdiff

Vimdiff can be run from the command-line with vimdiff file1 file2 [file3 [file4]]. This actually starts Vim in diff mode -- the previous command is actually equivalent to vim -d file1 file2 [file3 [file4]]. Vim requires a diff command to be available for this to work. Vim's documentation on this is available in :help diff.

### Git Settings

Fortunately for us Vim fanatics, it's fairly easy to get Vimdiff working with Git. Git has a lot of options for working with diffs, and one is diff.tool (man page: man git-config). Also related is the merge.tool setting which can be set to allow Vimdiff to be used as the merge resolution program.

These settings can be passed to Git without changing any configuration files:

	git difftool --tool=vimdiff --no-prompt

To tell Git to always use Vimdiff, issue the following commands:

	git config --global diff.tool vimdiff
	git config --global merge.tool vimdiff
	
Omit --global if you just want to set these for the repository in the working directory. Now typing git difftool should bring up Vimdiff.

Another useful option is difftool.prompt -- this will stop Vim prompting about launching vimdiff:

	git config --global difftool.prompt false
	
If you're just trying these commands out, then the prompt will seem annoying, but there are cases where you might want to ignore a few files so it can be useful.

### Editing Changed Files

I find myself combining Git's output with vim -p on certain occasions when I want to edit each changed file:

	vim -p `git diff --name-only`

#### Usage
	git difftool master master~10 -- foo.c

Presuming difftool is already set up correctly in 
`~/.gitconfig`

	[diff]
	  tool = vimdiff
	[difftool]
	  prompt = false
