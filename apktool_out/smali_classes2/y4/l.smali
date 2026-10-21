.class public final synthetic Ly4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/base/a;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/base/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/l;->b:I

    iput-object p1, p0, Ly4/l;->e:Lflix/com/vision/activities/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    iget p1, p0, Ly4/l;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly4/l;->e:Lflix/com/vision/activities/base/a;

    .line 7
    .line 8
    check-cast p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 9
    .line 10
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->m0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getSuggestionAtPosition(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const/4 p4, 0x1

    .line 23
    if-lt p3, p4, :cond_0

    .line 24
    .line 25
    new-instance p3, Landroid/content/Intent;

    .line 26
    .line 27
    const-class p4, Lflix/com/vision/activities/SearchResultsActivity;

    .line 28
    .line 29
    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const-string p4, "query"

    .line 33
    .line 34
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->m0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide p3

    .line 46
    invoke-virtual {p1, p2, p3, p4}, Lflix/com/vision/materialsearchview/MaterialSearchView;->saveQueryToDb(Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void

    .line 50
    :pswitch_0
    iget-object p1, p0, Ly4/l;->e:Lflix/com/vision/activities/base/a;

    .line 51
    .line 52
    check-cast p1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 53
    .line 54
    iget-object p2, p1, Lflix/com/vision/activities/MovieDetailActivity;->e0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 55
    .line 56
    invoke-virtual {p2, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getSuggestionAtPosition(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    const/4 p4, 0x1

    .line 67
    if-lt p3, p4, :cond_1

    .line 68
    .line 69
    new-instance p3, Landroid/content/Intent;

    .line 70
    .line 71
    const-class p4, Lflix/com/vision/activities/SearchResultsActivity;

    .line 72
    .line 73
    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    const-string p4, "query"

    .line 77
    .line 78
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivity;->e0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide p3

    .line 90
    invoke-virtual {p1, p2, p3, p4}, Lflix/com/vision/materialsearchview/MaterialSearchView;->saveQueryToDb(Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void

    .line 94
    :pswitch_1
    iget-object p1, p0, Ly4/l;->e:Lflix/com/vision/activities/base/a;

    .line 95
    .line 96
    check-cast p1, Lflix/com/vision/activities/MainActivity;

    .line 97
    .line 98
    iget-object p2, p1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getSuggestionAtPosition(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    const/4 p4, 0x1

    .line 111
    if-lt p3, p4, :cond_3

    .line 112
    .line 113
    new-instance p3, Landroid/content/Intent;

    .line 114
    .line 115
    const-class p5, Lflix/com/vision/activities/SearchResultsActivity;

    .line 116
    .line 117
    invoke-direct {p3, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .line 119
    .line 120
    const-string p5, "query"

    .line 121
    .line 122
    invoke-virtual {p3, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 126
    .line 127
    .line 128
    move-result-object p5

    .line 129
    iget-object p5, p5, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 130
    .line 131
    const-string v0, "content_type"

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    invoke-interface {p5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result p5

    .line 138
    if-ne p5, p4, :cond_2

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    move p4, v1

    .line 142
    :goto_0
    const-string p5, "tv_shows_only"

    .line 143
    .line 144
    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p1, Lflix/com/vision/activities/MainActivity;->z:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 151
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide p3

    .line 156
    invoke-virtual {p1, p2, p3, p4}, Lflix/com/vision/materialsearchview/MaterialSearchView;->saveQueryToDb(Ljava/lang/String;J)V

    .line 157
    .line 158
    .line 159
    :cond_3
    return-void

    .line 160
    :pswitch_2
    iget-object p1, p0, Ly4/l;->e:Lflix/com/vision/activities/base/a;

    .line 161
    .line 162
    check-cast p1, Lflix/com/vision/activities/DramaHomeActivity;

    .line 163
    .line 164
    iget-object p2, p1, Lflix/com/vision/activities/DramaHomeActivity;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 165
    .line 166
    invoke-virtual {p2, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getSuggestionAtPosition(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    if-eqz p2, :cond_4

    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    const/4 p4, 0x1

    .line 177
    if-lt p3, p4, :cond_4

    .line 178
    .line 179
    new-instance p3, Landroid/content/Intent;

    .line 180
    .line 181
    const-class p4, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;

    .line 182
    .line 183
    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .line 185
    .line 186
    const-string p4, "query"

    .line 187
    .line 188
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    return-void

    .line 195
    :pswitch_3
    iget-object p1, p0, Ly4/l;->e:Lflix/com/vision/activities/base/a;

    .line 196
    .line 197
    check-cast p1, Lflix/com/vision/activities/AnimesListActivity;

    .line 198
    .line 199
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 200
    .line 201
    invoke-virtual {p2, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->getSuggestionAtPosition(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-eqz p2, :cond_5

    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result p3

    .line 211
    const/4 p4, 0x1

    .line 212
    if-lt p3, p4, :cond_5

    .line 213
    .line 214
    new-instance p3, Landroid/content/Intent;

    .line 215
    .line 216
    const-class p4, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;

    .line 217
    .line 218
    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .line 220
    .line 221
    const-string p4, "query"

    .line 222
    .line 223
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    .line 228
    .line 229
    :cond_5
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
