$TTL	86400
@	IN	SOA	home.jjasonclark.com. homeservices.home.jjasonclark.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
      NS	homeservices.home.jjasonclark.com.

homeservices  A   10.210.98.1

