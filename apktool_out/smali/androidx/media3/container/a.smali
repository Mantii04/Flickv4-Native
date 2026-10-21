.class public final Landroidx/media3/container/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Landroidx/media3/container/b;Ls0/w;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p2, Ls0/w;->a:I

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move v0, v4

    .line 18
    :goto_1
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p2, Ls0/w;->b:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-array v0, v0, [B

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    new-instance p2, Landroidx/media3/common/util/ParsableBitArray;

    .line 42
    .line 43
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p1, Landroidx/media3/container/b;->a:Z

    .line 47
    .line 48
    if-nez v0, :cond_10

    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iput-boolean v2, p0, Landroidx/media3/container/a;->a:Z

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const/4 v0, 0x2

    .line 60
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iget-boolean v6, p1, Landroidx/media3/container/b;->b:Z

    .line 69
    .line 70
    if-nez v6, :cond_f

    .line 71
    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    iput-boolean v4, p0, Landroidx/media3/container/a;->a:Z

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    if-eq v1, v3, :cond_5

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    :goto_2
    move v5, v4

    .line 88
    :goto_3
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 89
    .line 90
    .line 91
    iget-boolean v6, p1, Landroidx/media3/container/b;->d:Z

    .line 92
    .line 93
    if-eqz v6, :cond_e

    .line 94
    .line 95
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_7

    .line 100
    .line 101
    iget-boolean v6, p1, Landroidx/media3/container/b;->e:Z

    .line 102
    .line 103
    if-eqz v6, :cond_6

    .line 104
    .line 105
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    new-instance p1, Landroidx/media3/container/ObuParser$NotYetImplementedException;

    .line 110
    .line 111
    invoke-direct {p1, v2}, Landroidx/media3/container/ObuParser$NotYetImplementedException;-><init>(I)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_7
    :goto_4
    iget-boolean v6, p1, Landroidx/media3/container/b;->c:Z

    .line 116
    .line 117
    if-nez v6, :cond_d

    .line 118
    .line 119
    if-eq v1, v3, :cond_8

    .line 120
    .line 121
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 122
    .line 123
    .line 124
    :cond_8
    iget p1, p1, Landroidx/media3/container/b;->f:I

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 127
    .line 128
    .line 129
    if-eq v1, v0, :cond_9

    .line 130
    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    if-nez v5, :cond_9

    .line 134
    .line 135
    invoke-virtual {p2, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 136
    .line 137
    .line 138
    :cond_9
    if-eq v1, v3, :cond_b

    .line 139
    .line 140
    if-nez v1, :cond_a

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_a
    const/16 p1, 0x8

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    goto :goto_6

    .line 150
    :cond_b
    :goto_5
    const/16 p1, 0xff

    .line 151
    .line 152
    :goto_6
    if-eqz p1, :cond_c

    .line 153
    .line 154
    move v2, v4

    .line 155
    :cond_c
    iput-boolean v2, p0, Landroidx/media3/container/a;->a:Z

    .line 156
    .line 157
    return-void

    .line 158
    :cond_d
    new-instance p1, Landroidx/media3/container/ObuParser$NotYetImplementedException;

    .line 159
    .line 160
    invoke-direct {p1, v2}, Landroidx/media3/container/ObuParser$NotYetImplementedException;-><init>(I)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_e
    new-instance p1, Landroidx/media3/container/ObuParser$NotYetImplementedException;

    .line 165
    .line 166
    invoke-direct {p1, v2}, Landroidx/media3/container/ObuParser$NotYetImplementedException;-><init>(I)V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_f
    new-instance p1, Landroidx/media3/container/ObuParser$NotYetImplementedException;

    .line 171
    .line 172
    invoke-direct {p1, v2}, Landroidx/media3/container/ObuParser$NotYetImplementedException;-><init>(I)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_10
    new-instance p1, Landroidx/media3/container/ObuParser$NotYetImplementedException;

    .line 177
    .line 178
    invoke-direct {p1, v2}, Landroidx/media3/container/ObuParser$NotYetImplementedException;-><init>(I)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method

.method public static parse(Landroidx/media3/container/b;Ls0/w;)Landroidx/media3/container/a;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroidx/media3/container/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/media3/container/a;-><init>(Landroidx/media3/container/b;Ls0/w;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    const/4 p0, 0x0

    .line 8
    return-object p0
.end method


# virtual methods
.method public isDependedOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/container/a;->a:Z

    .line 2
    .line 3
    return v0
.end method
