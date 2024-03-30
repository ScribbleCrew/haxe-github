<div align="center"> 
  <h1>Haxe Github</h1>

  Haxe functions to use the [Github API](https://docs.github.com/pt/rest?apiVersion=2022-11-28).

  <img src="img/imgSharp.png" width=550/>

  ## Installation

  on GIT:

  ```bash
  haxelib git haxe-github https://github.com/GuineaPigUuhh/haxe-github.git
  ```

  ## Usage Exemple
</div>

```haxe
import haxegithub.utils.*;

final name:String = 'GuineaPigUuhh';
final reponame:String = 'haxe-github';

final repository = Repository.get(name, reponame);
final user = User.get(name);

Sys.println("USER: " + user.name);
Sys.println("FOLLOWERS: " + user.followers + ' FOLLOWING: ' + user.following);
Sys.println("REPOSITORY: " + repository.name + ' by ' + repository.owner.login);
	
/*
  Result:

  USER: https://api.github.com/users/GuineaPigUuhh
  FOLLOWERS: 12 FOLLOWING: 71
  REPOSITORY: https://api.github.com/repos/GuineaPigUuhh/haxe-github
*/
```

<div align="center"> 
  If you want more demonstrations of the use of the lib, go to the examples folder

  ### [the Library being used in HaxeFlixel:](https://github.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple)

  <img src="https://raw.githubusercontent.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple/main/img/view.png" width=600/>
    
</div>