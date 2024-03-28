# Haxe Github

Haxe functions to use the [Github API](https://docs.github.com/pt/rest?apiVersion=2022-11-28).

<p align="center">
  <img src="img/img.png" width=550/>
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

### [the Library being used in HaxeFlixel](https://github.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple):

<p align="center">
  <img src="https://raw.githubusercontent.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple/main/img/e.PNG" width=600/>
</p>
