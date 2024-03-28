package;

import haxegithub.utils.*;

/**
 * Example of Lib
 */
class Example {
	static function main() {
		var repoName = 'haxe-github';
		var searchRepo = Search.search(repoName);
		for (i in cast(searchRepo.items, Array<Dynamic>)) {
			if (i.name == repoName) {
				trace(i);
				break;
			}
		}
	}
}
