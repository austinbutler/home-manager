{
  programs.claude-code = {
    enable = true;

    keybindings = [
      {
        context = "Chat";
        bindings = {
          escape = null;
        };
      }
    ];
  };

  nmt.script = ''
    assertFileExists home-files/.claude/keybindings.json
    assertFileContent home-files/.claude/keybindings.json ${./expected-keybindings.json}
  '';
}
