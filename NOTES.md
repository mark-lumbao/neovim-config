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
