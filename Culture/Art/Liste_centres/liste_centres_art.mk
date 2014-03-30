CAT = cat
CURL = curl -s

OD_PATH = http://static.data.gouv.fr/c1/
OD_FILE = 22b01805f52b4c2776086fc3826ce528e614a2fdc0397195f42b90de522f18.xls
DL_FILE = liste_centres_art.xls

.PHONY: dl
dl: $(OD_FILE)

$(OD_FILE):
	$(CURL) $(OD_PATH)$(OD_FILE) > $(DL_FILE)

clean:
	$(RM) $(DL_FILE)

