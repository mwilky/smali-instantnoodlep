.class public final Lsis/sis/zta/zta/zta/kth;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AYa:I = 0x11

.field public static final AZa:I = 0x49

.field public static final BRIGHTNESS:I = 0x7

.field public static final BYa:I = 0x12

.field public static final BZa:I = 0x4a

.field public static final CYa:I = 0x13

.field public static final CZa:I = 0x4b

.field public static final DEMO_MODE:I = 0x2e

.field public static final DYa:I = 0x14

.field public static final DZa:I = 0x4c

.field public static final EYa:I = 0x15

.field public static final EZa:I = 0x50

.field public static final FYa:I = 0x16

.field public static final FZa:I = 0x51

.field public static final GYa:I = 0x17

.field public static final GZa:I = 0x52

.field public static final Gqa:I = 0x1e

.field public static final HYa:I = 0x18

.field public static final HZa:I = 0x5a

.field public static final IYa:I = 0x19

.field public static final IZa:I = 0x5b

.field public static final JYa:I = 0x1a

.field public static final JZa:I = 0x5c

.field public static final Jqa:I = 0xd

.field public static final KYa:I = 0x1b

.field public static final KZa:I = 0x5d

.field public static final LYa:I = 0x1c

.field public static final LZa:I = 0x63

.field public static final MYa:I = 0x1d

.field public static final MZa:I = 0x64

.field public static final NYa:I = 0x1f

.field public static final NZa:I = 0x65

.field public static final OYa:I = 0x20

.field public static final OZa:I = 0x66

.field public static final PYa:I = 0x21

.field public static final PZa:I = 0x67

.field public static final QYa:I = 0x22

.field public static final QZa:I = 0x68

.field public static final RYa:I = 0x23

.field public static final RZa:I = 0x69

.field public static final SYa:I = 0x24

.field public static final SZa:I = 0x6a

.field public static final TYPE_MAX:I = 0x8a

.field public static final TYa:I = 0x25

.field public static final TZa:I = 0x6b

.field public static final UYa:I = 0x26

.field public static final UZa:I = 0x6c

.field public static final VYa:I = 0x27

.field public static final VZa:I = 0x6d

.field public static final WORK_MODE:I = 0x7e

.field public static final WYa:I = 0x28

.field public static final WZa:I = 0x6f

.field public static final XYa:I = 0x29

.field public static final XZa:I = 0x70

.field public static final YYa:I = 0x2a

.field public static final YZa:I = 0x71

.field public static final ZYa:I = 0x2b

.field public static final ZZa:I = 0x78

.field public static final _Ya:I = 0x2c

.field public static final _Za:I = 0x79

.field public static final aZa:I = 0x2d

.field public static final a_a:I = 0x7a

.field public static final bZa:I = 0x2f

.field public static final b_a:I = 0x7b

.field public static final cZa:I = 0x30

.field public static final c_a:I = 0x7c

.field public static final dZa:I = 0x31

.field public static final d_a:I = 0x7d

.field public static final eZa:I = 0x32

.field public static final e_a:I = 0x7f

.field public static final fZa:I = 0x33

.field public static final f_a:I = 0x80

.field public static final gZa:I = 0x34

.field public static final g_a:I = 0x81

.field public static final hZa:I = 0x35

.field public static final h_a:I = 0x82

.field public static final iZa:I = 0x36

.field public static final i_a:I = 0x84

.field public static final jZa:I = 0x37

.field public static final j_a:I = 0x85

.field public static final kZa:I = 0x38

.field public static final k_a:I = 0x86

.field public static final lYa:I = 0x0

.field public static final lZa:I = 0x39

.field public static final l_a:I = 0x87

.field public static final mYa:I = 0x1

.field public static final mZa:I = 0x3a

.field public static final m_a:I = 0x88

.field public static final nYa:I = 0x2

.field public static final nZa:I = 0x3c

.field public static final n_a:I = 0x89

.field public static final oYa:I = 0x3

.field public static final oZa:I = 0x3d

.field public static final pYa:I = 0x4

.field public static final pZa:I = 0x3e

.field public static final qYa:I = 0x5

.field public static final qZa:I = 0x3f

.field public static final rYa:I = 0x6

.field public static final rZa:I = 0x40

.field public static final sYa:I = 0x8

.field public static final sZa:I = 0x41

.field public static final tYa:I = 0x9

.field public static final tZa:I = 0x42

.field public static final uYa:I = 0xa

.field public static final uZa:I = 0x43

.field public static final vYa:I = 0xb

.field public static final vZa:I = 0x44

.field public static final wYa:I = 0xc

.field public static final wZa:I = 0x45

.field public static final xYa:I = 0xe

.field public static final xZa:I = 0x46

.field public static final yYa:I = 0xf

.field public static final yZa:I = 0x47

.field public static final zYa:I = 0x10

.field public static final zZa:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PEAKING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "SHARPNESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "MEMC_DEMO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const-string v1, "PEAKING_DEMO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const-string v1, "GAMMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const-string v1, "MEMC_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    const-string v1, "CONTRAST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_5
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    const-string v1, "BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    const-string v1, "EXTERNAL_PWM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_7
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    const-string v1, "DBC_QUALITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_8
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    const-string v1, "DLV_SENSITIVITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_9
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_a

    const-string v1, "DBC_CONFIG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_a
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_b

    const-string v1, "PQ_CONFIG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_b
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    const-string v1, "MEMC_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_c
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_d

    const-string v1, "MEMC_OPTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_e

    const-string v1, "MEMC_LOWPOWER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_e
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_f

    const-string v1, "DCE_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_f
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_10

    const-string v1, "USER_DEMO_WND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x11

    :cond_10
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_11

    const-string v1, "MEMC_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x12

    :cond_11
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_12

    const-string v1, "WHITE_LIST_ADD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x13

    :cond_12
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_13

    const-string v1, "WHITE_LIST_RST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x14

    :cond_13
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_14

    const-string v1, "LAYER_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x15

    :cond_14
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_15

    const-string v1, "BLACK_BORDER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x16

    :cond_15
    and-int/lit8 v1, p0, 0x17

    const/16 v3, 0x17

    if-ne v1, v3, :cond_16

    const-string v1, "CINEMA_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x17

    :cond_16
    and-int/lit8 v1, p0, 0x18

    const/16 v3, 0x18

    if-ne v1, v3, :cond_17

    const-string v1, "BLACK_LIST_ADD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x18

    :cond_17
    and-int/lit8 v1, p0, 0x19

    const/16 v3, 0x19

    if-ne v1, v3, :cond_18

    const-string v1, "BLACK_LIST_RST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x19

    :cond_18
    and-int/lit8 v1, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_19

    const-string v1, "COLOR_ADJUST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1a

    :cond_19
    and-int/lit8 v1, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_1a

    const-string v1, "TRUE_CUT_CAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1b

    :cond_1a
    and-int/lit8 v1, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_1b

    const-string v1, "TRUE_CUT_DET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1c

    :cond_1b
    and-int/lit8 v1, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_1c

    const-string v1, "PT_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1d

    :cond_1c
    and-int/lit8 v1, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_1d

    const-string v1, "BYPASS_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1e

    :cond_1d
    and-int/lit8 v1, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_1e

    const-string v1, "LCE_SETTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1f

    :cond_1e
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1f

    const-string v1, "CM_SETTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_1f
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_20

    const-string v1, "CHIP_VERSION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x21

    :cond_20
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_21

    const-string v1, "LUX_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x22

    :cond_21
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_22

    const-string v1, "CCT_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x23

    :cond_22
    and-int/lit8 v1, p0, 0x24

    const/16 v3, 0x24

    if-ne v1, v3, :cond_23

    const-string v1, "READING_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x24

    :cond_23
    and-int/lit8 v1, p0, 0x25

    const/16 v3, 0x25

    if-ne v1, v3, :cond_24

    const-string v1, "CM_6AXES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x25

    :cond_24
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_25

    const-string v1, "CM_FTC_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x26

    :cond_25
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_26

    const-string v1, "CM_COLOR_TEMP_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x27

    :cond_26
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_27

    const-string v1, "CM_COLOR_GAMUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x28

    :cond_27
    and-int/lit8 v1, p0, 0x29

    const/16 v3, 0x29

    if-ne v1, v3, :cond_28

    const-string v1, "LCE_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x29

    :cond_28
    and-int/lit8 v1, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_29

    const-string v1, "LCE_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2a

    :cond_29
    and-int/lit8 v1, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_2a

    const-string v1, "GRAPHIC_DET_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2b

    :cond_2a
    and-int/lit8 v1, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_2b

    const-string v1, "AL_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2c

    :cond_2b
    and-int/lit8 v1, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_2c

    const-string v1, "DBC_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2d

    :cond_2c
    and-int/lit8 v1, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2d

    const-string v1, "DEMO_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2e

    :cond_2d
    and-int/lit8 v1, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_2e

    const-string v1, "SDR2HDR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2f

    :cond_2e
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_2f

    const-string v1, "COLOR_TEMP_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x30

    :cond_2f
    and-int/lit8 v1, p0, 0x31

    const/16 v3, 0x31

    if-ne v1, v3, :cond_30

    const-string v1, "HDR_MAXCLL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x31

    :cond_30
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_31

    const-string v1, "HDR_SETTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x32

    :cond_31
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_32

    const-string v1, "CM_COLOR_GAMUT_PRE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_32
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_33

    const-string v1, "DBC_LCE_POWER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x34

    :cond_33
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_34

    const-string v1, "DBC_LCE_DATA_PATH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x35

    :cond_34
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_35

    const-string v1, "DYNAMIC_POWER_CTRL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x36

    :cond_35
    and-int/lit8 v1, p0, 0x37

    const/16 v3, 0x37

    if-ne v1, v3, :cond_36

    const-string v1, "DMA_LOAD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x37

    :cond_36
    and-int/lit8 v1, p0, 0x38

    const/16 v3, 0x38

    if-ne v1, v3, :cond_37

    const-string v1, "ANALOG_BYPASS_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x38

    :cond_37
    and-int/lit8 v1, p0, 0x39

    const/16 v3, 0x39

    if-ne v1, v3, :cond_38

    const-string v1, "PANEL_TYPE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x39

    :cond_38
    and-int/lit8 v1, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_39

    const-string v1, "GAMMA_TABLE_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3a

    :cond_39
    and-int/lit8 v1, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_3a

    const-string v1, "HDR_PANEL_NITES_SET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3c

    :cond_3a
    and-int/lit8 v1, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_3b

    const-string v1, "PEAKING_IDLE_CLK_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3d

    :cond_3b
    and-int/lit8 v1, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_3c

    const-string v1, "CM_MAGENTA_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3e

    :cond_3c
    and-int/lit8 v1, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_3d

    const-string v1, "CM_RED_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3f

    :cond_3d
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_3e

    const-string v1, "CM_YELLOW_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_3e
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_3f

    const-string v1, "CM_GREEN_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x41

    :cond_3f
    and-int/lit8 v1, p0, 0x42

    const/16 v3, 0x42

    if-ne v1, v3, :cond_40

    const-string v1, "CM_BLUE_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x42

    :cond_40
    and-int/lit8 v1, p0, 0x43

    const/16 v3, 0x43

    if-ne v1, v3, :cond_41

    const-string v1, "CM_CYAN_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x43

    :cond_41
    and-int/lit8 v1, p0, 0x44

    const/16 v3, 0x44

    if-ne v1, v3, :cond_42

    const-string v1, "BLC_PWM_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x44

    :cond_42
    and-int/lit8 v1, p0, 0x45

    const/16 v3, 0x45

    if-ne v1, v3, :cond_43

    const-string v1, "DBC_LED_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x45

    :cond_43
    and-int/lit8 v1, p0, 0x46

    const/16 v3, 0x46

    if-ne v1, v3, :cond_44

    const-string v1, "SCALER_FILTER_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x46

    :cond_44
    and-int/lit8 v1, p0, 0x47

    const/16 v3, 0x47

    if-ne v1, v3, :cond_45

    const-string v1, "CCF1_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x47

    :cond_45
    and-int/lit8 v1, p0, 0x48

    const/16 v3, 0x48

    if-ne v1, v3, :cond_46

    const-string v1, "CCF2_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x48

    :cond_46
    and-int/lit8 v1, p0, 0x49

    const/16 v3, 0x49

    if-ne v1, v3, :cond_47

    const-string v1, "FW_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x49

    :cond_47
    and-int/lit8 v1, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v1, v3, :cond_48

    const-string v1, "HUE_SAT_ADJ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4a

    :cond_48
    and-int/lit8 v1, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v1, v3, :cond_49

    const-string v1, "CSC_MATRIX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4b

    :cond_49
    and-int/lit8 v1, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_4a

    const-string v1, "SCALER_PP_FILTER_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4c

    :cond_4a
    and-int/lit8 v1, p0, 0x50

    const/16 v3, 0x50

    if-ne v1, v3, :cond_4b

    const-string v1, "CONTRAST_DIMMING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x50

    :cond_4b
    and-int/lit8 v1, p0, 0x51

    const/16 v3, 0x51

    if-ne v1, v3, :cond_4c

    const-string v1, "S_CURVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x51

    :cond_4c
    and-int/lit8 v1, p0, 0x52

    const/16 v3, 0x52

    if-ne v1, v3, :cond_4d

    const-string v1, "BRIGHTNESS_CHIP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x52

    :cond_4d
    and-int/lit8 v1, p0, 0x5a

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_4e

    const-string v1, "HDR_PREPARE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5a

    :cond_4e
    and-int/lit8 v1, p0, 0x5b

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_4f

    const-string v1, "HDR_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5b

    :cond_4f
    and-int/lit8 v1, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_50

    const-string v1, "MCF_DATA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5c

    :cond_50
    and-int/lit8 v1, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_51

    const-string v1, "Y5P"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5d

    :cond_51
    and-int/lit8 v1, p0, 0x63

    const/16 v3, 0x63

    if-ne v1, v3, :cond_52

    const-string v1, "PANEL_NITS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x63

    :cond_52
    and-int/lit8 v1, p0, 0x64

    const/16 v3, 0x64

    if-ne v1, v3, :cond_53

    const-string v1, "SEND_FRAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x64

    :cond_53
    and-int/lit8 v1, p0, 0x65

    const/16 v3, 0x65

    if-ne v1, v3, :cond_54

    const-string v1, "OSD_PATTERN_SHOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x65

    :cond_54
    and-int/lit8 v1, p0, 0x66

    const/16 v3, 0x66

    if-ne v1, v3, :cond_55

    const-string v1, "DBG_TARGET_PI_REGADDR_SET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x66

    :cond_55
    and-int/lit8 v1, p0, 0x67

    const/16 v3, 0x67

    if-ne v1, v3, :cond_56

    const-string v1, "DBG_TARGET_REGADDR_VALUE_GET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x67

    :cond_56
    and-int/lit8 v1, p0, 0x68

    const/16 v3, 0x68

    if-ne v1, v3, :cond_57

    const-string v1, "MEMC_ENABLE_FOR_ASUS_CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x68

    :cond_57
    and-int/lit8 v1, p0, 0x69

    const/16 v3, 0x69

    if-ne v1, v3, :cond_58

    const-string v1, "DBG_TARGET_REGADDR_VALUE_SET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x69

    :cond_58
    and-int/lit8 v1, p0, 0x6a

    const/16 v3, 0x6a

    if-ne v1, v3, :cond_59

    const-string v1, "DBG_KERNEL_LOG_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6a

    :cond_59
    and-int/lit8 v1, p0, 0x6b

    const/16 v3, 0x6b

    if-ne v1, v3, :cond_5a

    const-string v1, "DBG_SEND_PACKAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6b

    :cond_5a
    and-int/lit8 v1, p0, 0x6c

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_5b

    const-string v1, "DBG_LOOP_BACK_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6c

    :cond_5b
    and-int/lit8 v1, p0, 0x6d

    const/16 v3, 0x6d

    if-ne v1, v3, :cond_5c

    const-string v1, "DBG_LOOP_BACK_MODE_RES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6d

    :cond_5c
    and-int/lit8 v1, p0, 0x6f

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_5d

    const-string v1, "APP_FILTER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6f

    :cond_5d
    and-int/lit8 v1, p0, 0x70

    const/16 v3, 0x70

    if-ne v1, v3, :cond_5e

    const-string v1, "DBG_TARGET_REGADDR_VALUE_SET2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x70

    :cond_5e
    and-int/lit8 v1, p0, 0x71

    const/16 v3, 0x71

    if-ne v1, v3, :cond_5f

    const-string v1, "DEBUG_CAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x71

    :cond_5f
    and-int/lit8 v1, p0, 0x78

    const/16 v3, 0x78

    if-ne v1, v3, :cond_60

    const-string v1, "MODE_SET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x78

    :cond_60
    and-int/lit8 v1, p0, 0x79

    const/16 v3, 0x79

    if-ne v1, v3, :cond_61

    const-string v1, "VIDEO_FRAME_RATE_SET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x79

    :cond_61
    and-int/lit8 v1, p0, 0x7a

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_62

    const-string v1, "OUT_FRAME_RATE_SET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7a

    :cond_62
    and-int/lit8 v1, p0, 0x7b

    const/16 v3, 0x7b

    if-ne v1, v3, :cond_63

    const-string v1, "OSD_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7b

    :cond_63
    and-int/lit8 v1, p0, 0x7c

    const/16 v3, 0x7c

    if-ne v1, v3, :cond_64

    const-string v1, "OSD_AUTOREFRESH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7c

    :cond_64
    and-int/lit8 v1, p0, 0x7d

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_65

    const-string v1, "OSD_OVERFLOW_ST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7d

    :cond_65
    and-int/lit8 v1, p0, 0x7e

    const/16 v3, 0x7e

    if-ne v1, v3, :cond_66

    const-string v1, "WORK_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7e

    :cond_66
    and-int/lit8 v1, p0, 0x7f

    const/16 v3, 0x7f

    if-ne v1, v3, :cond_67

    const-string v1, "FRC_LOW_LATENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7f

    :cond_67
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_68

    const-string v1, "PANEL_TE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_68
    and-int/lit16 v1, p0, 0x81

    const/16 v3, 0x81

    if-ne v1, v3, :cond_69

    const-string v1, "AP_TE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x81

    :cond_69
    and-int/lit16 v1, p0, 0x82

    const/16 v3, 0x82

    if-ne v1, v3, :cond_6a

    const-string v1, "N2M_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x82

    :cond_6a
    and-int/lit16 v1, p0, 0x84

    const/16 v3, 0x84

    if-ne v1, v3, :cond_6b

    const-string v1, "WAIT_VSYNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x84

    :cond_6b
    and-int/lit16 v1, p0, 0x85

    const/16 v3, 0x85

    if-ne v1, v3, :cond_6c

    const-string v1, "MIPI2RX_PWRST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x85

    :cond_6c
    and-int/lit16 v1, p0, 0x86

    const/16 v3, 0x86

    if-ne v1, v3, :cond_6d

    const-string v1, "DUAL2SINGLE_ST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x86

    :cond_6d
    and-int/lit16 v1, p0, 0x87

    const/16 v3, 0x87

    if-ne v1, v3, :cond_6e

    const-string v1, "MEMC_OSD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x87

    :cond_6e
    and-int/lit16 v1, p0, 0x88

    const/16 v3, 0x88

    if-ne v1, v3, :cond_6f

    const-string v1, "MEMC_OSD_PROTECT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x88

    :cond_6f
    and-int/lit16 v1, p0, 0x89

    const/16 v3, 0x89

    if-ne v1, v3, :cond_70

    const-string v1, "LCE_DEMO_WINDOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x89

    :cond_70
    and-int/lit16 v1, p0, 0x8a

    const/16 v3, 0x8a

    if-ne v1, v3, :cond_71

    const-string v1, "TYPE_MAX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x8a

    :cond_71
    if-eq p0, v2, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "PEAKING"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "SHARPNESS"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "MEMC_DEMO"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "PEAKING_DEMO"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "GAMMA"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "MEMC_LEVEL"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "CONTRAST"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "BRIGHTNESS"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "EXTERNAL_PWM"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "DBC_QUALITY"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "DLV_SENSITIVITY"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "DBC_CONFIG"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "PQ_CONFIG"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "MEMC_ENABLE"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string p0, "MEMC_OPTION"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string p0, "MEMC_LOWPOWER"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "DCE_LEVEL"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string p0, "USER_DEMO_WND"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string p0, "MEMC_ACTIVE"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string p0, "WHITE_LIST_ADD"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string p0, "WHITE_LIST_RST"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string p0, "LAYER_SIZE"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string p0, "BLACK_BORDER"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string p0, "CINEMA_MODE"

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string p0, "BLACK_LIST_ADD"

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string p0, "BLACK_LIST_RST"

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string p0, "COLOR_ADJUST"

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string p0, "TRUE_CUT_CAP"

    return-object p0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    const-string p0, "TRUE_CUT_DET"

    return-object p0

    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    const-string p0, "PT_ENABLE"

    return-object p0

    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    const-string p0, "BYPASS_ENABLE"

    return-object p0

    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    const-string p0, "LCE_SETTING"

    return-object p0

    :cond_1f
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    const-string p0, "CM_SETTING"

    return-object p0

    :cond_20
    const/16 v0, 0x21

    if-ne p0, v0, :cond_21

    const-string p0, "CHIP_VERSION"

    return-object p0

    :cond_21
    const/16 v0, 0x22

    if-ne p0, v0, :cond_22

    const-string p0, "LUX_VALUE"

    return-object p0

    :cond_22
    const/16 v0, 0x23

    if-ne p0, v0, :cond_23

    const-string p0, "CCT_VALUE"

    return-object p0

    :cond_23
    const/16 v0, 0x24

    if-ne p0, v0, :cond_24

    const-string p0, "READING_MODE"

    return-object p0

    :cond_24
    const/16 v0, 0x25

    if-ne p0, v0, :cond_25

    const-string p0, "CM_6AXES"

    return-object p0

    :cond_25
    const/16 v0, 0x26

    if-ne p0, v0, :cond_26

    const-string p0, "CM_FTC_ENABLE"

    return-object p0

    :cond_26
    const/16 v0, 0x27

    if-ne p0, v0, :cond_27

    const-string p0, "CM_COLOR_TEMP_MODE"

    return-object p0

    :cond_27
    const/16 v0, 0x28

    if-ne p0, v0, :cond_28

    const-string p0, "CM_COLOR_GAMUT"

    return-object p0

    :cond_28
    const/16 v0, 0x29

    if-ne p0, v0, :cond_29

    const-string p0, "LCE_MODE"

    return-object p0

    :cond_29
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2a

    const-string p0, "LCE_LEVEL"

    return-object p0

    :cond_2a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2b

    const-string p0, "GRAPHIC_DET_ENABLE"

    return-object p0

    :cond_2b
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2c

    const-string p0, "AL_ENABLE"

    return-object p0

    :cond_2c
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_2d

    const-string p0, "DBC_LEVEL"

    return-object p0

    :cond_2d
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2e

    const-string p0, "DEMO_MODE"

    return-object p0

    :cond_2e
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2f

    const-string p0, "SDR2HDR"

    return-object p0

    :cond_2f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_30

    const-string p0, "COLOR_TEMP_VALUE"

    return-object p0

    :cond_30
    const/16 v0, 0x31

    if-ne p0, v0, :cond_31

    const-string p0, "HDR_MAXCLL"

    return-object p0

    :cond_31
    const/16 v0, 0x32

    if-ne p0, v0, :cond_32

    const-string p0, "HDR_SETTING"

    return-object p0

    :cond_32
    const/16 v0, 0x33

    if-ne p0, v0, :cond_33

    const-string p0, "CM_COLOR_GAMUT_PRE"

    return-object p0

    :cond_33
    const/16 v0, 0x34

    if-ne p0, v0, :cond_34

    const-string p0, "DBC_LCE_POWER"

    return-object p0

    :cond_34
    const/16 v0, 0x35

    if-ne p0, v0, :cond_35

    const-string p0, "DBC_LCE_DATA_PATH"

    return-object p0

    :cond_35
    const/16 v0, 0x36

    if-ne p0, v0, :cond_36

    const-string p0, "DYNAMIC_POWER_CTRL"

    return-object p0

    :cond_36
    const/16 v0, 0x37

    if-ne p0, v0, :cond_37

    const-string p0, "DMA_LOAD"

    return-object p0

    :cond_37
    const/16 v0, 0x38

    if-ne p0, v0, :cond_38

    const-string p0, "ANALOG_BYPASS_MODE"

    return-object p0

    :cond_38
    const/16 v0, 0x39

    if-ne p0, v0, :cond_39

    const-string p0, "PANEL_TYPE"

    return-object p0

    :cond_39
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_3a

    const-string p0, "GAMMA_TABLE_ENABLE"

    return-object p0

    :cond_3a
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_3b

    const-string p0, "HDR_PANEL_NITES_SET"

    return-object p0

    :cond_3b
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_3c

    const-string p0, "PEAKING_IDLE_CLK_ENABLE"

    return-object p0

    :cond_3c
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_3d

    const-string p0, "CM_MAGENTA_GAIN"

    return-object p0

    :cond_3d
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_3e

    const-string p0, "CM_RED_GAIN"

    return-object p0

    :cond_3e
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3f

    const-string p0, "CM_YELLOW_GAIN"

    return-object p0

    :cond_3f
    const/16 v0, 0x41

    if-ne p0, v0, :cond_40

    const-string p0, "CM_GREEN_GAIN"

    return-object p0

    :cond_40
    const/16 v0, 0x42

    if-ne p0, v0, :cond_41

    const-string p0, "CM_BLUE_GAIN"

    return-object p0

    :cond_41
    const/16 v0, 0x43

    if-ne p0, v0, :cond_42

    const-string p0, "CM_CYAN_GAIN"

    return-object p0

    :cond_42
    const/16 v0, 0x44

    if-ne p0, v0, :cond_43

    const-string p0, "BLC_PWM_ENABLE"

    return-object p0

    :cond_43
    const/16 v0, 0x45

    if-ne p0, v0, :cond_44

    const-string p0, "DBC_LED_GAIN"

    return-object p0

    :cond_44
    const/16 v0, 0x46

    if-ne p0, v0, :cond_45

    const-string p0, "SCALER_FILTER_LEVEL"

    return-object p0

    :cond_45
    const/16 v0, 0x47

    if-ne p0, v0, :cond_46

    const-string p0, "CCF1_UPDATE"

    return-object p0

    :cond_46
    const/16 v0, 0x48

    if-ne p0, v0, :cond_47

    const-string p0, "CCF2_UPDATE"

    return-object p0

    :cond_47
    const/16 v0, 0x49

    if-ne p0, v0, :cond_48

    const-string p0, "FW_UPDATE"

    return-object p0

    :cond_48
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_49

    const-string p0, "HUE_SAT_ADJ"

    return-object p0

    :cond_49
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_4a

    const-string p0, "CSC_MATRIX"

    return-object p0

    :cond_4a
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_4b

    const-string p0, "SCALER_PP_FILTER_LEVEL"

    return-object p0

    :cond_4b
    const/16 v0, 0x50

    if-ne p0, v0, :cond_4c

    const-string p0, "CONTRAST_DIMMING"

    return-object p0

    :cond_4c
    const/16 v0, 0x51

    if-ne p0, v0, :cond_4d

    const-string p0, "S_CURVE"

    return-object p0

    :cond_4d
    const/16 v0, 0x52

    if-ne p0, v0, :cond_4e

    const-string p0, "BRIGHTNESS_CHIP"

    return-object p0

    :cond_4e
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_4f

    const-string p0, "HDR_PREPARE"

    return-object p0

    :cond_4f
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_50

    const-string p0, "HDR_COMPLETE"

    return-object p0

    :cond_50
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_51

    const-string p0, "MCF_DATA"

    return-object p0

    :cond_51
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_52

    const-string p0, "Y5P"

    return-object p0

    :cond_52
    const/16 v0, 0x63

    if-ne p0, v0, :cond_53

    const-string p0, "PANEL_NITS"

    return-object p0

    :cond_53
    const/16 v0, 0x64

    if-ne p0, v0, :cond_54

    const-string p0, "SEND_FRAME"

    return-object p0

    :cond_54
    const/16 v0, 0x65

    if-ne p0, v0, :cond_55

    const-string p0, "OSD_PATTERN_SHOW"

    return-object p0

    :cond_55
    const/16 v0, 0x66

    if-ne p0, v0, :cond_56

    const-string p0, "DBG_TARGET_PI_REGADDR_SET"

    return-object p0

    :cond_56
    const/16 v0, 0x67

    if-ne p0, v0, :cond_57

    const-string p0, "DBG_TARGET_REGADDR_VALUE_GET"

    return-object p0

    :cond_57
    const/16 v0, 0x68

    if-ne p0, v0, :cond_58

    const-string p0, "MEMC_ENABLE_FOR_ASUS_CAMERA"

    return-object p0

    :cond_58
    const/16 v0, 0x69

    if-ne p0, v0, :cond_59

    const-string p0, "DBG_TARGET_REGADDR_VALUE_SET"

    return-object p0

    :cond_59
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_5a

    const-string p0, "DBG_KERNEL_LOG_LEVEL"

    return-object p0

    :cond_5a
    const/16 v0, 0x6b

    if-ne p0, v0, :cond_5b

    const-string p0, "DBG_SEND_PACKAGE"

    return-object p0

    :cond_5b
    const/16 v0, 0x6c

    if-ne p0, v0, :cond_5c

    const-string p0, "DBG_LOOP_BACK_MODE"

    return-object p0

    :cond_5c
    const/16 v0, 0x6d

    if-ne p0, v0, :cond_5d

    const-string p0, "DBG_LOOP_BACK_MODE_RES"

    return-object p0

    :cond_5d
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_5e

    const-string p0, "APP_FILTER"

    return-object p0

    :cond_5e
    const/16 v0, 0x70

    if-ne p0, v0, :cond_5f

    const-string p0, "DBG_TARGET_REGADDR_VALUE_SET2"

    return-object p0

    :cond_5f
    const/16 v0, 0x71

    if-ne p0, v0, :cond_60

    const-string p0, "DEBUG_CAP"

    return-object p0

    :cond_60
    const/16 v0, 0x78

    if-ne p0, v0, :cond_61

    const-string p0, "MODE_SET"

    return-object p0

    :cond_61
    const/16 v0, 0x79

    if-ne p0, v0, :cond_62

    const-string p0, "VIDEO_FRAME_RATE_SET"

    return-object p0

    :cond_62
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_63

    const-string p0, "OUT_FRAME_RATE_SET"

    return-object p0

    :cond_63
    const/16 v0, 0x7b

    if-ne p0, v0, :cond_64

    const-string p0, "OSD_ENABLE"

    return-object p0

    :cond_64
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_65

    const-string p0, "OSD_AUTOREFRESH"

    return-object p0

    :cond_65
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_66

    const-string p0, "OSD_OVERFLOW_ST"

    return-object p0

    :cond_66
    const/16 v0, 0x7e

    if-ne p0, v0, :cond_67

    const-string p0, "WORK_MODE"

    return-object p0

    :cond_67
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_68

    const-string p0, "FRC_LOW_LATENCY"

    return-object p0

    :cond_68
    const/16 v0, 0x80

    if-ne p0, v0, :cond_69

    const-string p0, "PANEL_TE"

    return-object p0

    :cond_69
    const/16 v0, 0x81

    if-ne p0, v0, :cond_6a

    const-string p0, "AP_TE"

    return-object p0

    :cond_6a
    const/16 v0, 0x82

    if-ne p0, v0, :cond_6b

    const-string p0, "N2M_ENABLE"

    return-object p0

    :cond_6b
    const/16 v0, 0x84

    if-ne p0, v0, :cond_6c

    const-string p0, "WAIT_VSYNC"

    return-object p0

    :cond_6c
    const/16 v0, 0x85

    if-ne p0, v0, :cond_6d

    const-string p0, "MIPI2RX_PWRST"

    return-object p0

    :cond_6d
    const/16 v0, 0x86

    if-ne p0, v0, :cond_6e

    const-string p0, "DUAL2SINGLE_ST"

    return-object p0

    :cond_6e
    const/16 v0, 0x87

    if-ne p0, v0, :cond_6f

    const-string p0, "MEMC_OSD"

    return-object p0

    :cond_6f
    const/16 v0, 0x88

    if-ne p0, v0, :cond_70

    const-string p0, "MEMC_OSD_PROTECT"

    return-object p0

    :cond_70
    const/16 v0, 0x89

    if-ne p0, v0, :cond_71

    const-string p0, "LCE_DEMO_WINDOW"

    return-object p0

    :cond_71
    const/16 v0, 0x8a

    if-ne p0, v0, :cond_72

    const-string p0, "TYPE_MAX"

    return-object p0

    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
