package;

import haxe.Json;
import haxegithub.utils.*;

class Main {
	static function main() {
		final owner:String = 'GuineaPigUuhh';
		final reponame:String = 'haxe-github';

		final repository = Repository.get(owner, reponame);

		// Preferably, I didn't want to add get Contributors so as not to harm the Github server
		Sys.println('Repository Name: ' + repository.name);
		Sys.println('Repository Stars: ' + repository.stargazers_count);
		Sys.println('Repository Forks: ' + repository.forks_count);
	}
}
