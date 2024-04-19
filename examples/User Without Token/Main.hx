import sys.io.File;
import haxegithub.utils.*;
import haxegithub.GithubAPI;
import haxegithub.objects.TokenUser;
import sys.FileSystem;

class Main {
	static function main() {
		var user = new TokenUser(null, 'Hackx2');
		Sys.println(user.json.name);
		trace(user.json);
	}
}
