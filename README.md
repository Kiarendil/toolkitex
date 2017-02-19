# ToolkiTeX: Kind of LaTe'mplate

**Installation:**&emsp;&emsp; `git clone https://github.com/uteshevia/toolkitex && cd toolkitex && make install`  
**Uninstallation:**&ensp;&thinsp; `make uninstall` in repo directory  
**Usage:**&emsp;&emsp;&emsp;&emsp;&thinsp; `writex [file name]` to create bare tex project and initialize git repository

---

## Urticle
Class file for general purposes based on standard `article`.  
It requires the following LaTeX packages:
* `fontenc`, `inputenc`, `babel`, `geometry`
* `amsmath`, `amsfonts`, `amssymb`, `onlyamsmath`
* `cancel`, `icomma`, `mathrsfs`, `bigints`
* `graphicx`, `color`, `float`, `wrapfig`
* `tikz`, `pgfplots`
* `gnuplottex`, `epstopdf` (off by default)
* `fancyhdr`, `fancyref`, `secdot`
* `enumitem`, `booktabs`, `array`
* `inputx`, `iunits`

#### Changelog
`2017/02/19a`&emsp; All previous attempts have led to the creation of the class.  
`2017/02/19b`&emsp; Added code section *Definitions.*


## IUnits
LaTeX package to make typing scientific texts **in Russian** easier.

> Provides a plenty of physical units and prefixes' macros.  
> See the package content for help since it is rather self-descriptive.

**Usage:**&emsp;`Ускорение свободно падающего тела $ g = 9.8~\m/\s^2 $.`

#### Changelog
`[1.0] 2017/01/01`&emsp; All the bones assembled into the single package.  
`[1.1] 2017/01/30`&emsp; Added units:&ensp; _hour_, _litre_, _millilitre_.


## InputX
LaTeX package [by Blackstev](http://tex.stackexchange.com/a/44215) (2011/06/28) for better file includings.

> Command `\inputpaths` specifies the directories where `\include` and `\input` can look for the given file.  
> The latter use the root directory whilst input paths are not set.

**Usage:**&emsp;`\inputpaths {dir1, ..., dirN}`
