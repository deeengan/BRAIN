

systemd.services.service-timer-borg-de7d193c-88eb-4aa4-92d8-34f0d8054d00 = {
  serviceConfig.Type = "oneshot";
  path = with pkgs; [ bash borgbackup ];
  script = ''
    bash /home/deeengan/DATA/borg-backup-nixos-may-9-2023
  '';
};

systemd.timers.service-timer-borg-de7d193c-88eb-4aa4-92d8-34f0d8054d00 = {
  wantedBy = [ "timers.target" ];
  partOf = [ "service-timer-borg-de7d193c-88eb-4aa4-92d8-34f0d8054d00.service" ];
  timerConfig = {
    OnCalendar = "*-*-* 00,10:00:00";
    Persistent = "true";
    RandomizedDelaySec = "300";
    Unit = "service-timer-borg-de7d193c-88eb-4aa4-92d8-34f0d8054d00.service";
  };
};
