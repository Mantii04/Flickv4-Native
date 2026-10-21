.class public abstract Lf1/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, LM/l1;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v1}, Landroidx/media3/exoplayer/source/mediaparser/b;->k(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v0
.end method

.method public static toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Lf1/v;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lf1/u;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/media3/exoplayer/source/mediaparser/b;->k(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0}, Lf1/m;->h(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lf1/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lf1/m;->b(Landroid/media/MediaRoute2Info;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lf1/u;->setConnectionState(I)Lf1/u;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p0}, Lf1/m;->o(Landroid/media/MediaRoute2Info;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lf1/u;->setVolumeHandling(I)Lf1/u;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p0}, Lf1/m;->r(Landroid/media/MediaRoute2Info;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lf1/u;->setVolumeMax(I)Lf1/u;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p0}, Lf1/m;->s(Landroid/media/MediaRoute2Info;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lf1/u;->setVolume(I)Lf1/u;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p0}, Landroidx/media3/exoplayer/source/mediaparser/b;->g(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lf1/u;->setExtras(Landroid/os/Bundle;)Lf1/u;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lf1/u;->setEnabled(Z)Lf1/u;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v2}, Lf1/u;->setCanDisconnect(Z)Lf1/u;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 v4, 0x22

    .line 75
    .line 76
    if-lt v3, v4, :cond_2

    .line 77
    .line 78
    invoke-static {p0}, Lf1/V;->getDeduplicationIds(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Lf1/u;->setDeduplicationIds(Ljava/util/Set;)Lf1/u;

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Lf1/V;->getType(Landroid/media/MediaRoute2Info;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/16 v4, 0x7d0

    .line 90
    .line 91
    if-eq v3, v4, :cond_1

    .line 92
    .line 93
    packed-switch v3, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_0
    const/16 v3, 0xa

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :pswitch_1
    const/16 v3, 0x9

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_2
    const/16 v3, 0x8

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_3
    const/4 v3, 0x7

    .line 107
    goto :goto_1

    .line 108
    :pswitch_4
    const/4 v3, 0x6

    .line 109
    goto :goto_1

    .line 110
    :pswitch_5
    const/4 v3, 0x5

    .line 111
    goto :goto_1

    .line 112
    :pswitch_6
    const/4 v3, 0x4

    .line 113
    goto :goto_1

    .line 114
    :pswitch_7
    const/4 v3, 0x2

    .line 115
    goto :goto_1

    .line 116
    :pswitch_8
    move v3, v1

    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const/16 v3, 0x3e8

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    move v3, v2

    .line 122
    :goto_1
    invoke-static {p0}, Lf1/m;->p(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_3

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v0, v4}, Lf1/u;->setDescription(Ljava/lang/String;)Lf1/u;

    .line 133
    .line 134
    .line 135
    :cond_3
    invoke-static {p0}, Lf1/m;->f(Landroid/media/MediaRoute2Info;)Landroid/net/Uri;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Lf1/u;->setIconUri(Landroid/net/Uri;)Lf1/u;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-static {p0}, Landroidx/media3/exoplayer/source/mediaparser/b;->g(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-eqz p0, :cond_8

    .line 149
    .line 150
    const-string v4, "androidx.mediarouter.media.KEY_EXTRAS"

    .line 151
    .line 152
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_8

    .line 157
    .line 158
    const-string v5, "androidx.mediarouter.media.KEY_DEVICE_TYPE"

    .line 159
    .line 160
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_8

    .line 165
    .line 166
    const-string v6, "androidx.mediarouter.media.KEY_CONTROL_FILTERS"

    .line 167
    .line 168
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_5

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v0, v4}, Lf1/u;->setExtras(Landroid/os/Bundle;)Lf1/u;

    .line 180
    .line 181
    .line 182
    if-eqz v3, :cond_6

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_6
    invoke-virtual {p0, v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    :goto_2
    invoke-virtual {v0, v3}, Lf1/u;->setDeviceType(I)Lf1/u;

    .line 190
    .line 191
    .line 192
    const-string v2, "androidx.mediarouter.media.KEY_PLAYBACK_TYPE"

    .line 193
    .line 194
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lf1/u;->setPlaybackType(I)Lf1/u;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    if-eqz p0, :cond_7

    .line 206
    .line 207
    invoke-virtual {v0, p0}, Lf1/u;->addControlFilters(Ljava/util/Collection;)Lf1/u;

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-virtual {v0}, Lf1/u;->build()Lf1/v;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0

    .line 215
    :cond_8
    :goto_3
    const/4 p0, 0x0

    .line 216
    return-object p0

    .line 217
    :pswitch_data_0
    .packed-switch 0x3e9
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
