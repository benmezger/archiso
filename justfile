_builddate := `date "+%d.%m.%Y_%H%M%S"`
tmpdir := "./tmp"
workdir := tmpdir + "/archiso-" + _builddate
profile := "dwm"

build:
        mkdir -pv {{tmpdir}}
        sudo mkarchiso -v -w {{workdir}} {{profile}}

clean:
        rm -rfv {{tmpdir}}/archiso-*
