.class public final synthetic LC4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Lm1/V;


# direct methods
.method public synthetic constructor <init>(Lm1/V;II)V
    .locals 0

    .line 1
    iput p3, p0, LC4/a;->b:I

    iput-object p1, p0, LC4/a;->f:Lm1/V;

    iput p2, p0, LC4/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, LC4/a;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC4/a;->f:Lm1/V;

    .line 7
    .line 8
    check-cast p1, LC4/Z;

    .line 9
    .line 10
    iget-object v0, p1, LC4/Z;->e:LU4/k;

    .line 11
    .line 12
    iget v1, p0, LC4/a;->e:I

    .line 13
    .line 14
    invoke-interface {v0, v1}, LU4/k;->openSeason(I)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v1, 0x1

    .line 18
    .line 19
    iput v0, p1, LC4/Z;->g:I

    .line 20
    .line 21
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, LC/q;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, p1, v1, v3}, LC/q;-><init>(Ljava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v3, 0x1f4

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    iget-object p1, p0, LC4/a;->f:Lm1/V;

    .line 42
    .line 43
    check-cast p1, LC4/V;

    .line 44
    .line 45
    iget-object v0, p1, LC4/V;->f:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 46
    .line 47
    instance-of v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget v1, p0, LC4/a;->e:I

    .line 52
    .line 53
    iput v1, p1, LC4/V;->e:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->openEpisode(I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :pswitch_1
    iget-object p1, p0, LC4/a;->f:Lm1/V;

    .line 60
    .line 61
    check-cast p1, LC4/G;

    .line 62
    .line 63
    iget-object v0, p1, LC4/G;->g:Ljava/util/ArrayList;

    .line 64
    .line 65
    iget v1, p0, LC4/a;->e:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lflix/com/vision/models/Episode;

    .line 72
    .line 73
    iget-boolean v2, v2, Lflix/com/vision/models/Episode;->aired:Z

    .line 74
    .line 75
    iget-object p1, p1, LC4/G;->h:Landroid/app/Activity;

    .line 76
    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "Episode will be available on "

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lflix/com/vision/models/Episode;

    .line 91
    .line 92
    iget-object v0, v0, Lflix/com/vision/models/Episode;->date:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    instance-of v0, p1, Lflix/com/vision/activities/SeriesDetailActivity;

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    move-object v0, p1

    .line 115
    check-cast v0, Lflix/com/vision/activities/SeriesDetailActivity;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/SeriesDetailActivity;->openEpisode(I)V

    .line 118
    .line 119
    .line 120
    :cond_2
    instance-of v0, p1, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    check-cast p1, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->openEpisode(I)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    return-void

    .line 130
    :pswitch_2
    iget-object p1, p0, LC4/a;->f:Lm1/V;

    .line 131
    .line 132
    check-cast p1, LC4/u;

    .line 133
    .line 134
    iget-object v0, p1, LC4/u;->f:Landroid/app/Activity;

    .line 135
    .line 136
    instance-of v1, v0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 137
    .line 138
    iget v2, p0, LC4/a;->e:I

    .line 139
    .line 140
    iget-object p1, p1, LC4/u;->h:Ljava/util/ArrayList;

    .line 141
    .line 142
    if-eqz v1, :cond_4

    .line 143
    .line 144
    check-cast v0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, p1, v1}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->playChannel(Lflix/com/vision/models/ChannelTv;Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    instance-of v1, v0, Lflix/com/vision/tv/ChannelsListActivityLegacy;

    .line 158
    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    check-cast v0, Lflix/com/vision/tv/ChannelsListActivityLegacy;

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/ChannelsListActivityLegacy;->OpenChannel(Lflix/com/vision/models/ChannelTv;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    instance-of v1, v0, Lflix/com/vision/tv/PlayerActivityLiveExtended;

    .line 174
    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    check-cast v0, Lflix/com/vision/tv/PlayerActivityLiveExtended;

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->playChannel(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    instance-of v1, v0, Lflix/com/vision/tv/PlayerActivityLiveExternal;

    .line 184
    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    check-cast v0, Lflix/com/vision/tv/PlayerActivityLiveExternal;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lflix/com/vision/tv/PlayerActivityLiveExternal;->playChannel(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    instance-of v1, v0, Lflix/com/vision/tv/ChannelsListActivity;

    .line 194
    .line 195
    if-eqz v1, :cond_8

    .line 196
    .line 197
    check-cast v0, Lflix/com/vision/tv/ChannelsListActivity;

    .line 198
    .line 199
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 204
    .line 205
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/ChannelsListActivity;->playChannel(Lflix/com/vision/models/ChannelTv;)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_8
    instance-of v1, v0, Lflix/com/vision/tv/TVChannelSearchActivity;

    .line 210
    .line 211
    if-eqz v1, :cond_9

    .line 212
    .line 213
    check-cast v0, Lflix/com/vision/tv/TVChannelSearchActivity;

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 220
    .line 221
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/TVChannelSearchActivity;->playChannel(Lflix/com/vision/models/ChannelTv;)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_9
    instance-of v1, v0, Lflix/com/vision/tv/TVChannelFavoritesActivity;

    .line 226
    .line 227
    if-eqz v1, :cond_a

    .line 228
    .line 229
    check-cast v0, Lflix/com/vision/tv/TVChannelFavoritesActivity;

    .line 230
    .line 231
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 236
    .line 237
    invoke-virtual {v0, p1}, Lflix/com/vision/tv/TVChannelFavoritesActivity;->playChannel(Lflix/com/vision/models/ChannelTv;)V

    .line 238
    .line 239
    .line 240
    :cond_a
    :goto_1
    return-void

    .line 241
    :pswitch_3
    iget-object p1, p0, LC4/a;->f:Lm1/V;

    .line 242
    .line 243
    check-cast p1, LC4/h;

    .line 244
    .line 245
    iget-object p1, p1, LC4/h;->f:LU4/b;

    .line 246
    .line 247
    iget v0, p0, LC4/a;->e:I

    .line 248
    .line 249
    invoke-interface {p1, v0}, LU4/b;->openAdultVideo(I)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_4
    iget-object p1, p0, LC4/a;->f:Lm1/V;

    .line 254
    .line 255
    check-cast p1, LC4/d;

    .line 256
    .line 257
    iget-object p1, p1, LC4/d;->g:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 258
    .line 259
    iget v0, p0, LC4/a;->e:I

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->openCategory(I)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
