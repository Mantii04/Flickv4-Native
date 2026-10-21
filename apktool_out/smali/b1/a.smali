.class public final Lb1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/s;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb1/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LS0/r;",
            "Landroidx/media3/common/util/Consumer<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 p4, 0x8

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    iget-object v0, p0, Lb1/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_8

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 p3, 0x1

    .line 29
    if-lt p1, p4, :cond_0

    .line 30
    .line 31
    move p1, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move p1, p2

    .line 34
    :goto_1
    const-string v1, "Incomplete Mp4Webvtt Top Level box header found."

    .line 35
    .line 36
    invoke-static {p1, v1}, LP3/v;->checkArgument(ZLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const v3, 0x76747463

    .line 48
    .line 49
    .line 50
    if-ne v1, v3, :cond_7

    .line 51
    .line 52
    sub-int/2addr p1, p4

    .line 53
    const/4 v1, 0x0

    .line 54
    move-object v3, v1

    .line 55
    move-object v4, v3

    .line 56
    :cond_1
    :goto_2
    if-lez p1, :cond_4

    .line 57
    .line 58
    if-lt p1, p4, :cond_2

    .line 59
    .line 60
    move v5, p3

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    move v5, p2

    .line 63
    :goto_3
    const-string v6, "Incomplete vtt cue box header found."

    .line 64
    .line 65
    invoke-static {v5, v6}, LP3/v;->checkArgument(ZLjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    add-int/lit8 p1, p1, -0x8

    .line 77
    .line 78
    sub-int/2addr v5, p4

    .line 79
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-static {v7, v8, v5}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 92
    .line 93
    .line 94
    sub-int/2addr p1, v5

    .line 95
    const v5, 0x73747467

    .line 96
    .line 97
    .line 98
    if-ne v6, v5, :cond_3

    .line 99
    .line 100
    sget-object v4, Lb1/i;->a:Ljava/util/regex/Pattern;

    .line 101
    .line 102
    new-instance v4, Lb1/h;

    .line 103
    .line 104
    invoke-direct {v4}, Lb1/h;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v7, v4}, Lb1/i;->e(Ljava/lang/String;Lb1/h;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Lb1/h;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const v5, 0x7061796c

    .line 116
    .line 117
    .line 118
    if-ne v6, v5, :cond_1

    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 125
    .line 126
    invoke-static {v1, v3, v5}, Lb1/i;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    if-nez v3, :cond_5

    .line 132
    .line 133
    const-string v3, ""

    .line 134
    .line 135
    :cond_5
    if-eqz v4, :cond_6

    .line 136
    .line 137
    invoke-virtual {v4, v3}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    invoke-static {v3}, Lb1/i;->newCueForText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_4
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_7
    sub-int/2addr p1, p4

    .line 156
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_8
    new-instance v1, LS0/c;

    .line 162
    .line 163
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    invoke-direct/range {v1 .. v6}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p5, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final synthetic parseToLegacySubtitle([BII)LS0/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LS0/o;->a(LS0/s;[BII)LS0/i;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, LS0/o;->b(LS0/s;)V

    return-void
.end method
