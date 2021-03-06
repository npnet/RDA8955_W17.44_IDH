MYCPPFLAGS :=-D__RRI_C__ \
-D__RRI_P__ \
-D__RRD__ \
-D__TEST_LIST__ \
-D__TARGET__ \
-DMARQUAGE="\"${MARQUAGE}\"" \
-D__L1_WIN_TRC__ \
-DNO__NO_AMR__ \
-D__NO_PFI__ \
-Dno__SXS_STR_TO_ID__ \
-DNO__SXS_RAM_LOADED__ \
-D__SXS_NO_FLASH_HANDLER__\
-D__RLU_NO_TRAP__ \
-Dno__ONE_PHASE_ACCESS_PREFERED__ \
-Dno__AUTO_GPRS_ATT__ \
-D__NOABORT__ \
-D__TEMP_FLOW_CONTROL__\
-D__L1_CCH_RX_OPT__ \
-DSTK_PROFILING_TO_STK \
-D__DEBUG__


ifeq "${NUMBER_OF_SIM}" "1"
MYCPPFLAGS += -DSTK_SINGLE_SIM
endif

ifeq "${NUMBER_OF_SIM}" "2"
MYCPPFLAGS += -DSTK_DUAL_SIM
endif

ifeq "${NUMBER_OF_SIM}" "3"
MYCPPFLAGS += -DSTK_THREE_SIM
endif

ifeq "${NUMBER_OF_SIM}" "4"
MYCPPFLAGS += -DSTK_FOUR_SIM
endif

ifeq "${GPRS_SUPPORT}" "y"
MYCPPFLAGS += -D__GPRS__ -D__RRP__
ifeq "${EGPRS_SUPPORT}" "y"
MYCPPFLAGS += -D__EGPRS__
#MYCPPFLAGS += -D__MCS9_IR_TEST__
endif
else
MYCPPFLAGS += -D__NO_GPRS__
endif


MYCPPFLAGS += -D__L1_MULTI_AFCDAC__

#ifeq "$(CT_ASIC)" "gallite"
#MYCPPFLAGS += -D__L1_FCCH_FOF_THRESHOLD__
#endif

MYCPPFLAGS += -D__L1_DUMMY_DETECTION__
MYCPPFLAGS += -D__L1_TCH_MORE_AGC_UPDATE__
MYCPPFLAGS += -D__LOCATION_LOCK__
#MYCPPFLAGS += -D__L1_CCH_DEC_DONE_IRQ_EN__
ifeq "${CB_SUPPORT}" "1"
MYCPPFLAGS += -D__CBCH__
endif

ifeq "${CT_GCFTEST}" "yes"
MYCPPFLAGS += -D__GCF_TEST__
endif

MYCPPFLAGS += -D__L1_ONSITE_CALIB__
#MYCPPFLAGS += -D__EXT_TBF__
MYCPPFLAGS += -D__SS_TIMER__
MYCPPFLAGS += -D_DROPCARD_AUTOPIN_
MYCPPFLAGS += -D__NEIGHBOR__AFC__

MYCPPFLAGS += -D__USF_PATTERN_CHECK__
#MYCPPFLAGS += -D__L1_TWO_BURST_PCH__
#MYCPPFLAGS += -D__PDCH_THREE_BURST_DEC__

export PLATFORM_STACK :=platform/system/stack
export PLATFORM_NBIOT :=platform/system/nbiot
