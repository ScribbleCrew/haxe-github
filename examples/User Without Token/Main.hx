import sys.io.File;
import haxegithub.utils.*;
import haxegithub.GithubAPI;
import haxegithub.objects.TokenUser;
import haxegithub.utils.User;
import sys.FileSystem;

class Main {
	static function main() {
		var user = User.get('GuineaPigUuhh');
		Sys.println(user.name);
		trace(user.json);
	}
}
