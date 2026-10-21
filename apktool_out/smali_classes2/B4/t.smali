.class public final synthetic LB4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/t;->b:I

    iput-object p1, p0, LB4/t;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, LB4/t;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 4
    .line 5
    iget v3, p0, LB4/t;->b:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, " "

    .line 16
    .line 17
    const-string v3, "Subtitle Encoding changed to "

    .line 18
    .line 19
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "pref_subtitle_encoding_index"

    .line 30
    .line 31
    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    const-string p1, "pref_subtitle_encoding_label"

    .line 42
    .line 43
    if-lez p2, :cond_0

    .line 44
    .line 45
    :try_start_1
    iget-object v4, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N0:[Ljava/lang/CharSequence;

    .line 46
    .line 47
    aget-object p2, v4, p2

    .line 48
    .line 49
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    array-length p2, p2

    .line 62
    sub-int/2addr p2, v1

    .line 63
    aget-object p2, v4, p2

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    .line 85
    .line 86
    iget-object p1, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isCaptionActive()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    iget-object p1, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->changeEncoding(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v2, p1, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const-string p2, "utf-8"

    .line 118
    .line 119
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 124
    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    .line 135
    .line 136
    iget-object p1, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 137
    .line 138
    if-eqz p1, :cond_1

    .line 139
    .line 140
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isCaptionActive()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    iget-object p1, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->changeEncoding(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string p1, "Subtitle Encoding changed to Default (utf-8)"

    .line 152
    .line 153
    invoke-static {v2, p1, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .line 155
    .line 156
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 157
    :pswitch_0
    sget-boolean v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 167
    .line 168
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v3, "pref_subtitle_size"

    .line 173
    .line 174
    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    .line 180
    .line 181
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 189
    .line 190
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {v2, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J(I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_1
    iput p2, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 199
    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    .line 202
    .line 203
    const/4 p1, 0x0

    .line 204
    iput-boolean p1, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D0:Z

    .line 205
    .line 206
    iget-object p1, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 207
    .line 208
    iget p2, v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;

    .line 215
    .line 216
    invoke-virtual {v2, v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D(Z)V

    .line 217
    .line 218
    .line 219
    new-instance p2, Ljava/lang/Thread;

    .line 220
    .line 221
    new-instance v1, LA4/n;

    .line 222
    .line 223
    invoke-direct {v1, v0, v2, p1}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
