import sys.io.File;
import haxegithub.utils.*;
import haxegithub.GithubAPI;
import haxegithub.objects.TokenUser;
import sys.FileSystem;

class Main {
	static function main() {
		var user = new TokenUser();

		/*if he doesn't find a token he will use this name to get the information, remembering that you can't hack the user!*/
		user.default_username = "Hackx2";

		Sys.println(user.name);
	}
}
