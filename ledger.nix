{...}: {
  programs.nixvim.plugins.ledger = {
    enable = true;
    autoLoad = true;
    settings = {
      is_hledger = true;
    };
  };
}
