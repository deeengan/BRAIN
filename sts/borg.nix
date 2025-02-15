{...}: {
  # ssh -i ~/.gnupg/private-keys-v1.d/ z2j43163@z2j43163.repo.borgbase.com
  services.borgbackup.jobs."borgbase" = {
    archiveBaseName = "everything";

    paths = [
      "/home/deeengan/BRAIN/"
      "/home/deeengan/MIND/"
    ];

    encryption = {
      mode = "repokey-blake2";
      passCommand = "pass 李永安/borgbase/ssh";
    };

    environment.BORG_RSH = "ssh -i /home/deeengan/.gnupg/private-keys-v1.d/";
    compression = "auto,lz4";
    startAt = "daily";

    exclude = [
      "**/target"
      "/boot"
      "/home/deeengan/.var/"
      "/home/deeengan/.local/"
      "/home/deeengan/Downloads/"
      "/dev"
      "/nix"
      "/proc"
      "/run"
      "/sys"
      "/tmp"
      "bin"
      "etc"
      "lib"
      "lib64"
      "lost+found"
      "root"
      "sh:**/.cache"
      "usr"
      "var"
    ];

    dateFormat = "+%Y-%m-%dT%H:%M:%S";

    inhibitsSleep = true;

    persistentTimer = true;

    prune.keep = {
      within = "1d"; # Keep all archives from the last day
      daily = 7;
      weekly = 4;
      monthly = -3; # Keep at least one archive for each month
    };

    repo = "ssh://z2j43163@z2j43163.repo.borgbase.com/./repo";
  };
}
