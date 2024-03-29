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
		final user = User.get(name);

		Sys.println("USER: " + user.name);
		Sys.println("FOLLOWERS: " + user.followers + ' FOLLOWING: ' + user.following);
		Sys.println("REPOSITORY: " + repository.name + ' by ' + repository.owner.login);
	}
}
