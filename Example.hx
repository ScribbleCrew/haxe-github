package;

import haxegithub.utils.*;

/**
 * Example of Lib
 */
class Example {
	static function main() {
		final name:String = 'GuineaPigUuhh';
		final reponame:String = 'haxe-github';

		final repository = Repository.get(name, reponame);

		Sys.println("USER: " + User.get(name).name);
		Sys.println("REPOSITORY: " + repository.name + ' by ' + repository.owner.login);
	}
}
