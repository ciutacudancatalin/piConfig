[cm4]
otg_mode=1

[pi4]
hdmi_force_hotplug:0=1
hdmi_force_hotplug:1=1

[all]
disable_splash=1
disable_overscan=1
hdmi_drive=2
hdmi_blanking=1
hdmi_force_edid_audio=1
hdmi_force_hotplug=1
hdmi_group=0
dtparam=i2c_arm=on
dtparam=i2s=on
dtparam=audio=on
#dtoverlay=disable-wifi
#commented by me idtoverlay=disable-bt

#changes
#overclock
over_voltage=6
arm_freq=2000
gpu_freq=75

#audio lag
disable_audio_dither=on

# Disable wifi power management
wireless-power off
