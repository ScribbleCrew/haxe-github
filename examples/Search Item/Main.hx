import haxe.Json;
import haxegithub.utils.*;
import haxegithub.GithubAPI;

class Main {
	static function main() {
		final search = Search.repository('haxe-github', {
			language: 'haxe',
			page: 1,
			per_page: 10
		});
		Sys.println(search.items[0].full_name);
	}
}
