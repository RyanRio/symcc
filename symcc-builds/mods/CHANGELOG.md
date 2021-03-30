This file contains notes to myself as I was modifying symcc as I started to repeat myself in terms of the errors I came across/weird functionality I encountered, so I should record them.

### 3/30/2021
Note that at most symcc should print out 
```
Symbolizer module init
Symbolizing function ...
```
If it is printing more then I have added and forgotten about an instruction print to `llvm::outs` or `llvm::errs`

added a small tinyexpr script for reading fuzzing queue files `tinyexpr_file`

created folder for saving changes to fuzzed targets