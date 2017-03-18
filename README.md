# ToolkiTeX: Kind of Te'mplate

| Action                  | Command line                                                                       |
| ----------------------- | ---------------------------------------------------------------------------------- |
| Install                 | `git clone https://github.com/uteshevia/toolkitex && cd toolkitex && make install` |
| Uninstall               | `make uninstall` in repo directory                                                 |
| Create project          | `writex [project name]`                                                            |

#### Changelog
`[ - ] 2017/01/01`&emsp; All the bones assembled into the single package IUnits  
`[ - ] 2017/02/19`&emsp; Previous attempts have led to the creation of the class Urticle  
`[1.0] 2017/02/19`&emsp; Implemented installer and *writex* script. First release  
`[1.1] 2017/02/20`&emsp; Major install procedure improvement  
`[1.2] 2017/02/22`&emsp; Added logical connectives  
`[1.3] 2017/03/01`&emsp; Added new units and invoked packages  
`[1.4] 2017/03/02`&emsp; Switched pgfplots on by default  
`[1.5] 2017/03/07`&emsp; Regular usability improvements  
`[1.6] 2017/03/18`&emsp; New math definitions and patches

---

## Urticle
Class file for general purposes based on standard `article`.  
It introduces a pack of frequently used definitions and requires the following LaTeX packages:
* `fontenc`, `inputenc`, `babel`, `geometry`;
* `amsmath`, `amsfonts`, `amssymb`, `onlyamsmath`;
* `cancel`, `icomma`, `mathrsfs`, `bigints`;
* `graphicx`, `color`, `float`, `wrapfig`, `tikz`, `pgfplots`;
* `fancyhdr`, `fancyref`, `secdot`, `caption`;
* `enumitem`, `booktabs`, `array`;
* `inputx`, `iunits`.

<br/>

## IUnits
LaTeX package to make typing scientific texts **in Russian** easier.  
Provides a plenty of physical units and prefixes' macros.  

**Usage:**&emsp;`Ускорение свободно падающего тела $ g = 9.8~\m/\s^2 $.`

<br/>

## InputX
LaTeX package [by Blackstev](http://tex.stackexchange.com/a/44215) (2011/06/28) for better file includings.  
Command `\inputpaths` specifies the directories where `\include` and `\input` can look for the given file.  

**Usage:**&emsp;`\inputpaths {dir1, ..., dirN}`
