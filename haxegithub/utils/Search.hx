package haxegithub.utils;

import haxegithub.types.SearchSpecification;
import haxegithub.types.SearchSpecification.Parser;

/**
 * Github Search Util
 */
class Search {
	/**
	 * Search a Repository
	 * @param name 
	 * @param specification 
	 * @return Dynamic
	 */
	public static function repository(name:String, ?specification:SearchSpecification) {
		var api = new GithubAPI();
		api.request('search/repositories?q=$name' + Parser.doparse(specification));
		return api.json;
	}

	/**
	 * Search a User
	 * @param name 
	 * @param specification
	 * @return Dynamic
	 */
	public static function user(name:String, ?specification:SearchSpecification) {
		var api = new GithubAPI();
		api.request('search/users?q=$name' + Parser.doparse(specification));
		return api.json;
	}

	/**
	 * Search a Topic
	 * @param name 
	 * @param specification 
	 * @return Dynamic
	 */
	public static function topic(name:String, ?specification:SearchSpecification) {
		var api = new GithubAPI();
		api.request('search/topics?q=$name' + Parser.doparse(specification));
		return api.json;
	}

	/**
	 * Search an Issue
	 * @param name 
	 * @param specification 
	 * @return Dynamic
	 */
	public static function issue(name:String, ?specification:SearchSpecification) {
		var api = new GithubAPI();
		api.request('search/issues?q=$name' + Parser.doparse(specification));
		return api.json;
	}

	/**
	 * Search a Commit
	 * @param name 
	 * @param specification 
	 * @return Dynamic
	 */
	public static function commit(name:String, ?specification:SearchSpecification) {
		var api = new GithubAPI();
		api.request('search/commits?q=$name' + Parser.doparse(specification));
		return api.json;
	}

	/**
	 * Search a Label
	 * @param name 
	 * @param specification 
	 * @return Dynamic
	 */
	public static function label(name:String, ?specification:SearchSpecification) {
		var api = new GithubAPI();
		api.request('search/labels?q=$name' + Parser.doparse(specification));
		return api.json;
	}

	/**
	 * Search Code
	 * @param name 
	 * @param specification 
	 * @return Dynamic
	 */
	public static function code(name:String, ?specification:SearchSpecification) {
		var api = new GithubAPI();
		api.request('search/code?q=$name' + Parser.doparse(specification));
		return api.json;
	}
}
