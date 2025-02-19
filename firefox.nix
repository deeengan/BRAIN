{...}: {
  programs.firefox = {
    enable = true;

    # https://mozilla.github.io/policy-templates/
    policies = {
      DontCheckDefaultBrowser = true;
      DisableMasterPasswordCreation = true;
      DisablePasswordReveal = true;
      DisableFirefoxScreenshots = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DisplayBookmarksToolbar = "never";
      DisplayMenuBar = "never";
      HttpsOnlyMode = "force_enabled";

      EnableTrackingProtection = {
        Cryptomining = true;
        Fingerprinting = true;
        Locked = true;
        Value = true;
      };

      ExtensionSettings = {
        "*".installation_mode = "blocked";

        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
      };

      FirefoxHome = {
        Highlights = false;
        Locked = false;
        Pocket = false;
        Search = false;
        Snippets = false;
        SponsoredPocket = false;
        SponsoredTopSites = false;
        TopSites = false;
      };

      NewTabPage = false;
      OfferToSaveLogins = false;
      OfferToSaveLoginsDefault = false;
      PasswordManagerEnabled = false;
    };

    profiles = {
      "deeengan" = {
        id = 0; # must be 0 it default?
        isDefault = true;
        path = "deeengan";
        settings = {
          "browser.newtabpage.activity-stream.feeds.discoverystreamfeed" = false;
          "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
          "browser.newtabpage.activity-stream.feeds.snippets" = false;
          "browser.newtabpage.activity-stream.feeds.telemetry" = false;
          "browser.newtabpage.activity-stream.section.highlights.includePocket" = false;
          "browser.newtabpage.activity-stream.showSponsored" = false;
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
          "browser.newtabpage.activity-stream.telemetry" = false;

          "browser.onboarding.enabled" = false;

          "browser.urlbar.shortcuts.bookmarks" = false;
          "browser.urlbar.shortcuts.history" = false;
          "browser.urlbar.shortcuts.tabs" = false;

          "extensions.update.autoUpdateDefault" = false;
          "extensions.update.enabled" = false;

          "sidebar.verticalTabs" = true;
          "sidebar.main.tools" = "";
          "sidebar.revamp" = true;
        };
      };
    };
  };

  textfox = {
    enable = false;
    profile = "deeengan";
    config = {
      background = {
        color = "";
      };

      border = {
        color = "";
        width = "";
        transition = "";
        radius = "12px";
      };

      displayHorizontalTabs = false;
      displayWindowControls = false;
      displayNavButtons = false;
      displayUrlbarIcons = false;
      displaySidebarTools = false;
      displayTitles = true;

      newtabLogo = "";

      font = {
        family = "";
        size = "";
        accent = "";
      };

      sidebery = {
        margin = "1.0rem";
      };
    };
  };
}
