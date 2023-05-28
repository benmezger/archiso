# README

This is my personal [archiso](https://wiki.archlinux.org/index.php/Archiso) modification. It includes the following pre-configured items:

- A few package configurations
- User and groups
- `ssh` enabled by default

## User and groups
The default user is `seds` and the default password is `root`. 

## Building the iso
1.  Clone the repository
``` shell
git clone https://github.com/benmezger/archiso.git
```

2. Create the arch iso
``` shell
sudo mkarchiso -v -w /tmp/archiso-out -o out ./archiso
```

**Warning**: If `mkarchiso` is interrupted, run `findmnt(8)` to make sure there are no mount binds before deleting it - otherwise, you may lose data (e.g. an external device mounted at `/run/media/user/label` gets bound within `work/x86_64/airootfs/run/media/user/label` during the build process).

## Testing with Qemu
``` shell
run_archiso -i ./out/archlinux-yyyy.mm.dd-x86_64.iso
```

## References and documentation

- [Archiso](https://wiki.archlinux.org/title/archiso#Build_the_ISO)
