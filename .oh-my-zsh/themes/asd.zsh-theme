#!/usr/bin/env zsh
#Color definitions:

if [[ $(id -un) == 0 ]];then # is this sudo and root? NO, this IS Patric.
	ASDTHM_COLORIGTHS="%{$FG[red]%}"
else
	ASDTHM_COLORIGTHS="%{$FG[255]%}"
fi

	ASD_WHITE="%{$FG[255]%}"
	ASD_GREY="%{$FG[242]%}"
	ASD_MREY="%{$FG[244]%}"
	ASD_BGREY="%{$FG[246]%}"
	ASD_BLUE="%{$FG[045]%}"
  ASD_RESET="%{$FG[$reset_color]%}"

#Grayed dots declaration:
	ASD_IGSPOT="$ASD_BGREY:$ASD_MGREY:$ASD_GREY:$ASD_WHITE"
	ASD_DGSPOT="$ASD_GREY:$ASD_MGREY:$ASD_BGREY:"

#Set the battery script:
  ASD_BATT=$(batporc)
  if [[ $ASD_BATT < 10 ]];then
    ASD_BATT=$ASD_RED$ASD_BATT%
  else
    ASD_BATT=$ASD_WHITE$ASD_BATT%
  fi

#Here we go with the prompt:
  PROMPT="$ASD_WHITE$ASD_BLUE <$ASD_WHITE%n$ASD_IGSPOT%~$ASD_DGSPOT$ASDTHM_COLORIGTHS%#$ASD_BLUE>$ASD_WHITE "
	RPROMPT="$ASD_WHITE$ASD_WHITE$ASD_BLUE<$ASD_WHITE%T$ASD_IGSPOT%D$ASD_DGSPOT$ASD_BATT$ASD_BLUE>$ASD_WHITE "
