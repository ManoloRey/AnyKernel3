NAME := Universe-Ginkgo-Aosp10-Miui12

DATE := $(shell date "+%Y%m%d")
ZIP := $(NAME)-$(DATE).zip

EXCLUDE := Makefile *.git* *.jar* *placeholder* *.md*

normal: $(ZIP)

$(ZIP):
	zip -r9 "$@" . -x $(EXCLUDE)
	echo "Done creating ZIP: $(ZIP)"

clean:
	rm -vf dtbo.img
	rm -vf *.zip
	rm -vf *.gz-dtb
	rm -vf modules/vendor/lib/modules/*.ko
	echo "Cleaning done."
