.class public final synthetic LA4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LA4/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "Failed to remove check-in"

    .line 2
    .line 3
    const-string v1, "Check-in failed"

    .line 4
    .line 5
    const-string v2, "Collection sync failed"

    .line 6
    .line 7
    const-class v3, Lflix/com/vision/activities/MainActivity;

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, "Trakt"

    .line 12
    .line 13
    iget v6, p0, LA4/c;->b:I

    .line 14
    .line 15
    packed-switch v6, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/lang/Void;

    .line 19
    .line 20
    sget-object p1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_7
    check-cast p1, Ljava/lang/Throwable;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_8
    check-cast p1, Ljava/lang/Throwable;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_9
    check-cast p1, Ljava/lang/Throwable;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_a
    check-cast p1, Ljava/lang/Throwable;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_b
    check-cast p1, Ljava/lang/Throwable;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_d
    check-cast p1, Ljava/lang/Throwable;

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Error fetching release page: "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "RapidMovies"

    .line 143
    .line 144
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_e
    check-cast p1, Ljava/lang/Throwable;

    .line 149
    .line 150
    const-string v0, "Failed to sync watched status"

    .line 151
    .line 152
    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_f
    check-cast p1, Ljava/lang/Throwable;

    .line 157
    .line 158
    invoke-static {v5, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_10
    check-cast p1, Ljava/lang/Throwable;

    .line 163
    .line 164
    invoke-static {v5, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :pswitch_11
    check-cast p1, Ljava/lang/Throwable;

    .line 169
    .line 170
    const-string v0, "TraktAPI"

    .line 171
    .line 172
    const-string v1, "Failed to sync episode history"

    .line 173
    .line 174
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_12
    check-cast p1, Ljava/lang/Throwable;

    .line 179
    .line 180
    sget v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->N:I

    .line 181
    .line 182
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_13
    check-cast p1, Ljava/lang/Throwable;

    .line 187
    .line 188
    sget v0, Lflix/com/vision/activities/player/WebPlayerActivity;->O:I

    .line 189
    .line 190
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_14
    check-cast p1, Ljava/lang/Throwable;

    .line 195
    .line 196
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 197
    .line 198
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_15
    check-cast p1, Ljava/lang/Throwable;

    .line 203
    .line 204
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 205
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v1, "Failed to fetch timestamps: "

    .line 209
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const-string v0, "IntroDB"

    .line 225
    .line 226
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :pswitch_16
    check-cast p1, Ljava/lang/Throwable;

    .line 231
    .line 232
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_17
    check-cast p1, Ljava/lang/Throwable;

    .line 236
    .line 237
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 238
    .line 239
    const-string v0, "Pause scrobble failed"

    .line 240
    .line 241
    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_18
    check-cast p1, Ljava/lang/Throwable;

    .line 246
    .line 247
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 248
    .line 249
    const-string v0, "Movie sync failed"

    .line 250
    .line 251
    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :pswitch_19
    check-cast p1, Ljava/lang/Throwable;

    .line 256
    .line 257
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 258
    .line 259
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_1a
    check-cast p1, Ljava/lang/Throwable;

    .line 264
    .line 265
    sget p1, Lflix/com/vision/activities/leanback/SlideshowActivity;->v:I

    .line 266
    .line 267
    return-void

    .line 268
    :pswitch_1b
    check-cast p1, Ljava/lang/Throwable;

    .line 269
    .line 270
    sget p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->H:I

    .line 271
    .line 272
    invoke-static {v4, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :pswitch_1c
    check-cast p1, Ljava/lang/Throwable;

    .line 277
    .line 278
    sget p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->H:I

    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
