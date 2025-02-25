# vim-jsearch

## What

To be used together with [Jsearch](https://github.com/taq/jsearch) to replace
the current line with the package import statement of the class under cursor.

## Using

## Get import statement in place

Just put the cursor under the class name and press `<C-P>`, the default mapping
on normal mode. For example, if the word under the cursor is `BufferedReader`,
when pressing `<C-P>`, the current line will be replaced with

```
import java.io.BufferedReader;
```

## Inserting import statement on the top of the file

Will try to insert the import statement among other ones, on the correct order.
Just put the cursor under the class name and press `<C-I>`, the default mapping
on normal mode.

## Install

With [vim-plug](https://github.com/junegunn/vim-plug):

```
Plug 'taq/vim-jsearch'
```

## Configuring

You can change the mapping to another one you want. The default mapping is set
as:

```
noremap <C-P> :ImportPackage<CR>
```

Change `<C-P>` to any key combination you want.
