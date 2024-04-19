import sys.io.File;
import haxegithub.objects.TokenUser;

class Main {
	static function main() {
		var target_user = "Hackx2";
		var user = new TokenUser(File.getContent('token.txt'));
		user.follow(target_user);
	}
}
