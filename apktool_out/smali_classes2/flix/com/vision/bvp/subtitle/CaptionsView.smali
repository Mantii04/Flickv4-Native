.class public Lflix/com/vision/bvp/subtitle/CaptionsView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;,
        Lflix/com/vision/bvp/subtitle/CaptionsView$TrackParseState;
    }
.end annotation


# static fields
.field public static w:Ljava/lang/String;


# instance fields
.field public q:J

.field public r:Landroidx/media3/exoplayer/ExoPlayer;

.field public s:Ljava/util/TreeMap;

.field public t:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

.field public u:Landroid/net/Uri;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 p1, 0x0

    .line 5
    .line 6
    iput-wide p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->q:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->u:Landroid/net/Uri;

    .line 10
    .line 11
    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->v:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static p(Ljava/lang/String;)J
    .locals 11

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x2

    .line 8
    aget-object v0, p0, v0

    .line 9
    .line 10
    const-string v1, ","

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    aget-object v2, p0, v1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const/4 v4, 0x1

    .line 28
    aget-object p0, p0, v4

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    aget-object p0, v0, v1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    aget-object p0, v0, v4

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    const-wide/32 v9, 0x36ee80

    .line 59
    .line 60
    .line 61
    mul-long/2addr v2, v9

    .line 62
    const-wide/32 v9, 0xea60

    .line 63
    .line 64
    .line 65
    mul-long/2addr v5, v9

    .line 66
    add-long/2addr v5, v2

    .line 67
    const-wide/16 v2, 0x3e8

    .line 68
    .line 69
    mul-long/2addr v7, v2

    .line 70
    add-long/2addr v7, v5

    .line 71
    add-long/2addr v7, v0

    .line 72
    return-wide v7
.end method

.method public static parse(Ljava/io/InputStream;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "LL4/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->b:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lflix/com/vision/bvp/subtitle/CaptionsView;->parseSrt(Ljava/io/InputStream;)Ljava/util/TreeMap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->e:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lflix/com/vision/bvp/subtitle/CaptionsView;->parseVtt(Ljava/io/InputStream;)Ljava/util/TreeMap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p0}, Lflix/com/vision/bvp/subtitle/CaptionsView;->parseSrt(Ljava/io/InputStream;)Ljava/util/TreeMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static parseSrt(Ljava/io/InputStream;)Ljava/util/TreeMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "LL4/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/io/LineNumberReader;

    .line 4
    .line 5
    sget-object v2, Lflix/com/vision/bvp/subtitle/CaptionsView;->w:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/io/InputStreamReader;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    .line 16
    .line 17
    sget-object v3, Lflix/com/vision/bvp/subtitle/CaptionsView;->w:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/TreeMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lflix/com/vision/bvp/subtitle/CaptionsView$TrackParseState;->b:Lflix/com/vision/bvp/subtitle/CaptionsView$TrackParseState;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v8, v3

    .line 39
    move v7, v5

    .line 40
    :goto_1
    const/4 v6, 0x0

    .line 41
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    if-eqz v9, :cond_f

    .line 46
    .line 47
    const/4 v10, 0x1

    .line 48
    add-int/2addr v7, v10

    .line 49
    const-string v11, "SubtitleView"

    .line 50
    .line 51
    const-string v12, "<br/>"

    .line 52
    .line 53
    sget-object v13, Lflix/com/vision/bvp/subtitle/CaptionsView$TrackParseState;->e:Lflix/com/vision/bvp/subtitle/CaptionsView$TrackParseState;

    .line 54
    .line 55
    if-ne v8, v3, :cond_b

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    if-eqz v14, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    if-eqz v14, :cond_3

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_3
    move v14, v5

    .line 72
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    if-ge v14, v15, :cond_7

    .line 77
    .line 78
    if-nez v14, :cond_4

    .line 79
    .line 80
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    const/16 v4, 0x2d

    .line 85
    .line 86
    if-ne v15, v4, :cond_4

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-ne v4, v10, :cond_6

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/16 v15, 0xa

    .line 100
    .line 101
    invoke-static {v4, v15}, Ljava/lang/Character;->digit(CI)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-gez v4, :cond_6

    .line 106
    .line 107
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-lez v4, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v14, "No cue number found at line: "

    .line 123
    .line 124
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    if-eqz v6, :cond_a

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-lez v4, :cond_a

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const-string v8, "OpenSubtitles"

    .line 154
    .line 155
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-nez v8, :cond_9

    .line 160
    .line 161
    const-string v8, "elsubtitle.com"

    .line 162
    .line 163
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_9

    .line 168
    .line 169
    const-string v8, "addic7ed."

    .line 170
    .line 171
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-nez v8, :cond_9

    .line 176
    .line 177
    const-string v8, "FlixTor."

    .line 178
    .line 179
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_9

    .line 184
    .line 185
    const-string v8, "db.link"

    .line 186
    .line 187
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_8

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    add-int/lit8 v8, v8, -0x5

    .line 199
    .line 200
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v6, v4}, LL4/c;->setText(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_9
    :goto_5
    const-string v4, "Like the App? Join us on X and Discord <br/>at @FlixVisionApp to stay in the loop!"

    .line 209
    .line 210
    invoke-virtual {v6, v4}, LL4/c;->setText(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_6
    iget-wide v8, v6, LL4/c;->a:J

    .line 214
    .line 215
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v0, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 223
    .line 224
    .line 225
    move-object v8, v13

    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :cond_a
    move-object v8, v13

    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_b
    :goto_7
    sget-object v4, Lflix/com/vision/bvp/subtitle/CaptionsView$TrackParseState;->f:Lflix/com/vision/bvp/subtitle/CaptionsView$TrackParseState;

    .line 232
    .line 233
    if-ne v8, v13, :cond_d

    .line 234
    .line 235
    const-string v13, "-->"

    .line 236
    .line 237
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    array-length v14, v13

    .line 242
    const/4 v15, 0x2

    .line 243
    if-ne v14, v15, :cond_c

    .line 244
    .line 245
    aget-object v6, v13, v5

    .line 246
    .line 247
    invoke-static {v6}, Lflix/com/vision/bvp/subtitle/CaptionsView;->p(Ljava/lang/String;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v8

    .line 251
    aget-object v6, v13, v10

    .line 252
    .line 253
    invoke-static {v6}, Lflix/com/vision/bvp/subtitle/CaptionsView;->p(Ljava/lang/String;)J

    .line 254
    .line 255
    .line 256
    move-result-wide v10

    .line 257
    new-instance v6, LL4/c;

    .line 258
    .line 259
    invoke-direct {v6, v8, v9, v10, v11}, LL4/c;-><init>(JJ)V

    .line 260
    .line 261
    .line 262
    move-object v8, v4

    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v13, "No time-code found at line: "

    .line 268
    .line 269
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :cond_d
    if-ne v8, v4, :cond_1

    .line 283
    .line 284
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-nez v4, :cond_e

    .line 289
    .line 290
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    goto/16 :goto_2

    .line 297
    .line 298
    :cond_e
    move-object v8, v3

    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_f
    if-eqz v6, :cond_10

    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-lez v1, :cond_10

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    add-int/lit8 v2, v2, -0x5

    .line 318
    .line 319
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v6, v1}, LL4/c;->setText(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-wide v1, v6, LL4/c;->a:J

    .line 327
    .line 328
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v0, v1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    :cond_10
    return-object v0
.end method

.method public static parseVtt(Ljava/io/InputStream;)Ljava/util/TreeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "LL4/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/LineNumberReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    :goto_1
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    const-string v5, "<br/>"

    .line 50
    .line 51
    invoke-static {v3, v4, v5}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x5

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static {v2, v4, v3}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const-string v2, " --> "

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    array-length v2, v1

    .line 69
    const/4 v3, 0x2

    .line 70
    if-ne v2, v3, :cond_0

    .line 71
    .line 72
    aget-object v2, v1, v4

    .line 73
    .line 74
    invoke-static {v2}, Lflix/com/vision/bvp/subtitle/CaptionsView;->q(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    const/4 v2, 0x1

    .line 79
    aget-object v1, v1, v2

    .line 80
    .line 81
    invoke-static {v1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->q(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v5, LL4/c;

    .line 90
    .line 91
    invoke-direct/range {v5 .. v10}, LL4/c;-><init>(JJLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-object p0
.end method

.method public static q(Ljava/lang/String;)J
    .locals 15

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x3

    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    const-wide/32 v4, 0xea60

    .line 12
    .line 13
    .line 14
    const-string v6, "\\."

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aget-object v0, p0, v0

    .line 22
    .line 23
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    aget-object v1, p0, v8

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    aget-object p0, p0, v7

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    aget-object p0, v0, v8

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v13

    .line 57
    aget-object p0, v0, v7

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    const-wide/32 v6, 0x36ee80

    .line 68
    .line 69
    .line 70
    mul-long/2addr v9, v6

    .line 71
    mul-long/2addr v11, v4

    .line 72
    add-long/2addr v11, v9

    .line 73
    mul-long/2addr v13, v2

    .line 74
    add-long/2addr v13, v11

    .line 75
    add-long/2addr v13, v0

    .line 76
    return-wide v13

    .line 77
    :cond_0
    aget-object v0, p0, v7

    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    aget-object p0, p0, v8

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    aget-object p0, v0, v8

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v11

    .line 103
    aget-object p0, v0, v7

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    mul-long/2addr v9, v4

    .line 114
    mul-long/2addr v11, v2

    .line 115
    add-long/2addr v11, v9

    .line 116
    add-long/2addr v11, v0

    .line 117
    return-wide v11
.end method


# virtual methods
.method public changeEncoding(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->u:Landroid/net/Uri;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->v:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sput-object p1, Lflix/com/vision/bvp/subtitle/CaptionsView;->w:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-static {v0}, LK4/y;->isRemotePath(Landroid/net/Uri;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :try_start_0
    new-instance p1, Ljava/net/URL;

    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->u:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, LL4/f;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, LL4/a;

    .line 38
    .line 39
    invoke-direct {v2, p0, p1}, LL4/a;-><init>(Lflix/com/vision/bvp/subtitle/CaptionsView;Ljava/net/URL;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, LL4/f;-><init>(Landroid/content/Context;LL4/e;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "subtitle.srt"

    .line 50
    .line 51
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception p1

    .line 62
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->u:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->n(Ljava/lang/String;)Ljava/util/TreeMap;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    iget-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->v:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->n(Ljava/lang/String;)Ljava/util/TreeMap;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    .line 88
    .line 89
    :cond_3
    :goto_1
    return-void
.end method

.method public final n(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    .line 4
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    iget-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->t:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    .line 13
    .line 14
    invoke-static {v1, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->parse(Ljava/io/InputStream;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;)Ljava/util/TreeMap;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    move-object v0, v1

    .line 29
    goto :goto_2

    .line 30
    :catch_1
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :catch_2
    move-exception p1

    .line 35
    move-object v1, v0

    .line 36
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_3
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_1
    return-object v0

    .line 50
    :goto_2
    if-eqz v0, :cond_1

    .line 51
    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catch_4
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_3
    throw p1
.end method

.method public final o(J)Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->q:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-object v0, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    cmp-long v3, p1, v3

    .line 39
    .line 40
    if-gez v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, LL4/c;

    .line 48
    .line 49
    iget-wide v3, v3, LL4/c;->b:J

    .line 50
    .line 51
    cmp-long v3, p1, v3

    .line 52
    .line 53
    if-gez v3, :cond_0

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, LL4/c;

    .line 60
    .line 61
    iget-object v1, v1, LL4/c;->c:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x12c

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x40c00000    # 6.0f

    .line 10
    .line 11
    const/high16 v1, -0x1000000

    .line 12
    .line 13
    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->r:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->o(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "{\\an8}"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const-string v2, "(?i)\\{\\\\an8\\}"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/16 v2, 0x31

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/16 v2, 0x51

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eq v3, v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const-string v2, "{\\"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    const-string v2, "\\{\\\\.*?\\}"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    const-string v1, "SubtitleView"

    .line 88
    .line 89
    const-string v2, "Error updating captions"

    .line 90
    .line 91
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_2
    const-wide/16 v0, 0x32

    .line 95
    .line 96
    invoke-virtual {p0, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public setCaptionsSource(Landroid/net/Uri;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x0

    .line 1
    iput-object p3, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->u:Landroid/net/Uri;

    .line 2
    iput-object p3, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->v:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->t:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->u:Landroid/net/Uri;

    .line 6
    invoke-static {p1}, LK4/y;->isRemotePath(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, LL4/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, LL4/a;

    invoke-direct {v0, p0, p2}, LL4/a;-><init>(Lflix/com/vision/bvp/subtitle/CaptionsView;Ljava/net/URL;)V

    invoke-direct {p1, p3, v0}, LL4/f;-><init>(Landroid/content/Context;LL4/e;)V

    .line 9
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "subtitle.srt"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->n(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object p1

    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    .line 12
    :goto_1
    invoke-virtual {p0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    invoke-virtual {p0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCaptionsSource(Ljava/lang/String;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x0

    .line 14
    iput-object p3, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->u:Landroid/net/Uri;

    .line 15
    iput-object p3, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->v:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->t:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->v:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->n(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object p1

    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;

    return-void
.end method

.method public setCaptionsViewLoadListener(LL4/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/bvp/subtitle/CaptionsView;->r:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-virtual {p0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
