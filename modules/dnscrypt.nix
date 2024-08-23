{pkgs, ...}:

{

  services.dnscrypt-proxy2 = {
    enable = true;
    #configFile = "/etc/dnscrypt-proxy/dnscrypt-proxy.toml";
    settings = {
	ipv4_servers = true;
	ipv6_servers = true;
	require_dnssec = true;
	dnscrypt_servers = true;
	doh_servers = true;
	odoh_servers = true;
	require_nolog = true;
	require_nofilter = true;
	lb_strategy = "random";
	lb_estimator = true;
	dnscrypt_ephemeral_keys = true;
	ignore_system_dns = true;
	netprobe_address = "45.11.45.11:53";
	block_ipv6 = false;
	block_unqualified = true;
	block_undelegated = true;

      sources.public-resolvers = {
        urls = [
          "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md"
          "https://download.dnscrypt.info/resolvers-list/v3/public-resolvers.md"
        ];
        cache_file = "/var/lib/dnscrypt-proxy2/public-resolvers.md";
        minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
      };
      sources.relays = {
    	urls = [
	  "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/relays.md" "https://download.dnscrypt.info/resolvers-list/v3/relays.md"
	];
	cache_file = "/var/cache/dnscrypt-proxy/relays.md";
	minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
};
     sources.odoh-servers = {
	urls = [
	  "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/odoh-servers.md" "https://download.dnscrypt.info/resolvers-list/v3/odoh-servers.md"
	];
	cache_file = "/var/lib/dnscrypt-proxy2/odoh-servers.md";
	minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
	};
      sources.odoh-relays = {
	urls = [
	   "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/odoh-relays.md" "https://download.dnscrypt.info/resolvers-list/v3/odoh-relays.md" ];
	cache_file = "/var/lib/dnscrypt-proxy2/odoh-relays.md";
	minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
	};

      # You can choose a specific set of servers from https://github.com/DNSCrypt/dnscrypt-resolvers/blob/master/v3/public-resolvers.md
     # server_names = [ "cloudflare" "cloudflare-ipv6" "cloudflare-security" "cloudflare-security-ipv6" "adguard-dns-doh" "mullvad-adblock-doh" "mullvad-doh" "nextdns" "nextdns-ipv6" "quad9-dnscrypt-ipv4-filter-pri" "google" "google-ipv6" "ibksturm" ];
	server_names = [ "anon-cs-fr" "anon-bcn" "ams-dnscrypt-nl" "anon-meganerd" "anon-scaleway-ams" "d0wn-tz-ns1" "anon-arapurayil-in-ipv4" "anon-cs-rome" "dct-at1" "anon-cs-austria" "anon-techsaviours.org" "dct-nl1" "anon-meganerd" "anon-scaleway-ams" "dct-ru1" "anon-cs-czech" "anon-techsaviours.org" "dnscrypt.be" "anon-cs-belgium" "anon-serbica" "dnscrypt.ca-1" "anon-cs-il" "anon-openinternet" "dnscrypt.ca-2" "anon-cs-il2" "anon-openinternet" "dnscrypt.pl" "anon-cs-poland" "anon-techsaviours.org" "dnscrypt.uk-ipv4" "anon-cs-london" "anon-scaleway" "dnswarden-uncensor-dc-swiss" "anon-cs-fr" "anon-kama" "meganerd" "anon-scaleway-ams" "anon-serbica" "openinternet" "anon-cs-sea" "anon-inconnu" "plan9dns-fl" "anon-cs-tx" "anon-inconnu" "plan9dns-mx" "anon-cs-tx" "anon-inconnu" "plan9dns-nj" "anon-cs-nyc1" "anon-inconnu" "pryv8boi" "anon-cs-dus1" "anon-techsaviours.org" "sby-limotelu" "anon-cs-sydney" "anon-saldns01-conoha-ipv4" "scaleway-ams" "anon-meganerd" "anon-serbica" "scaleway-fr" "anon-cs-fr" "anon-dnscrypt.uk-ipv4" "serbica" "anon-cs-nl" "anon-scaleway-ams" "techsaviours.org-dnscrypt" "anon-cs-berlin" "anon-dnswarden-swiss" "v.dnscrypt.uk-ipv4" "anon-cs-london" "anon-scaleway" "odohrelay-koki-ams" "odohrelay-crypto-sx" "odohrelay-surf" "odohrelay-koki-bcn" "odohrelay-ams" "odohrelay-ibksturm" "odohrelay-se" ];

  anonymized_dns = {
	skip_incompatible = true;
	direct_cert_fallback = false;
	routes = [
		{ server_name = "*"; via = [ "anon-cs-fr" "anon-bcn" "ams-dnscrypt-nl" "anon-meganerd" "anon-scaleway-ams" "d0wn-tz-ns1" "anon-arapurayil-in-ipv4" "anon-cs-rome" "dct-at1" "anon-cs-austria" "anon-techsaviours.org" "dct-nl1" "anon-meganerd" "anon-scaleway-ams" "dct-ru1" "anon-cs-czech" "anon-techsaviours.org" "dnscrypt.be" "anon-cs-belgium" "anon-serbica" "dnscrypt.ca-1" "anon-cs-il" "anon-openinternet" "dnscrypt.ca-2" "anon-cs-il2" "anon-openinternet" "dnscrypt.pl" "anon-cs-poland" "anon-techsaviours.org" "dnscrypt.uk-ipv4" "anon-cs-london" "anon-scaleway" "dnswarden-uncensor-dc-swiss" "anon-cs-fr" "anon-kama" "meganerd" "anon-scaleway-ams" "anon-serbica" "openinternet" "anon-cs-sea" "anon-inconnu" "plan9dns-fl""anon-cs-tx" "anon-inconnu" "plan9dns-mx" "anon-cs-tx" "anon-inconnu" "plan9dns-nj" "anon-cs-nyc1" "anon-inconnu" "pryv8boi" "anon-cs-dus1" "anon-techsaviours.org" "sby-limotelu" "anon-cs-sydney" "anon-saldns01-conoha-ipv4" "scaleway-ams" "anon-meganerd" "anon-serbica" "scaleway-fr" "anon-cs-fr" "anon-dnscrypt.uk-ipv4" "serbica" "anon-cs-nl" "anon-scaleway-ams" "techsaviours.org-dnscrypt" "anon-cs-berlin" "anon-dnswarden-swiss" "v.dnscrypt.uk-ipv4" "anon-cs-london"
 "anon-scaleway" "odohrelay-koki-ams" "odohrelay-crypto-sx" "odohrelay-surf" "odohrelay-koki-bcn" "odohrelay-ams" "odohrelay-ibksturm" "odohrelay-se"
    ]; }
];
};
    };
  };

  systemd.services.dnscrypt-proxy2.serviceConfig = {
    StateDirectory = "dnscrypt-proxy";



};


}