.class public final synthetic LB4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LB4/b;->b:I

    iput-object p2, p0, LB4/b;->e:Ljava/lang/Object;

    iput-object p3, p0, LB4/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, LB4/b;->b:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->y:I

    .line 8
    .line 9
    iget-object v0, p0, LB4/b;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, LB4/b;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lflix/com/vision/models/adult/AdultLink;

    .line 25
    .line 26
    iget-object p2, p2, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->playAdultLink(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    sget v0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->v:I

    .line 36
    .line 37
    iget-object v0, p0, LB4/b;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, LB4/b;->f:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lflix/com/vision/models/adult/AdultLink;

    .line 53
    .line 54
    iget-object p2, p2, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->playAdultLink(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_1
    sget v0, Lflix/com/vision/activities/adult/AdultVideosActivity;->C:I

    .line 64
    .line 65
    iget-object v0, p0, LB4/b;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lflix/com/vision/activities/adult/AdultVideosActivity;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, LB4/b;->f:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Lflix/com/vision/models/adult/AdultLink;

    .line 81
    .line 82
    iget-object p2, p2, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Lflix/com/vision/activities/adult/AdultVideosActivity;->playAdultLink(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_2
    sget v0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->v:I

    .line 92
    .line 93
    iget-object v0, p0, LB4/b;->e:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, LB4/b;->f:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lflix/com/vision/models/adult/AdultLink;

    .line 109
    .line 110
    iget-object p2, p2, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0, p2}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->playAdultLink(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_3
    sget p1, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 120
    .line 121
    iget-object p1, p0, LB4/b;->e:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Lflix/com/vision/activities/LinksActivity;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, LB4/b;->f:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Lflix/com/vision/models/VideoSource;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lflix/com/vision/activities/LinksActivity;->e(Lflix/com/vision/models/VideoSource;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_4
    iget-object p1, p0, LB4/b;->e:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Lio/hopmonsdk/Hopmn;

    .line 145
    .line 146
    iget-object p2, p0, LB4/b;->f:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p2, Lio/hopmonsdk/Hopmn$ConsentCallback;

    .line 149
    .line 150
    iput-boolean v0, p1, Lio/hopmonsdk/Hopmn;->g:Z

    .line 151
    .line 152
    iget-object v0, p1, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    .line 153
    .line 154
    const-string v1, "hopmon.consent_choice"

    .line 155
    .line 156
    const-string v2, "agree"

    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p1, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    .line 162
    .line 163
    const-string v1, "hopmon.consent_accepted"

    .line 164
    .line 165
    const/4 v2, 0x1

    .line 166
    invoke-virtual {v0, v1, v2}, Lk5/a;->set(Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    iput-boolean v2, p1, Lio/hopmonsdk/Hopmn;->f:Z

    .line 170
    .line 171
    invoke-interface {p2}, Lio/hopmonsdk/Hopmn$ConsentCallback;->onAgreed()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_5
    sget p1, Lflix/com/vision/tv/ChannelsListActivityLegacy;->y:I

    .line 176
    .line 177
    iget-object p1, p0, LB4/b;->e:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Lflix/com/vision/tv/ChannelsListActivityLegacy;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    new-instance v1, Lflix/com/vision/models/ChannelTv;

    .line 185
    .line 186
    iget-object v2, p0, LB4/b;->f:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v2, Lflix/com/vision/models/ChannelTv;

    .line 189
    .line 190
    invoke-direct {v1, v2}, Lflix/com/vision/models/ChannelTv;-><init>(Lflix/com/vision/models/ChannelTv;)V

    .line 191
    .line 192
    .line 193
    iget-object v3, v1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 194
    .line 195
    iget-object v2, v2, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    check-cast p2, Lflix/com/vision/models/StreamUrl;

    .line 202
    .line 203
    invoke-virtual {v3, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Lflix/com/vision/tv/ChannelsListActivityLegacy;->OpenChannell(Lflix/com/vision/models/ChannelTv;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_6
    sget v0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->z:I

    .line 211
    .line 212
    iget-object v0, p0, LB4/b;->e:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, LB4/b;->f:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v1, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    check-cast p2, Lflix/com/vision/models/adult/AdultLink;

    .line 228
    .line 229
    iget-object p2, p2, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0, p2}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->playAdultLink(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
