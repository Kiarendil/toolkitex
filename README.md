# ToolkiTeX
## TeX's utils of macroses using in all my TeX files

### Gained from Ivan Utechev [@uteshev](https://github.com/uteshev).

| Action                  | Command line                                                                       |
| ----------------------- | ---------------------------------------------------------------------------------- |
| Download                | `git clone https://github.com/kiarendil/toolkitex && cd toolkitex`                 |
| Install                 | `make install`                                                                     |
| Uninstall               | `make uninstall`                                                                   |
| Create project          | `writex <project name> [-g\|--git]`                                                |


## Kiarticle
Class file for general purposes based on standard `article`.  
It loads the bunch of commonly used LaTeX packages:
* `amsmath`, `amsfonts`, `amssymb`, `onlyamsmath`;
* `cancel`, `icomma`, `mathrsfs`, `bigints`;
* `fontenc`, `inputenc`, `babel`, `geometry`;
* `graphicx`, `color`, `float`, `wrapfig`, `tikz`, `pgfplots`;
* `fancyhdr`, `fancyref`, `secdot`, `caption`;
* `enumitem`, `booktabs`, `array`.


## IUnits 
Provides a plenty of physical units and prefixes' macros.  