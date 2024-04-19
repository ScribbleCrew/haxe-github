import sys.io.File;
import haxegithub.objects.TokenUser;

class Main {
	static function main() {
		var user = new TokenUser(null, 'Hackx2');
		Sys.println(user.json.name);
	}
}
