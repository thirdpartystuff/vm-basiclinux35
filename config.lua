
local silent = arg.silent
local console = arg.console
local mode = arg.mode or '1024x768x15'
local disk_size = arg.disk_size or '100m'

local resolution
if mode == '1024x768x24' then
    resolution='1024x768'
elseif mode == '1024x768x15' then
    resolution='1024x768'
elseif mode == '1024x768x4' then
    resolution='1024x768'
elseif mode == '800x600x24' then
    resolution='800x600'
elseif mode == '800x600x15' then
    resolution='800x600'
elseif mode == '800x600x4' then
    resolution='800x600'
else
    error('invalid video mode!')
end

dosbox.here_is_your_working_dir()
dosbox.title('BasicLinux 3.5 ('..mode..')')
dosbox.window_resolution(resolution)
dosbox.mem_size('256')
dosbox.machine('s3_trio64v+')
dosbox.video_mem_size('8')
dosbox.cpu_core('normal')
dosbox.cpu_cycles('600000')
dosbox.bios_ps2('false')
dosbox.keyboard_aux('false')
dosbox.keyboard_controller('at')
dosbox.fdc_enable('false')
dosbox.serial1('serialmouse')
dosbox.autoexec_bat('imgmount 2 .disk.vhd -t hdd -fs none')
dosbox.autoexec_bat('mount s: disk_c')
dosbox.autoexec_bat('s:')
dosbox.autoexec_bat('loadlin zimage root=/dev/hda1 ramdisk_size=2048 rw')

local disk, DIR = mkdisk.create_named('/', '.disk.vhd', disk_size, 'ext2')
disk:add_directory(DIR['/'], 'disk_root')
disk:add_file_content(DIR['/']['etc'], 'Xconfig', mode..'\n2button\n')
if not silent then
    disk:add_file(DIR['/']['tmp'], 'chime.mp3', 'extra/chime.mp3')
end
if console then
    disk:add_file_content(DIR['/']['var']['X11R6'], '.skip', '')
end
