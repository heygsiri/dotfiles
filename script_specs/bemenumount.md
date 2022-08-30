# BEMENU(U)MOUNT
A script that uses `bemenu` to mount and unmount removable drives.

## Milestone 1: Get device name of partition to mount
- [ ] Filter `lsblk` to unmounted drives
- [ ] Filter `lsblk` output to display: `/dev/<device> <partition name>`
- [ ] Pipe output to `bemenu`

## Milestone 2: Mount selected drive
- [ ] Filter output of `bemenu` to contain only `/dev/<device>`
- [ ] Mount drive with `udisksctl`
- [ ] Send notification of `udisksctl` output

## Milestone 3: Get partition to unmount
- [ ] Filter `lsblk` to *mounted* drives
- [ ] Filter `lsblk` output to display: `<mountpoint>`
- [ ] Pipe output to `bemenu`

## Milestone 4: Unmount selected drive
- [ ] Filter `bemenu` output to contain `<mountpoint>`
- [ ] Unmount using `udisksctl`
- [ ] Send notification of `udisksctl` output
