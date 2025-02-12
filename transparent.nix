{...}: {
  programs.nixvim.plugins.transparent = {
    enable = true;
    autoLoad = true;
    settings = {
      extra_groups = [
        "BlinkCmpMenuSelection"
        "DiagnosticSignError"
        "DiagnosticSignHint"
        "DiagnosticSignInfo"
        "DiagnosticSignOk"
        "DiagnosticSignWarn"
        "Error"
        "ErrorMsg"
        "LineNr"
        "LineNrAbove"
        "LineNrBelow"
        "MsgArea"
        "MsgSeparator"
        "Normal"
        "NormalFloat"
        "PMenuSbar"
        "Pmenu"
        "PmenuExtra"
        "PmenuExtraSel"
        "PmenuKind"
        "PmenuKindSel"
        "PmenuMatchSel"
        # "PmenuSel"
        "PmenuThumb"
        "StatusLine"
        "StatusLineNC"
        "WinBar"
        "WinBarNC"
        "WinSeparator"
      ];
      exclude_groups = [
        # "CursorLine"
        # "CursorLineNR"
        # "CursorLineSign"
        # "CursorLineFold"
        # "NeoTreeCursorLine"
        # "StatusLine"
      ];
    };
  };
}
