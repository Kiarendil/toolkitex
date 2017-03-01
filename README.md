# ToolkiTeX: Kind of Te'mplate

| Action                  | Command line                                                                       |
| ----------------------- | ---------------------------------------------------------------------------------- |
| Install                 | `git clone https://github.com/uteshevia/toolkitex && cd toolkitex && make install` |
| Uninstall               | `make uninstall` in repo directory                                                 |
| Create project          | `writex [project name]`                                                            |

#### Changelog
`[ - ] 2017/01/01`&emsp; All the bones assembled into the single package IUnits.  
`[ - ] 2017/02/19`&emsp; Previous attempts have led to the creation of the class Urticle.  
`[1.0] 2017/02/19`&emsp; Implemented installer and *writex* script. First release.  
`[1.1] 2017/02/20`&emsp; Major install procedure improvement.  
`[1.2] 2017/02/22`&emsp; Added logical connectives.  
`[1.3] 2017/03/01`&emsp; Regular: added new units and invoked packages.

---

## Urticle
Class file for general purposes based on standard `article`.  
It requires the following LaTeX packages:
* `fontenc`, `inputenc`, `babel`, `geometry`;
* `amsmath`, `amsfonts`, `amssymb`, `onlyamsmath`;
* `cancel`, `icomma`, `mathrsfs`, `bigints`;
* `graphicx`, `color`, `float`, `wrapfig`;
* `tikz`, `pgfplots`, `gnuplottex`, `epstopdf` (off by default);
* `fancyhdr`, `fancyref`, `secdot`, `caption`;
* `enumitem`, `booktabs`, `array`;
* `inputx`, `iunits`.


## IUnits
LaTeX package to make typing scientific texts **in Russian** easier.  
Provides a plenty of physical units and prefixes' macros.  

**Usage:**&emsp;`Ускорение свободно падающего тела $ g = 9.8~\m/\s^2 $.`


## InputX
LaTeX package [by Blackstev](http://tex.stackexchange.com/a/44215) (2011/06/28) for better file includings.  
Command `\inputpaths` specifies the directories where `\include` and `\input` can look for the given file.  

**Usage:**&emsp;`\inputpaths {dir1, ..., dirN}`
