const sayHello = require("./sayHello");

test("function sayHello", () => {
    expect(sayHello("Billy")).toBe("Hello Billy!");
})