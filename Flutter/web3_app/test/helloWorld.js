const HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", (accounts) => {
  let helloWorldInstance;

  before(async () => {
    helloWorldInstance = await HelloWorld.deployed();
  });

  it("should initialize with the correct message", async () => {
    const message = await helloWorldInstance.getMessage();
    assert.equal(message, "Hello, World!", "Message is not initialized correctly");
  });

  it("should set a new message", async () => {
    const newMessage = "New message";
    await helloWorldInstance.setMessage(newMessage);

    const updatedMessage = await helloWorldInstance.getMessage();
    assert.equal(updatedMessage, newMessage, "Message is not updated correctly");
  });
});
