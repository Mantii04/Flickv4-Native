.class public final Lv0/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv0/W;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public peekId3Data(Lv0/D;LJ0/h;I)Landroidx/media3/common/Metadata;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    :goto_0
    move v3, v0

    .line 5
    :cond_0
    rem-int/lit8 v4, v3, 0xa

    .line 6
    .line 7
    add-int/lit8 v5, v4, 0xa

    .line 8
    .line 9
    iget-object v6, p0, Lv0/W;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    const/16 v7, 0xa

    .line 12
    .line 13
    if-nez v4, :cond_1

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const/16 v10, 0x9

    .line 26
    .line 27
    invoke-static {v8, v7, v9, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-nez v3, :cond_2

    .line 31
    .line 32
    move v8, v7

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v8, 0x1

    .line 35
    :goto_1
    :try_start_0
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    sub-int v10, v5, v8

    .line 40
    .line 41
    invoke-interface {p1, v9, v10, v8}, Lv0/D;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedInt24()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const v5, 0x494433

    .line 55
    .line 56
    .line 57
    if-ne v4, v5, :cond_4

    .line 58
    .line 59
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x6

    .line 64
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    add-int/lit8 v5, v4, 0xa

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    new-array v1, v5, [B

    .line 76
    .line 77
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6, v3, v1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v1, v7, v4}, Lv0/D;->peekFully([BII)V

    .line 85
    .line 86
    .line 87
    new-instance v3, LJ0/j;

    .line 88
    .line 89
    invoke-direct {v3, p2}, LJ0/j;-><init>(LJ0/h;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v1, v5}, LJ0/j;->decode([BI)Landroidx/media3/common/Metadata;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-interface {p1, v4}, Lv0/D;->advancePeekPosition(I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    add-int/2addr v2, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->peekInt()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v4}, Lv0/Z;->getFrameSize(I)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    const/4 v5, -0x1

    .line 111
    if-eq v4, v5, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    if-nez v3, :cond_6

    .line 115
    .line 116
    const/16 v4, 0x14

    .line 117
    .line 118
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 119
    .line 120
    .line 121
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    if-le v3, p3, :cond_0

    .line 124
    .line 125
    :catch_0
    :goto_3
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v2}, Lv0/D;->advancePeekPosition(I)V

    .line 129
    .line 130
    .line 131
    return-object v1
.end method
