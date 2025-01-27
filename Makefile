.PHONY: clean

REPO=sandbox
DEPENDENCIES=requirements.txt

$(DEPENDENCIES):
	curl https://raw.githubusercontent.com/fermentatiekast/$(REPO)/refs/heads/main/$(DEPENDENCIES)\
		| iconv -f utf-16 -t utf-8 > $@

clean:
	rm -f $(DEPENDENCIES)
