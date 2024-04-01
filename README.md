<div align="center"> 
  <h1>Haxe Github</h1>
  <h4>
  Haxe functions to use the
  <a href='https://docs.github.com/en/rest?apiVersion=2022-11-28'>GitHub API Integration</a>.
  </h4>
  <img src="img/imgSharp.png" width=550/>
  <h2>Installation</h2>

  put this command in your cmd:
  ```bash
  haxelib install haxe-github
  ```

  if you want to have the latest version of Lib:
  ```bash
  haxelib git haxe-github https://github.com/GuineaPigUuhh/haxe-github.git
  ```

  <h2>Usage Exemple</h2>
</div>

```haxe
import haxegithub.utils.*;

final username:String = 'GuineaPigUuhh';
final reponame:String = 'haxe-github';

final repository = Repository.get(username, reponame);
final user = User.get(username);

Sys.println("USER: " + user.name);
Sys.println("FOLLOWERS: " + user.followers + ' FOLLOWING: ' + user.following);
Sys.println("REPOSITORY: " + repository.name + ' by ' + repository.owner.login);
```
Result:
```haxe
/*
  USER: https://api.github.com/users/GuineaPigUuhh
  FOLLOWERS: 12 FOLLOWING: 71
  REPOSITORY: https://api.github.com/repos/GuineaPigUuhh/haxe-github
*/
```

<div align="center"> 
  If you want more demonstrations of the use of the lib, go to the examples folder

  ---

  <h3><a href="https://github.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple">The library being used in HaxeFlixel:</a></h3>

  <img src="https://raw.githubusercontent.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple/main/img/view.png" width=600/>

  <h2>Developer:</h2>
  <a href="https://github.com/GuineaPigUuhh/">GuineaPigUuhh</a>
</div>