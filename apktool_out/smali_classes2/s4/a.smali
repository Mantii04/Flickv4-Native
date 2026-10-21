.class public abstract Ls4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static generateLoaderView(Ljava/lang/String;)Lr4/g;
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    sparse-switch v4, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :sswitch_0
    const-string v4, "PhoneWave"

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    const/16 v3, 0xb

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :sswitch_1
    const-string v4, "FivePulse"

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    const/16 v3, 0xa

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :sswitch_2
    const-string v4, "ThreePulse"

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_2
    const/16 v3, 0x9

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :sswitch_3
    const-string v4, "ClassicSpinner"

    .line 60
    .line 61
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_3

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_3
    const/16 v3, 0x8

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :sswitch_4
    const-string v4, "Sharingan"

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const/4 v3, 0x7

    .line 83
    goto :goto_0

    .line 84
    :sswitch_5
    const-string v4, "Whirlpool"

    .line 85
    .line 86
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 v3, 0x6

    .line 94
    goto :goto_0

    .line 95
    :sswitch_6
    const-string v4, "Radar"

    .line 96
    .line 97
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    move v3, v0

    .line 105
    goto :goto_0

    .line 106
    :sswitch_7
    const-string v4, "LineSpinner"

    .line 107
    .line 108
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    move v3, v1

    .line 116
    goto :goto_0

    .line 117
    :sswitch_8
    const-string v4, "Worm"

    .line 118
    .line 119
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    move v3, v2

    .line 127
    goto :goto_0

    .line 128
    :sswitch_9
    const-string v4, "TwinFishesSpinner"

    .line 129
    .line 130
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_9

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_9
    const/4 v3, 0x2

    .line 138
    goto :goto_0

    .line 139
    :sswitch_a
    const-string v4, "FishSpinner"

    .line 140
    .line 141
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-nez p0, :cond_a

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_a
    const/4 v3, 0x1

    .line 149
    goto :goto_0

    .line 150
    :sswitch_b
    const-string v4, "FourPulse"

    .line 151
    .line 152
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_b

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_b
    const/4 v3, 0x0

    .line 160
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 161
    .line 162
    .line 163
    new-instance p0, Lr4/b;

    .line 164
    .line 165
    invoke-direct {p0}, Lr4/b;-><init>()V

    .line 166
    .line 167
    .line 168
    return-object p0

    .line 169
    :pswitch_0
    new-instance p0, Lr4/i;

    .line 170
    .line 171
    invoke-direct {p0}, Lr4/i;-><init>()V

    .line 172
    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_1
    :try_start_0
    new-instance p0, Lr4/k;

    .line 176
    .line 177
    invoke-direct {p0, v2}, Lr4/k;-><init>(I)V
    :try_end_0
    .catch Lcom/tuyenmonkey/mkloader/exception/InvalidNumberOfPulseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    return-object p0

    .line 181
    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_2
    new-instance p0, Lr4/b;

    .line 187
    .line 188
    invoke-direct {p0}, Lr4/b;-><init>()V

    .line 189
    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_3
    new-instance p0, Lr4/p;

    .line 193
    .line 194
    invoke-direct {p0}, Lr4/p;-><init>()V

    .line 195
    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_4
    new-instance p0, Lr4/t;

    .line 199
    .line 200
    invoke-direct {p0}, Lr4/t;-><init>()V

    .line 201
    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_5
    new-instance p0, Lr4/f;

    .line 205
    .line 206
    invoke-direct {p0}, Lr4/f;-><init>()V

    .line 207
    .line 208
    .line 209
    return-object p0

    .line 210
    :pswitch_6
    new-instance p0, Lr4/v;

    .line 211
    .line 212
    invoke-direct {p0}, Lr4/v;-><init>()V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :pswitch_7
    new-instance p0, Lr4/r;

    .line 217
    .line 218
    invoke-direct {p0}, Lr4/r;-><init>()V

    .line 219
    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_8
    new-instance p0, Lr4/d;

    .line 223
    .line 224
    invoke-direct {p0}, Lr4/d;-><init>()V

    .line 225
    .line 226
    .line 227
    return-object p0

    .line 228
    :goto_1
    :pswitch_9
    :try_start_1
    new-instance p0, Lr4/k;

    .line 229
    .line 230
    invoke-direct {p0, v1}, Lr4/k;-><init>(I)V
    :try_end_1
    .catch Lcom/tuyenmonkey/mkloader/exception/InvalidNumberOfPulseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :catch_1
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    :pswitch_a
    :try_start_2
    new-instance p0, Lr4/k;

    .line 239
    .line 240
    invoke-direct {p0, v0}, Lr4/k;-><init>(I)V
    :try_end_2
    .catch Lcom/tuyenmonkey/mkloader/exception/InvalidNumberOfPulseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    .line 242
    .line 243
    return-object p0

    .line 244
    :catch_2
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    .line 247
    .line 248
    :pswitch_b
    new-instance p0, Lr4/m;

    .line 249
    .line 250
    invoke-direct {p0}, Lr4/m;-><init>()V

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76477a0d -> :sswitch_b
        -0x5d60577f -> :sswitch_a
        -0x3000b3f5 -> :sswitch_9
        0x293b33 -> :sswitch_8
        0x3022765 -> :sswitch_7
        0x4b122e6 -> :sswitch_6
        0x11d93aee -> :sswitch_5
        0x196a55e9 -> :sswitch_4
        0x2e417547 -> :sswitch_3
        0x35f934bb -> :sswitch_2
        0x3928b3e7 -> :sswitch_1
        0x3a1dfd67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method
