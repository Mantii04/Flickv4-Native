.class public final Lc1/F;
.super Lv0/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V
    .locals 16

    .line 1
    new-instance v1, Lv0/j;

    .line 2
    .line 3
    invoke-direct {v1}, Lv0/j;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lc1/E;

    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lc1/E;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v3, 0x1

    .line 14
    .line 15
    add-long v7, p2, v3

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    const-wide/16 v9, 0x0

    .line 20
    .line 21
    const-wide/16 v13, 0xbc

    .line 22
    .line 23
    const/16 v15, 0x3e8

    .line 24
    .line 25
    move-object/from16 v0, p0

    .line 26
    .line 27
    move-wide/from16 v3, p2

    .line 28
    .line 29
    move-wide/from16 v11, p4

    .line 30
    .line 31
    invoke-direct/range {v0 .. v15}, Lv0/p;-><init>(Lv0/l;Lv0/o;JJJJJJI)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static a(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p0, 0x2

    .line 17
    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    add-int/lit8 p0, p0, 0x3

    .line 26
    .line 27
    aget-byte p0, p1, p0

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method
