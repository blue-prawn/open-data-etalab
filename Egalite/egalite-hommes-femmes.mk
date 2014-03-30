CAT = cat
WGET = curl -s

OD_WEB = https://www.data.gouv.fr
OD_DIR = /storage/f/2013-11-28T16%3A14%3A39.248Z/
OD_FILE = observatoire-egalite-mcc-rapport-fevrier-2013-1.odt

.PHONY: dl
dl: $(OD_FILE)
$(OD_FILE):
	$(WGET) $(OD_WEB)$(OD_DIR)$(OD_FILE) > $@

clean:
	$(RM) $(OD_FILE)

