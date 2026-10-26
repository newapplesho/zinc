tests
testVerifyCertificateTrustedHost
	"Make sure that a host with a valid TLS certificate is still accepted when #verifyCertificates is true"

	self assert: (ZnClient new
				https;
				host: 'zn.stfx.eu';
				withOptions: [ :options |
					options at: #verifyCertificates put: true ];
				get;
				isSuccess)