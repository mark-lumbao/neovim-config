# Random Notes I keep while learning vim

- IF Conditions with functions

  ```vim

  function! SampleFunction()
   if (--condition--)
     :PerformCMD
   else
     :PerformOtherCMD
   endif
  endfunction

  ```

- Checking for empty buffer

  ```vim
  getline(1) ==# '' && 1 == line('$')
  ```

- NPM Global Packages

```
  /usr/lib
  ├── @elm-tooling/elm-language-server
  ├── @tailwindcss/language-server
  ├── alex
  ├── corepack
  ├── elm-format
  ├── elm-review
  ├── elm-test
  ├── elm
  ├── eslint
  ├── fixjson
  ├── jsdoc
  ├── jsonlint
  ├── neovim
  ├── node-gyp
  ├── nopt
  ├── npm
  ├── prettier
  ├── semver
  ├── stylelint
  ├── svelte-language-server
  ├── typescript-language-server
  └── typescript
```
