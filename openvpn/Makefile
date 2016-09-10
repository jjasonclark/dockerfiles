DOMAIN = jjasonclark.com
VPN_SUBDOMAIN = vpn

all:
	docker-compose run --rm openvpn-server ovpn_genconfig -u udp://$(VPN_SUBDOMAIN).$(DOMAIN)
	docker-compose run --rm openvpn-server ovpn_initpki
	docker-compose run --rm openvpn-server easyrsa build-client-full $(DOMAIN) nopass
	docker-compose run --rm openvpn-server ovpn_getclient $(DOMAIN) > $(DOMAIN).ovpn
