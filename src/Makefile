MODULE = base

include ../Makefile.config

SERVERFILES := services.eliom appl.eliom nutshell.eliom home.eliom
CLIENTFILES := oClosure_extra.eliom home.eliom

SERVERLIB := -package str
CLIENTLIB := -package oclosure

INCLUDES := 

EXTRADIRS = 

include ../Makefile.rules

$(STATICDIR)/$(MODULE).js: _build/client/$(MODULE).cmo
		${JS_OF_ELIOM} ${CLIENTLIB} -o ../$@ $^

$(STATICDIR)/$(MODULE)_req.js: $(STATICDIR)/$(MODULE).js
	${OCAML} str.cma $(OCLOSUREDIR)/requirements.ml ../$^

$(STATICDIR)/$(MODULE)_oclosure.js: $(STATICDIR)/$(MODULE).js
	${OCLOSURE_REQ} ../$^

pack: $(STATICDIR)/$(MODULE).js $(STATICDIR)/$(MODULE)_oclosure.js