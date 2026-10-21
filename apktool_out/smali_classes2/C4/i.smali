.class public final synthetic LC4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC4/i;->b:I

    iput-object p2, p0, LC4/i;->e:Ljava/lang/Object;

    iput-object p3, p0, LC4/i;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 1
    iget p1, p0, LC4/i;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC4/i;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, LW4/e;

    .line 9
    .line 10
    iget-object p1, p1, LW4/e;->a:LW4/c;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, LC4/i;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lflix/com/vision/models/tmdb/Network;

    .line 17
    .line 18
    invoke-interface {p1, v0}, LW4/c;->onNetworkLongClicked(Lflix/com/vision/models/tmdb/Network;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :pswitch_0
    iget-object p1, p0, LC4/i;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, LW4/b;

    .line 26
    .line 27
    iget-object v0, p1, LW4/b;->c:Landroid/app/Activity;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-static {v0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, LC4/i;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lflix/com/vision/models/Movie;

    .line 41
    .line 42
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v3, "What would you like to Do?"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, LW4/a;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-direct {v3, p1, v2, v4}, LW4/a;-><init>(LW4/b;Lflix/com/vision/models/Movie;I)V

    .line 58
    .line 59
    .line 60
    const-string v4, "MARK AS WATCHED"

    .line 61
    .line 62
    invoke-virtual {v0, v4, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, LW4/a;

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    invoke-direct {v3, p1, v2, v4}, LW4/a;-><init>(LW4/b;Lflix/com/vision/models/Movie;I)V

    .line 69
    .line 70
    .line 71
    const-string v4, "ADD TO FAVORITES"

    .line 72
    .line 73
    invoke-virtual {v0, v4, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    new-instance v3, LW4/a;

    .line 77
    .line 78
    const/4 v4, 0x2

    .line 79
    invoke-direct {v3, p1, v2, v4}, LW4/a;-><init>(LW4/b;Lflix/com/vision/models/Movie;I)V

    .line 80
    .line 81
    .line 82
    const-string p1, "REMOVE"

    .line 83
    .line 84
    invoke-virtual {v0, p1, v3}, LQ4/d;->setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    const-string p1, ""

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_0
    const/4 p1, 0x0

    .line 98
    return p1

    .line 99
    :pswitch_1
    iget-object p1, p0, LC4/i;->e:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p1, LC4/j0;

    .line 102
    .line 103
    iget-object p1, p1, LC4/j0;->h:Landroid/app/Activity;

    .line 104
    .line 105
    check-cast p1, Lflix/com/vision/activities/LinksActivity;

    .line 106
    .line 107
    iget-object v0, p0, LC4/i;->f:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, LC4/i0;

    .line 110
    .line 111
    iget-object v0, v0, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1, v0, v1}, Lflix/com/vision/activities/LinksActivity;->linkClicked(Lflix/com/vision/models/VideoSource;Z)V

    .line 115
    .line 116
    .line 117
    return v1

    .line 118
    :pswitch_2
    iget-object p1, p0, LC4/i;->e:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, LC4/z;

    .line 121
    .line 122
    new-instance v0, Ll/v1;

    .line 123
    .line 124
    iget-object v1, p0, LC4/i;->f:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, LC4/y;

    .line 127
    .line 128
    iget-object v2, v1, LC4/y;->w:Landroid/view/View;

    .line 129
    .line 130
    iget-object v3, p1, LC4/z;->e:Landroid/app/Activity;

    .line 131
    .line 132
    invoke-direct {v0, v3, v2}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v1, LC4/y;->u:Lflix/com/vision/models/Drama;

    .line 136
    .line 137
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget-object v3, v3, Lflix/com/vision/App;->r:LP4/e;

    .line 142
    .line 143
    invoke-virtual {v3, v2}, LP4/e;->isDramaFavorited(Lflix/com/vision/models/Drama;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_1

    .line 148
    .line 149
    invoke-virtual {v0}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    sget v4, Lflix/com/vision/R$menu;->context_menu_add_fav_channels:I

    .line 154
    .line 155
    invoke-virtual {v0}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v0}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    sget v4, Lflix/com/vision/R$menu;->context_menu_remove_fav_channels:I

    .line 168
    .line 169
    invoke-virtual {v0}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v3, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    .line 175
    .line 176
    :goto_1
    new-instance v3, LC4/x;

    .line 177
    .line 178
    invoke-direct {v3, p1, v2, v1, v0}, LC4/x;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v3}, Ll/v1;->setOnMenuItemClickListener(Ll/u1;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ll/v1;->show()V

    .line 185
    .line 186
    .line 187
    const/4 p1, 0x1

    .line 188
    return p1

    .line 189
    :pswitch_3
    iget-object p1, p0, LC4/i;->e:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, LC4/k;

    .line 192
    .line 193
    new-instance v0, Ll/v1;

    .line 194
    .line 195
    iget-object v1, p0, LC4/i;->f:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, LC4/j;

    .line 198
    .line 199
    iget-object v2, v1, LC4/j;->w:Landroid/view/View;

    .line 200
    .line 201
    iget-object v3, p1, LC4/k;->g:Landroid/app/Activity;

    .line 202
    .line 203
    invoke-direct {v0, v3, v2}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v1, LC4/j;->u:Lflix/com/vision/models/Anime;

    .line 207
    .line 208
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget-object v2, v2, Lflix/com/vision/App;->r:LP4/e;

    .line 213
    .line 214
    invoke-virtual {v1}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v2, v3}, LP4/e;->isMovieFavorited_ANIME(Lflix/com/vision/models/Movie;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-nez v2, :cond_2

    .line 223
    .line 224
    invoke-virtual {v0}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    sget v3, Lflix/com/vision/R$menu;->context_menu_add_fav_channels:I

    .line 229
    .line 230
    invoke-virtual {v0}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {v0}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    sget v3, Lflix/com/vision/R$menu;->context_menu_remove_fav_channels:I

    .line 243
    .line 244
    invoke-virtual {v0}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    new-instance v2, LC4/f;

    .line 252
    .line 253
    const/4 v3, 0x1

    .line 254
    invoke-direct {v2, p1, v1, v0, v3}, LC4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v2}, Ll/v1;->setOnMenuItemClickListener(Ll/u1;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ll/v1;->show()V

    .line 261
    .line 262
    .line 263
    const/4 p1, 0x1

    .line 264
    return p1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
