.class public final synthetic Ly4/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/LinksActivity;

.field public final synthetic f:Lflix/com/vision/models/VideoSource;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/LinksActivity;Lflix/com/vision/models/VideoSource;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/U;->b:I

    iput-object p1, p0, Ly4/U;->e:Lflix/com/vision/activities/LinksActivity;

    iput-object p2, p0, Ly4/U;->f:Lflix/com/vision/models/VideoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, -0x1

    .line 3
    const-string v1, " - "

    .line 4
    .line 5
    const-string v2, "E"

    .line 6
    .line 7
    const-string v3, " - S"

    .line 8
    .line 9
    iget-object v4, p0, Ly4/U;->f:Lflix/com/vision/models/VideoSource;

    .line 10
    .line 11
    iget v5, p0, Ly4/U;->b:I

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v5, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 17
    .line 18
    iget-object v6, p0, Ly4/U;->e:Lflix/com/vision/activities/LinksActivity;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v5, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 24
    .line 25
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v7, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 30
    .line 31
    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v3, v6, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 49
    .line 50
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v2, v6, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 57
    .line 58
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, v6, Lflix/com/vision/activities/LinksActivity;->W:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    :cond_0
    move-object v7, v5

    .line 74
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    iget-object v2, v6, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    iget-object v8, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v10, v4, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    invoke-static/range {v6 .. v11}, LT4/o;->PlayVLC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-boolean p1, v0, Lflix/com/vision/App;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .line 100
    :try_start_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 105
    .line 106
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, LP4/e;->addtoWatching(Lflix/com/vision/models/Movie;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object p1, v0

    .line 114
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    .line 116
    .line 117
    :catch_1
    :goto_0
    return-void

    .line 118
    :pswitch_0
    sget v5, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 119
    .line 120
    iget-object v6, p0, Ly4/U;->e:Lflix/com/vision/activities/LinksActivity;

    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    :try_start_3
    iget-object v5, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 126
    .line 127
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iget-object v7, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 132
    .line 133
    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_1

    .line 138
    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v3, v6, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 151
    .line 152
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v2, v6, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 159
    .line 160
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v1, v6, Lflix/com/vision/activities/LinksActivity;->W:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :cond_1
    move-object v7, v5

    .line 176
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 181
    .line 182
    iget-object v2, v6, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 183
    .line 184
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    iget-object v8, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v10, v4, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 191
    .line 192
    const/4 v9, 0x0

    .line 193
    invoke-static/range {v6 .. v11}, LT4/o;->PlayMXPlayer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-boolean p1, v0, Lflix/com/vision/App;->e:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    .line 202
    :try_start_4
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 207
    .line 208
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 209
    .line 210
    invoke-virtual {p1, v0}, LP4/e;->addtoWatching(Lflix/com/vision/models/Movie;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catch_2
    move-exception v0

    .line 215
    move-object p1, v0

    .line 216
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 217
    .line 218
    .line 219
    :catch_3
    :goto_1
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
