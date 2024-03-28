# Haxe Github

Haxe functions to use the [Github API](https://docs.github.com/pt/rest?apiVersion=2022-11-28).

<p align="center">
  <img src="img/img.png" width=300/>
</p>

## Installation

on GIT:

```bash
haxelib git haxe-github https://github.com/GuineaPigUuhh/haxe-github.git
```

## Usage Exemple

```haxe
import haxegithub.utils.*;

final name:String = 'GuineaPigUuhh';
final reponame:String = 'haxe-github';

trace("USER: " + User.get(name) + "\nREPOSITORY: " + Repository.get(name, reponame));
/*
Result:

USER: https://api.github.com/users/GuineaPigUuhh
REPOSITORY: https://api.github.com/repos/GuineaPigUuhh/haxe-github
*/
```

### on HaxeFlixel the Lib:

<p align="center">
  <img src="https://raw.githubusercontent.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple/main/img/e.PNG" width=600/>
</p>
