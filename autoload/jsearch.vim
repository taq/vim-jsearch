" Execute jsearch to search for package import statement
"
function! jsearch#getPackage(cls)
   return system("jsearch -is -c " . a:cls)
endfunction

" Replace current line with the import package statement
"
function! jsearch#ImportPackage()
   let cursorWord = expand('<cword>')
   let package    = jsearch#getPackage(cursorWord)
   call setline('.', package)
endfunction

" Find the import lines
"
function! jsearch#getImportLines()
   let pos     = 1
   let lines   = {}

   while pos < 100
      let line = getline(pos)
      let match = match(line, "import")

      if match >= 0
         let lines[pos] = line
      endif

      let pos += 1
   endwhile

   return lines
endfunction

" Eval if the line is not a package statement
"
function! jsearch#insertImportIfNotPackage(pos, package)
   let pos  = a:pos
   let line = getline(pos)

   " line 0 does not exist to getline
   if pos == 0
      let line = getline(1)
   endif

   if match(line, "package") >= 0
      let pos += 1
   endif

   call append(pos, a:package)
endfunction

" Insert the import statement on
"
function! jsearch#InsertImport()
   let cursorWord = expand('<cword>')
   let package    = jsearch#getPackage(cursorWord)
   let lines      = jsearch#getImportLines()

   if len(lines) < 1
      call jsearch#insertImportIfNotPackage(0, package)
      return
   endif

   let keys = sort(keys(lines))

   for key in keys
      let line = lines[key]
      if line > package
         call append(str2nr(key) - 1, package)
         return
      endif
   endfor

   let last_pos = keys[len(keys) - 1]
   call jsearch#insertImportIfNotPackage(last_pos, package)
endfunction
