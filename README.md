# vim-jsearch

To be used together with [Jsearch](https://github.com/taq/jsearch) to replace
the current line with the package import statement of the class under cursor.

Just put the cursor on the class and press <CTRL><p>, the default mapping, on
normal mode. You can change the mapping to another one you want. The default
mapping is set as:

```
noremap <C-P> :ImportPackage<CR>
```

Change `<C-P>` to any key combination you want.
