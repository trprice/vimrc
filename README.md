vimrc
=====

These are the vim files that I'm presently using.
<br>
<br>
My .vimrc uses Vundle to handle installing other plugins. Go https://github.com/gmarik/Vundle.vim and follow the instructionsto install the latest version of Vundle.
<br>
<br>

Top Level Directory:
--------------------
* \_vimrc - Windows vimrc.
* .vimrc - Linux vimrc.
<br>
<br>

functions\\bundle Directory:
----------------------------

*   my\_functions directory:
    Contains the .vim files that I've added that I haven't found git repositories for.

*   vundle
    A submodule for gmarik/vundle. Vundle will handle installing all of the plugins listed in the vimrc files.
<br>
<br>


functions\\plugin\\my\_functions Directory:
----------------------------

*   split\_diff\_registers.vim
    Opens a new tab containing a diff of the text in registers a and b. I've used this mostly for comparing two functions within the same file.
    I don't recall at this point who I pulled this from (sorry!).

*   markdown.vim
    Binds ,p to opening a browser to render the markdown file being worked on. This comes from [Nate Silva's Blog.](http://blog.natesilva.com/post/5256838248/how-to-preview-a-markdown-document-in-vim)
