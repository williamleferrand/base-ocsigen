MODULE = internships
APP = internships

include ../Makefile.config

SERVERFILES := services.eliom appl.eliom nutshell.eliom oClosure_extra.eliom home.eliom
CLIENTFILES := oClosure_extra.eliom home.eliom

SERVERLIB := -package eliom.server
CLIENTLIB := -package oclosure,js_of_ocaml

INCLUDES := 

EXTRADIRS = 

include ../Makefile.rules

$(STATICDIR)/$(APP).js: _build/client/${MODULE}.cmo
		${JS_OF_ELIOM} -jsopt -pretty -verbose ${CLIENTLIB} -o ../$@ $^

$(STATICDIR)/$(APP)_req.js: $(STATICDIR)/$(APP).js
	${OCAML} str.cma $(OCLOSUREDIR)/requirements.ml ../$^

$(STATICDIR)/$(APP)_oclosure.js: $(STATICDIR)/$(APP).js
	${OCLOSURE_REQ} ../$^

pack: $(STATICDIR)/$(APP).js $(STATICDIR)/$(APP)_oclosure.js 

install: 
	$(OCAMLFIND) install frontend META _build/server/frontend.cmo _build/server/frontend.cmi
	install -d $(PREFIX)/var/www/cathedral

uninstall:
	$(OCAMLFIND) remove frontend
	$(OCAMLFIND) remove cathedral-common
