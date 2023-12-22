void main() {
  test('string to dec', () {
    expect(1, DecString.doubleFromDecString('100000000000000000'));
    expect(0.1, DecString.doubleFromDecString('10000000000000000'));}

}}

    var sdkResponse = SDKIPCResponse(
        success: true,
        error: '',
        data: [MOCK_RECIPE.toProto3Json()],
        errorCode: '',
        action: Strings.GET_RECIPES);
    IPCHandlerFactory.getHandler(sdkResponse);
    expect(true, responseCompleters[Strings.GET_RECIPES]!.isCompleted);
  });

    final sdkMessage = SDKIPCMessage.fromIPCMessage(message);
    expect(Strings.GET_PROFILE, sdkMessage.action);
    expect(MOCK_USERNAME, sdkMessage.json);
