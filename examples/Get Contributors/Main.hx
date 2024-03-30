import haxegithub.utils.Repository;

class Main {
	static function main() {
		var contributors = Repository.getContributors('GuineaPigUuhh', 'haxe-github');
		for (i in contributors) {
			Sys.println(i.login);
		}
	}
}
