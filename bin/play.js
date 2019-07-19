const nearley = require("../lib/nearley");


json();

function cssColor() {
    const grammar = require("../examples/js/csscolor");
    const parser = new nearley.Parser(
        nearley.Grammar.fromCompiled(grammar),
        { keepHistory: false }
    );
    try {
        parser.feed("b4d4ss");
        console.log("results", parser.results);
    } catch (e) {
        console.log(e.message);
    }
}

function json() {
    const grammar = require("../examples/json2.js");
    const parser = new nearley.Parser(
        nearley.Grammar.fromCompiled(grammar),
        { keepHistory: false }
    );
    try {
        let code = `[
            {
                "name": "Kate"
                "age": 9
            }
        ]`;
        parser.feed(code);
        console.log("results", parser.results);
    } catch (e) {
        console.log(e.message);
    }
}
