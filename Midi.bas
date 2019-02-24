Attribute VB_Name = "Midi"
Option Explicit

Public Enum SystemExclusiveType
    NORMAL = 0
    DIVIDED = 1
    AUTHORIZATION = 2
End Enum

Public Enum StatusEnum
    NOTE_OFF = &H8
    NOTE_ON = &H9
    NOTE_AFTERTOUCH = &HA
    CONTROLLER = &HB
    PROGRAM_CHANGE = &HC
    CHANNEL_AFTERTOUCH = &HD
    PITCH_BEND = &HE
    META_EVENT = &HFF
    SYSTEM_EXCLUSIVE_START = &HF0
    SYSTEM_EXCLUSIVE_CONTINUE = &HF7
    SYSTEM_EXCLUSIVE_END = &HF7
End Enum

Public Enum MetaEventTypeEnum
    SEQUENCE_NUMBER = &H0
    TEXT_EVENT = &H1
    COPYRIGHT_NOTICE = &H2
    SEQUENCE_TRACK_NAME = &H3
    INSTRUMENT_NAME = &H4
    LYRICS = &H5
    MARKER = &H6
    CUE_POINT = &H7
    MIDI_CHANNEL_PREFIX = &H20
    MIDI_PORT = &H21
    END_OF_TRACK = &H2F
    SET_TEMPO = &H51
    SMPTE_OFFSET = &H54
    TIME_SIGNATURE = &H58
    KEY_SIGNATURE = &H59
    SEQUENCER_SPECIFIC = &H7F
End Enum

Public Enum ContinuousControllerType
    BANK_SELECT_MSB = 0
    MODULATION_MSB = 1
    BREATH_CONTROLLER_MSB = 2
    FOOT_CONTROLLER_MSB = 4
    PORTAMENTO_TIME_MSB = 5
    DATA_ENTRY_MSB = 6
    CHANNEL_VOLUME_MSB = 7
    BALANCE_MSB = 8
    PAN_MSB = 10
    EXPRESSION_CONTROLLER_MSB = 11
    EFFECT_CONTROL_1_MSB = 12
    EFFECT_CONTROL_2_MSB = 13
    CONTINUOUS_CONTROLLER_14 = 14
    CONTINUOUS_CONTROLLER_15 = 15
    GENERAL_PURPOSE_CONTROLLER_1 = 16
    GENERAL_PURPOSE_CONTROLLER_2 = 17
    GENERAL_PURPOSE_CONTROLLER_3 = 18
    GENERAL_PURPOSE_CONTROLLER_4 = 19
    CONTINUOUS_CONTROLLER_20 = 20
    CONTINUOUS_CONTROLLER_21 = 21
    CONTINUOUS_CONTROLLER_22 = 22
    CONTINUOUS_CONTROLLER_23 = 23
    CONTINUOUS_CONTROLLER_24 = 24
    CONTINUOUS_CONTROLLER_25 = 25
    CONTINUOUS_CONTROLLER_26 = 26
    CONTINUOUS_CONTROLLER_27 = 27
    CONTINUOUS_CONTROLLER_28 = 28
    CONTINUOUS_CONTROLLER_29 = 29
    CONTINUOUS_CONTROLLER_30 = 30
    CONTINUOUS_CONTROLLER_31 = 31
    BANK_SELECT_LSB = 32
    MODULATION_LSB = 33
    BREATH_CONTROLLER_LSB = 34
    FOOT_CONTROLLER_LSB = 36
    PORTAMENTO_TIME_LSB = 37
    DATA_ENTRY_LSB = 38
    CHANNEL_VOLUME_LSB = 39
    BALANCE_LSB = 40
    PAN_LSB = 42
    EXPRESSION_CONTROLLER_LSB = 43
    EFFECT_CONTROL_1_LSB = 44
    EFFECT_CONTROL_2_LSB = 45
    CONTROLLER_14_LSB = 46
    CONTROLLER_15_LSB = 47
    CONTROLLER_16_LSB = 48
    CONTROLLER_17_LSB = 49
    CONTROLLER_18_LSB = 50
    CONTROLLER_19_LSB = 51
    CONTROLLER_20_LSB = 52
    CONTROLLER_21_LSB = 53
    CONTROLLER_22_LSB = 54
    CONTROLLER_23_LSB = 55
    CONTROLLER_24_LSB = 56
    CONTROLLER_25_LSB = 57
    CONTROLLER_26_LSB = 58
    CONTROLLER_27_LSB = 59
    CONTROLLER_28_LSB = 60
    CONTROLLER_29_LSB = 61
    CONTROLLER_30_LSB = 62
    CONTROLLER_31_LSB = 63
    SUSTAIN_PEDAL = 64
    PORTAMENTO = 65
    SOSTENUTO = 66
    SOFT_PEDAL = 67
    LEGATO_FOOTSWITCH = 68
    HOLD_2_PEDAL = 69
    SOUND_VARIATION = 70
    SOUND_RESONANCE = 71
    SOUND_RELEASE_TIME = 72
    SOUND_ATTACK_TIME = 73
    SOUND_FREQUENCY_CUTOFF = 74
    SOUND_CONTROLLER_6 = 75
    SOUND_CONTROLLER_7 = 76
    SOUND_CONTROLLER_8 = 77
    SOUND_CONTROLLER_9 = 78
    SOUND_CONTROLLER_10 = 79
    GENERAL_PURPOSE_CONTROLLER_5 = 80
    GENERAL_PURPOSE_CONTROLLER_6 = 81
    GENERAL_PURPOSE_CONTROLLER_7 = 82
    GENERAL_PURPOSE_CONTROLLER_8 = 83
    PORTAMENTO_CONTROL = 84
    CONTINUOUS_CONTROLLER_85 = 85
    CONTINUOUS_CONTROLLER_86 = 86
    CONTINUOUS_CONTROLLER_87 = 87
    CONTINUOUS_CONTROLLER_88 = 88
    CONTINUOUS_CONTROLLER_89 = 89
    CONTINUOUS_CONTROLLER_90 = 90
    EFFECTS_DEPTH_1_EXTERNAL_EFFECTS_DEPTH = 91
    EFFECTS_DEPTH_2_TREMOLO_DEPTH = 92
    EFFECTS_DEPTH_3_CHORUS_DEPTH = 93
    EFFECTS_DEPTH_4_CELESTE_DETUNE = 94
    EFFECTS_DEPTH_5_PHASER_DEPTH = 95
    DATA_INCREMENT = 96
    DATA_DECREMENT = 97
    NON_REGISTERED_PARAMETER_NUMBER_LSB = 98
    NON_REGISTERED_PARAMETER_NUMBER_MSB = 99
    REGISTERED_PARAMETER_NUMBER_LSB = 100
    REGISTERED_PARAMETER_NUMBER_MSB = 101
    
    ALL_SOUND_OFF = 120
    RESET_ALL_CONTROLLERS = 121
    LOCAL_CONTROL_ON_OFF = 122
    ALL_NOTES_OFF = 123
    OMNI_MODE_OFF = 124
    OMNI_MODE_ON = 125
    POLY_MODE_ON_OFF = 126
    POLY_MODE_ON = 127
End Enum

Public Enum KeySignatureKeyValue
    ksCMajor = 0
    ksGMajor = 1
    ksDMajor = 2
    ksAMajor = 3
    ksEMajor = 4
    ksBMajor = 5
    ksFsMajor = 6
    ksCsMajor = 7
    ksAMinor = ksCMajor
    ksEMinor = ksGMajor
    ksBMinor = ksDMajor
    ksFsMinor = ksAMajor
    ksCsMinor = ksEMajor
    ksGsMinor = ksBMajor
    ksDsMinor = ksFsMajor
    ksAsMinor = ksCsMajor
    ksFMajor = 255
    ksBbMajor = 254
    ksEbMajor = 253
    ksAbMajor = 252
    ksDbMajor = 251
    ksGbMajor = 250
    ksCbMajor = 249
    ksDMinor = ksFMajor
    ksGMinor = ksBbMajor
    ksCMinor = ksEbMajor
    ksFMinor = ksAbMajor
    ksBbMinor = ksDbMajor
    ksEbMinor = ksGbMajor
    ksAbMinor = ksCbMajor
End Enum

Public Enum KeySignatureModeValue
    kmMajor = 0
    kmMinor = 1
End Enum

Public Enum TrackChunkTypeEnum
    BYTE_1 = &H4D '77
    BYTE_2 = &H54 '84
    BYTE_3 = &H72 '114
    BYTE_4 = &H6B '107
End Enum

Public Enum HeaderChunkEnum
    CHUNK_TYPE_BYTE_1 = &H4D '77
    CHUNK_TYPE_BYTE_2 = &H54 '84
    CHUNK_TYPE_BYTE_3 = &H68 '104
    CHUNK_TYPE_BYTE_4 = &H64 '100
    CHUNK_LENGTH_BYTE_1 = &H0 '0
    CHUNK_LENGTH_BYTE_2 = &H0 '0
    CHUNK_LENGTH_BYTE_3 = &H0 '0
    CHUNK_LENGTH_BYTE_4 = &H6 '6
End Enum

Public Const FILE_HEADER_LENGTH = 14
Public Const TRACK_HEADER_LENGTH = 8
Public Const MAX_MIDI_VALUE = &HFFFFFFF  '268435455




