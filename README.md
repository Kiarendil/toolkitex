# ToolkiTeX: Kind of Te'mplate

| Action                  | Command line                                                                       |
| ----------------------- | ---------------------------------------------------------------------------------- |
| Download                | `git clone https://github.com/uteshevia/toolkitex && cd toolkitex`                 |
| Install                 | `make install`                                                                     |
| Uninstall               | `make uninstall`                                                                   |
| Create project          | `writex <project name> [-g\|--git]`                                                |


## Urticle
Class file for general purposes based on standard `article`.  
It loads the bunch of commonly used LaTeX packages:
* `amsmath`, `amsfonts`, `amssymb`, `onlyamsmath`;
* `cancel`, `icomma`, `mathrsfs`, `bigints`;
* `fontenc`, `inputenc`, `babel`, `geometry`;
* `graphicx`, `color`, `float`, `wrapfig`, `tikz`, `pgfplots`;
* `fancyhdr`, `fancyref`, `secdot`, `caption`;
* `enumitem`, `booktabs`, `array`.


## IUnits
LaTeX package to make typing scientific texts **in Russian** easier.  
Provides a plenty of physical units and prefixes' macros.  
*The package is switched off by default since v1.8. It is still possible to load it manually.*

**Usage:**&emsp;`Ускорение свободно падающего тела $ g = 9.8~\m/\s^2 $.`  
**Now it works without this package:**&emsp;`$ g = 9.8~м/с $`


## InputX
LaTeX package [by Blackstev](http://tex.stackexchange.com/a/44215) (2011/06/28) for better file includings.  
Command `\inputpaths` specifies the directories where `\include` and `\input` can look for the given file.  
*The package is switched off by default since v1.7. It is still possible to load it manually.*

**Usage:**&emsp;`\inputpaths {dir1, ..., dirN}`  
