modelfile=handwriting-ja

$(modelfile).model: $(modelfile).xml
	/home/fmazurek/java/pomoce/tegaki/tegaki-tools-0.3.1/src/tegaki-build -t $(modelfile).xml zinnia $(modelfile).meta

installpath=/usr/local/share/tegaki/models/zinnia/

install: $(modelfile).model
	mkdir -p $(installpath)
	install -c $(modelfile).meta $(modelfile).model $(installpath)
