.class public final synthetic LC4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILm1/V;Lm1/B0;)V
    .locals 0

    .line 1
    iput p2, p0, LC4/l;->b:I

    iput-object p3, p0, LC4/l;->f:Ljava/lang/Object;

    iput p1, p0, LC4/l;->e:I

    iput-object p4, p0, LC4/l;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lflix/com/vision/activities/base/a;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, LC4/l;->b:I

    iput-object p1, p0, LC4/l;->f:Ljava/lang/Object;

    iput-object p2, p0, LC4/l;->j:Ljava/lang/Object;

    iput p3, p0, LC4/l;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string p1, "Marked as watched"

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget v1, p0, LC4/l;->e:I

    .line 5
    .line 6
    iget-object v2, p0, LC4/l;->j:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, LC4/l;->f:Ljava/lang/Object;

    .line 9
    .line 10
    iget v4, p0, LC4/l;->b:I

    .line 11
    .line 12
    packed-switch v4, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget p1, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->v:I

    .line 16
    .line 17
    check-cast v3, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 27
    .line 28
    check-cast v2, Lflix/com/vision/models/adult/AdultVideo;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, LP4/e;->deleteAdultFromFavorites(Lflix/com/vision/models/adult/AdultVideo;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v3, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string p1, "Deleted from Favorites"

    .line 39
    .line 40
    invoke-static {v3, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v3, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->r:LC4/h;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lm1/V;->notifyItemRemoved(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    sget p1, Lflix/com/vision/activities/adult/AdultHistoryActivity;->v:I

    .line 50
    .line 51
    check-cast v3, Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 61
    .line 62
    check-cast v2, Lflix/com/vision/models/adult/AdultVideo;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, LP4/e;->deleteAdultFromHistory(Lflix/com/vision/models/adult/AdultVideo;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, v3, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string p1, "Deleted from History"

    .line 73
    .line 74
    invoke-static {v3, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, v3, Lflix/com/vision/activities/adult/AdultHistoryActivity;->r:LC4/h;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lm1/V;->notifyItemRemoved(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_1
    sget p1, Lflix/com/vision/activities/WatchedAcvivity;->n:I

    .line 84
    .line 85
    check-cast v3, Lflix/com/vision/activities/WatchedAcvivity;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 95
    .line 96
    check-cast v2, Lflix/com/vision/models/Movie;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, LP4/e;->removeFromWaching(Lflix/com/vision/models/Movie;)V

    .line 99
    .line 100
    .line 101
    const-string p1, "Removed"

    .line 102
    .line 103
    invoke-static {v3, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    iget-object p1, v3, Lflix/com/vision/activities/WatchedAcvivity;->j:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object p1, v3, Lflix/com/vision/activities/WatchedAcvivity;->m:LC4/m0;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Lm1/V;->notifyItemRemoved(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 121
    .line 122
    invoke-virtual {p1, v2}, LP4/e;->removeFromWatched(Lflix/com/vision/models/Movie;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_2
    sget v4, Lflix/com/vision/activities/MainActivity;->T:I

    .line 127
    .line 128
    check-cast v3, Lflix/com/vision/activities/MainActivity;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 138
    .line 139
    check-cast v2, Lflix/com/vision/models/Movie;

    .line 140
    .line 141
    invoke-virtual {v4, v2}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v3, Lflix/com/vision/activities/MainActivity;->b:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-static {v3, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    iget-object p1, v3, Lflix/com/vision/activities/MainActivity;->f:LC4/o0;

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lm1/V;->notifyItemRemoved(I)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :pswitch_3
    sget v4, Lflix/com/vision/activities/DramaHomeActivity;->W:I

    .line 159
    .line 160
    check-cast v3, Lflix/com/vision/activities/DramaHomeActivity;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 170
    .line 171
    check-cast v2, Lflix/com/vision/models/Drama;

    .line 172
    .line 173
    invoke-virtual {v4, v2}, LP4/e;->deletDramaFromContinue(Lflix/com/vision/models/Drama;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 181
    .line 182
    invoke-virtual {v4, v2}, LP4/e;->addDramaToHistory(Lflix/com/vision/models/Drama;)V

    .line 183
    .line 184
    .line 185
    iget-object v2, v3, Lflix/com/vision/activities/DramaHomeActivity;->y:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-static {v3, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 191
    .line 192
    .line 193
    iget-object p1, v3, Lflix/com/vision/activities/DramaHomeActivity;->S:LC4/B;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Lm1/V;->notifyItemRemoved(I)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_4
    check-cast v3, LC4/D;

    .line 200
    .line 201
    iget-object p1, v3, LC4/D;->g:Lflix/com/vision/activities/DramaDetailActivity;

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Lflix/com/vision/activities/DramaDetailActivity;->openEpisode(I)V

    .line 204
    .line 205
    .line 206
    check-cast v2, LC4/C;

    .line 207
    .line 208
    iget-object p1, v2, LC4/C;->u:Lflix/com/vision/models/Episode;

    .line 209
    .line 210
    invoke-virtual {p1}, Lflix/com/vision/models/Episode;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_5
    check-cast v3, LC4/o;

    .line 219
    .line 220
    iget-object p1, v3, LC4/o;->g:Lflix/com/vision/activities/AnimeDetailActivity;

    .line 221
    .line 222
    invoke-virtual {p1, v1}, Lflix/com/vision/activities/AnimeDetailActivity;->openEpisode(I)V

    .line 223
    .line 224
    .line 225
    check-cast v2, LC4/n;

    .line 226
    .line 227
    iget-object p1, v2, LC4/n;->u:Lflix/com/vision/models/Episode;

    .line 228
    .line 229
    invoke-virtual {p1}, Lflix/com/vision/models/Episode;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
