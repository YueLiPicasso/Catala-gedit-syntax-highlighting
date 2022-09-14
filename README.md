# GEdit syntax highlighting for Catala

This is to support syntax highlighting of English Catala code in GEdit. 

The code is modelled after the  [Catala syntax highlighting code for the iro compiler](https://github.com/CatalaLang/catala/blob/e7c3ef604e1862dee82a1395ee2a1ea6beb5f9a2/syntax_highlighting/en/catala_en.iro).  


## How to use

Copy the file [catala.lang](catala.lang) to the directory below (create if it does not exist) and then 
restart GEdit. 
```
~/.local/share/gtksourceview-4/language-specs
```

I use [test.catala_en](YCatala.catala_en) as a test file.

## Reference

Here I collect further resources which helped me write the code.


The posts below basically say that to provide gedit syntax highlighting support we simply need to write a XML file specifiying the syntax and put it under the gedit syntax highlighting directory.
```
https://unix.stackexchange.com/questions/4203/how-can-i-write-a-new-syntax-highlighter-for-gedit
https://askubuntu.com/questions/55494/how-do-i-add-a-syntax-highlighter-format-to-gedit
https://github.com/thomasysliu/Gedit-SPICE-syntax-highlighting
```

Below is a trouble shooting Q&A from a user who successfully added a custom syntax highlighting extension to gedit.
```
https://askubuntu.com/questions/295559/how-to-add-a-new-language-definition-for-syntax-highlighting-in-gedit
```

The definitive guide.
```
https://developer-old.gnome.org/gtksourceview/stable/syntax-highlighting-reference.html
```




