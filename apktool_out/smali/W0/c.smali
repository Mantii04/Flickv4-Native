.class public final LW0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(IIIIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LW0/c;->a:I

    .line 5
    .line 6
    iput p2, p0, LW0/c;->b:I

    .line 7
    .line 8
    iput p3, p0, LW0/c;->c:I

    .line 9
    .line 10
    iput p4, p0, LW0/c;->d:I

    .line 11
    .line 12
    iput p5, p0, LW0/c;->e:I

    .line 13
    .line 14
    iput p6, p0, LW0/c;->f:I

    .line 15
    .line 16
    iput p7, p0, LW0/c;->g:I

    .line 17
    .line 18
    iput p8, p0, LW0/c;->h:I

    .line 19
    .line 20
    iput p9, p0, LW0/c;->i:I

    .line 21
    .line 22
    iput p10, p0, LW0/c;->j:I

    .line 23
    .line 24
    iput p11, p0, LW0/c;->k:I

    .line 25
    .line 26
    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)LW0/c;
    .locals 18

    .line 1
    const/4 v1, 0x7

    .line 2
    move-object/from16 v2, p0

    .line 3
    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, ","

    .line 9
    .line 10
    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    move v7, v3

    .line 17
    move v8, v7

    .line 18
    move v9, v8

    .line 19
    move v10, v9

    .line 20
    move v11, v10

    .line 21
    move v12, v11

    .line 22
    move v13, v12

    .line 23
    move v14, v13

    .line 24
    move v15, v14

    .line 25
    move/from16 v16, v15

    .line 26
    .line 27
    move v5, v4

    .line 28
    :goto_0
    array-length v6, v2

    .line 29
    if-ge v5, v6, :cond_a

    .line 30
    .line 31
    aget-object v6, v2, v5

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v17

    .line 48
    sparse-switch v17, :sswitch_data_0

    .line 49
    .line 50
    .line 51
    move v0, v3

    .line 52
    const/16 v17, 0x1

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :sswitch_0
    const/16 v17, 0x1

    .line 57
    .line 58
    const-string v0, "outlinecolour"

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_0
    const/16 v0, 0x9

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :sswitch_1
    const/16 v17, 0x1

    .line 73
    .line 74
    const-string v0, "alignment"

    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_1
    const/16 v0, 0x8

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :sswitch_2
    const/16 v17, 0x1

    .line 89
    .line 90
    const-string v0, "borderstyle"

    .line 91
    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_2
    move v0, v1

    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :sswitch_3
    const/16 v17, 0x1

    .line 104
    .line 105
    const-string v0, "fontsize"

    .line 106
    .line 107
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const/4 v0, 0x6

    .line 115
    goto :goto_2

    .line 116
    :sswitch_4
    const/16 v17, 0x1

    .line 117
    .line 118
    const-string v0, "name"

    .line 119
    .line 120
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/4 v0, 0x5

    .line 128
    goto :goto_2

    .line 129
    :sswitch_5
    const/16 v17, 0x1

    .line 130
    .line 131
    const-string v0, "bold"

    .line 132
    .line 133
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    const/4 v0, 0x4

    .line 141
    goto :goto_2

    .line 142
    :sswitch_6
    const/16 v17, 0x1

    .line 143
    .line 144
    const-string v0, "primarycolour"

    .line 145
    .line 146
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    const/4 v0, 0x3

    .line 154
    goto :goto_2

    .line 155
    :sswitch_7
    const/16 v17, 0x1

    .line 156
    .line 157
    const-string v0, "strikeout"

    .line 158
    .line 159
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_7

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    const/4 v0, 0x2

    .line 167
    goto :goto_2

    .line 168
    :sswitch_8
    const/16 v17, 0x1

    .line 169
    .line 170
    const-string v0, "underline"

    .line 171
    .line 172
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_8

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_8
    move/from16 v0, v17

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :sswitch_9
    const/16 v17, 0x1

    .line 183
    .line 184
    const-string v0, "italic"

    .line 185
    .line 186
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_9

    .line 191
    .line 192
    :goto_1
    move v0, v3

    .line 193
    goto :goto_2

    .line 194
    :cond_9
    move v0, v4

    .line 195
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :pswitch_0
    move v10, v5

    .line 200
    goto :goto_3

    .line 201
    :pswitch_1
    move v8, v5

    .line 202
    goto :goto_3

    .line 203
    :pswitch_2
    move/from16 v16, v5

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :pswitch_3
    move v11, v5

    .line 207
    goto :goto_3

    .line 208
    :pswitch_4
    move v7, v5

    .line 209
    goto :goto_3

    .line 210
    :pswitch_5
    move v12, v5

    .line 211
    goto :goto_3

    .line 212
    :pswitch_6
    move v9, v5

    .line 213
    goto :goto_3

    .line 214
    :pswitch_7
    move v15, v5

    .line 215
    goto :goto_3

    .line 216
    :pswitch_8
    move v14, v5

    .line 217
    goto :goto_3

    .line 218
    :pswitch_9
    move v13, v5

    .line 219
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_a
    if-eq v7, v3, :cond_b

    .line 224
    .line 225
    new-instance v6, LW0/c;

    .line 226
    .line 227
    array-length v0, v2

    .line 228
    move/from16 v17, v0

    .line 229
    .line 230
    invoke-direct/range {v6 .. v17}, LW0/c;-><init>(IIIIIIIIIII)V

    .line 231
    .line 232
    .line 233
    return-object v6

    .line 234
    :cond_b
    const/4 v0, 0x0

    .line 235
    return-object v0

    .line 236
    nop

    .line 237
    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
    .end sparse-switch

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
