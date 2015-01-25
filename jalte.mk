#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/jalte

# overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5410 \
    init.universal5410.rc \
    init.universal5410.usb.rc \
    init.universal5410.wifi.rc \
    lpm.rc \
    ueventd.universal5410.rc

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.universal5410.rc

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/ysound.xml:system/etc/ysound.xml \
    $(LOCAL_PATH)/configs/ymc/param/aec_adc.dat:system/etc/ymc/param/aec_adc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_adc.dat:system/etc/ymc/param/aec_adc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type3_rc_2mic.dat:system/etc/ymc/param/aec_hf50_voip_type3_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_vbox_bypass_wb.dat:system/etc/ymc/param/aec_vbox_bypass_wb.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_sp_2mic.dat:system/etc/ymc/param/aec_hf50_nb_type0_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_hes_1mic.dat:system/etc/ymc/param/aec_hf50_nb_hes_1mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_control_path_resume.dat:system/etc/ymc/param/aec_control_path_resume.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_sp_2mic.dat:system/etc/ymc/param/aec_hf50_wb_type0_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_sp_2mic.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_hes_1mic_2.dat:system/etc/ymc/param/aec_hf50_nb_hes_1mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type2_rc_2mic.dat:system/etc/ymc/param/aec_hf50_nb_type2_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_sp_2mic.dat:system/etc/ymc/param/aec_hf50_nb_type1_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type3_rc_2mic.dat:system/etc/ymc/param/aec_hf50_nb_type3_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type2_rc_2mic.dat:system/etc/ymc/param/aec_hf50_wb_type2_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_voip.dat:system/etc/ymc/param/aec_fdsp_bypass_voip.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_sp_2mic.dat:system/etc/ymc/param/aec_hf50_wb_type1_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_control_path_off.dat:system/etc/ymc/param/aec_control_path_off.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_nb_type0_rc.dat:system/etc/ymc/param/aec_cdsp_vt_nb_type0_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vnb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vnb_type0_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type3_rc_2mic.dat:system/etc/ymc/param/aec_hf50_wb_type3_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_rc_2mic.dat:system/etc/ymc/param/aec_hf50_voip_type1_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_wb_type0_rc.dat:system/etc/ymc/param/aec_cdsp_vt_wb_type0_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_vbox.dat:system/etc/ymc/param/aec_hf50_voip_vbox.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_wb_vbox_cp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_call_rec_rx.dat:system/etc/ymc/param/aec_call_rec_rx.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel_src.dat:system/etc/ymc/param/aec_hf50_chsel_src.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type2_rc_2mic.dat:system/etc/ymc/param/aec_hf50_voip_type2_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_rc_2mic.dat:system/etc/ymc/param/aec_hf50_nb_type0_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_line2_dac1.dat:system/etc/ymc/param/aec_line2_dac1.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hp_dac0.dat:system/etc/ymc/param/aec_hp_dac0.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_nb_type0_rc.dat:system/etc/ymc/param/aec_cdsp_nb_type0_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_rc_2mic.dat:system/etc/ymc/param/aec_hf50_wb_type0_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_nb_vbox_cp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_nb_type2_rc.dat:system/etc/ymc/param/aec_cdsp_nb_type2_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_1mic.dat:system/etc/ymc/param/aec_fdsp_bypass_1mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_wb_type0_rc.dat:system/etc/ymc/param/aec_cdsp_wb_type0_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_sp_2mic.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_voip_type2_sp.dat:system/etc/ymc/param/aec_cdsp_voip_type2_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_nb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_nb_bt.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_wb_type0_sp.dat:system/etc/ymc/param/aec_cdsp_vt_wb_type0_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type2_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_wb_type2_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_voip_type0_rc.dat:system/etc/ymc/param/aec_cdsp_voip_type0_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_rc_2mic.dat:system/etc/ymc/param/aec_hf50_nb_type1_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_rc_2mic.dat:system/etc/ymc/param/aec_hf50_wb_type1_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_svoice.dat:system/etc/ymc/param/aec_hf50_wb_svoice.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_hes_1mic_2.dat:system/etc/ymc/param/aec_hf50_wb_hes_1mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_vbox_bypass.dat:system/etc/ymc/param/aec_vbox_bypass.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_wb_type2_sp.dat:system/etc/ymc/param/aec_cdsp_wb_type2_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_sidetone.dat:system/etc/ymc/param/aec_sidetone.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_config.dat:system/etc/ymc/param/aec_config.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_voip_type2_rc.dat:system/etc/ymc/param/aec_cdsp_voip_type2_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_wb_type2_rc.dat:system/etc/ymc/param/aec_cdsp_vt_wb_type2_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_sidetone_vol.dat:system/etc/ymc/param/aec_sidetone_vol.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_rc_2mic.dat:system/etc/ymc/param/aec_hf50_voip_type0_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_call_rec_tx.dat:system/etc/ymc/param/aec_call_rec_tx.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type3_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_wb_type3_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_rc_dac0.dat:system/etc/ymc/param/aec_rc_dac0.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_wb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_wb_bt.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel_svoice.dat:system/etc/ymc/param/aec_hf50_chsel_svoice.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_sp_2mic.dat:system/etc/ymc/param/aec_hf50_voip_type0_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_vbox_svoice.dat:system/etc/ymc/param/aec_hf50_wb_vbox_svoice.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_wb_type2_rc.dat:system/etc/ymc/param/aec_cdsp_wb_type2_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_nb_type2_sp.dat:system/etc/ymc/param/aec_cdsp_vt_nb_type2_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_ae0_monomix.dat:system/etc/ymc/param/aec_ae0_monomix.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vnb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vnb_type1_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_svoice_2.dat:system/etc/ymc/param/aec_hf50_wb_svoice_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_ae0_through.dat:system/etc/ymc/param/aec_ae0_through.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_sp_dac1.dat:system/etc/ymc/param/aec_sp_dac1.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_wb.dat:system/etc/ymc/param/aec_fdsp_bypass_wb.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_wb_type0_sp.dat:system/etc/ymc/param/aec_cdsp_wb_type0_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type3_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_nb_type3_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_call_rec_txrx.dat:system/etc/ymc/param/aec_call_rec_txrx.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_nb_type0_sp.dat:system/etc/ymc/param/aec_cdsp_vt_nb_type0_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_nb_type0_sp.dat:system/etc/ymc/param/aec_cdsp_nb_type0_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_sp_2mic.dat:system/etc/ymc/param/aec_hf50_voip_type1_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_wb_type2_sp.dat:system/etc/ymc/param/aec_cdsp_vt_wb_type2_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_hes_1mic.dat:system/etc/ymc/param/aec_hf50_wb_hes_1mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_voice_fifo_src.dat:system/etc/ymc/param/aec_cdsp_voice_fifo_src.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_line1_dac0.dat:system/etc/ymc/param/aec_line1_dac0.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_voice_fifo.dat:system/etc/ymc/param/aec_cdsp_voice_fifo.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type2_rc_2mic.dat:system/etc/ymc/param/aec_hf50_vt_nb_type2_rc_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_ae1_through.dat:system/etc/ymc/param/aec_ae1_through.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_sp_2mic.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_vt_nb_type2_rc.dat:system/etc/ymc/param/aec_cdsp_vt_nb_type2_rc.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_sp_2mic.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_sp_2mic.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel.dat:system/etc/ymc/param/aec_hf50_chsel.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_nb_type2_sp.dat:system/etc/ymc/param/aec_cdsp_nb_type2_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_cdsp_voip_type0_sp.dat:system/etc/ymc/param/aec_cdsp_voip_type0_sp.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_nb.dat:system/etc/ymc/param/aec_fdsp_bypass_nb.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat \
	$(LOCAL_PATH)/configs/ymc/param/aec_vbox_bypass_nb.dat:system/etc/ymc/param/aec_vbox_bypass_nb.dat


PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.universal5410 \
    audio.usb.default \
    audio.r_submix.default \
    mixer_paths.xml \
    tinymix

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Camera
PRODUCT_PACKAGES += \
    camera.universal5410 \
    libhwjpeg

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.cer:system/etc/gps.cer \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml

# HW composer
PRODUCT_PACKAGES += \
    hwcomposer.exynos5 \
    libion

# IR
PRODUCT_PACKAGES += \
    consumerir.universal5410

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.exynos5

# Lights
PRODUCT_PACKAGES += \
    lights.universal5410

# Media profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# MobiCore
PRODUCT_PACKAGES += \
    mcDriverDaemon

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.universal5410 \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFCEE access control + configuration
NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access.xml
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

# OMX
PRODUCT_PACKAGES += \
    libExynosOMX_Core \
    libOMX.Exynos.MPEG4.Decoder \
    libOMX.Exynos.AVC.Decoder \
    libOMX.Exynos.MPEG4.Encoder \
    libOMX.Exynos.AVC.Encoder \
    libstagefrighthw

# Radio
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap

# Samsung
PRODUCT_PACKAGES += \
    SamsungServiceMode

# Torch
PRODUCT_PACKAGES += \
    Torch

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Enable repeatable keys in CWM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    wifi.interface=wlan0

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/jalte/jalte-vendor.mk)
