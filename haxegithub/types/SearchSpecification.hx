package haxegithub.types;

typedef SearchSpecification = {
	@:optional var language:String;
	var page:Int;
	var per_page:Int;
	@:optional var sort:String;
	@:optional var order:String;
}

class Parser {
	/**
	 * Parse the Specification Object into a Part of the GitHub Search URL
	 * @param object 
	 * @return String
	 */
	public static function doparse(?object:SearchSpecification) {
		if (object == null)
			object = {
				page: 0,
				per_page: 10
			};
		var text:String;
		for (i in Reflect.fields(object)) {
			var value = Reflect.field(object, i);
			var prefixs = (i == 'language' ? ['&', '='] : ['+', ':']);
			text += prefixs[0] + i + prefixs[1] + value;
		}
		return text;
	}
}
