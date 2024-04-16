import haxegithub.utils.*;
import haxegithub.GithubAPI;
import haxegithub.objects.TokenUser;

class Main {
	static function main() {
		var user = new TokenUser('');
		user.follow('TheRealJake_12');
	}
}
