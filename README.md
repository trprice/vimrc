vimrc
=====

These are the vim files that I'm presently using.
<br>
<br>
Some of the items below (only syntastic at the moment) are submodules. To clone and update these, run the following:

    git clone --recurse https://github.com/trprice/vimrc.git

For older versions of git, run the following:

    git clone https://github.com/trprice/vimrc.git
    cd vimrc
    git submodule update --init
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
