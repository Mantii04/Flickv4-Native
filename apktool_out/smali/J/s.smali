.class public abstract LJ/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[LJ/q;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, LD/i;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[LJ/q;I)Landroid/graphics/Typeface;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;LJ/i;)LJ/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LJ/h;->a(Landroid/content/Context;Landroid/os/CancellationSignal;LJ/i;)LJ/p;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static requestFont(Landroid/content/Context;LJ/i;IZILandroid/os/Handler;LJ/r;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    new-instance v0, LC/k;

    .line 2
    .line 3
    invoke-direct {v0, p6, p5}, LC/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p3, :cond_2

    .line 8
    .line 9
    sget-object p3, LJ/o;->a:Lp/p;

    .line 10
    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, LJ/i;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "-"

    .line 22
    .line 23
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    sget-object v2, LJ/o;->a:Lp/p;

    .line 34
    .line 35
    invoke-virtual {v2, p3}, Lp/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/graphics/Typeface;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    new-instance p0, LJ/a;

    .line 44
    .line 45
    invoke-direct {p0, p6, v2}, LJ/a;-><init>(LJ/r;Landroid/graphics/Typeface;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p5, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_0
    const/4 p5, -0x1

    .line 53
    if-ne p4, p5, :cond_1

    .line 54
    .line 55
    invoke-static {p3, p0, p1, p2}, LJ/o;->a(Ljava/lang/String;Landroid/content/Context;LJ/i;I)LJ/n;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, LC/k;->t(LJ/n;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, LJ/n;->a:Landroid/graphics/Typeface;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_1
    new-instance p5, LJ/j;

    .line 66
    .line 67
    invoke-direct {p5, p3, p0, p1, p2}, LJ/j;-><init>(Ljava/lang/String;Landroid/content/Context;LJ/i;I)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    sget-object p0, LJ/o;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 71
    .line 72
    invoke-interface {p0, p5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 76
    int-to-long p1, p4

    .line 77
    :try_start_1
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    :try_start_2
    check-cast p0, LJ/n;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, LC/k;->t(LJ/n;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, LJ/n;->a:Landroid/graphics/Typeface;

    .line 89
    .line 90
    return-object p0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    goto :goto_0

    .line 93
    :catch_1
    move-exception p0

    .line 94
    goto :goto_1

    .line 95
    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    .line 96
    .line 97
    const-string p1, "timeout"

    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :goto_0
    throw p0

    .line 104
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 110
    :catch_3
    new-instance p0, LJ/b;

    .line 111
    .line 112
    iget-object p1, v0, LC/k;->a:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p1, LJ/r;

    .line 115
    .line 116
    const/4 p2, -0x3

    .line 117
    invoke-direct {p0, p1, p2}, LJ/b;-><init>(LJ/r;I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, LC/k;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Landroid/os/Handler;

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    :cond_2
    sget-object p3, LJ/o;->a:Lp/p;

    .line 129
    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object p4, p1, LJ/i;->e:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p4, "-"

    .line 141
    .line 142
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    sget-object p4, LJ/o;->a:Lp/p;

    .line 153
    .line 154
    invoke-virtual {p4, p3}, Lp/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    check-cast p4, Landroid/graphics/Typeface;

    .line 159
    .line 160
    if-eqz p4, :cond_3

    .line 161
    .line 162
    new-instance p0, LJ/a;

    .line 163
    .line 164
    invoke-direct {p0, p6, p4}, LJ/a;-><init>(LJ/r;Landroid/graphics/Typeface;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p5, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    return-object p4

    .line 171
    :cond_3
    new-instance p4, LJ/k;

    .line 172
    .line 173
    invoke-direct {p4, v0}, LJ/k;-><init>(LC/k;)V

    .line 174
    .line 175
    .line 176
    sget-object p5, LJ/o;->c:Ljava/lang/Object;

    .line 177
    .line 178
    monitor-enter p5

    .line 179
    :try_start_3
    sget-object p6, LJ/o;->d:Lp/q;

    .line 180
    .line 181
    invoke-virtual {p6, p3}, Lp/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Ljava/util/ArrayList;

    .line 186
    .line 187
    if-eqz v0, :cond_4

    .line 188
    .line 189
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    monitor-exit p5

    .line 193
    return-object v1

    .line 194
    :catchall_0
    move-exception p0

    .line 195
    goto :goto_3

    .line 196
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {p6, p3, v0}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    new-instance p4, LJ/l;

    .line 209
    .line 210
    invoke-direct {p4, p3, p0, p1, p2}, LJ/l;-><init>(Ljava/lang/String;Landroid/content/Context;LJ/i;I)V

    .line 211
    .line 212
    .line 213
    sget-object p0, LJ/o;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 214
    .line 215
    new-instance p1, LJ/m;

    .line 216
    .line 217
    invoke-direct {p1, p3}, LJ/m;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    if-nez p2, :cond_5

    .line 225
    .line 226
    new-instance p2, Landroid/os/Handler;

    .line 227
    .line 228
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 229
    .line 230
    .line 231
    move-result-object p3

    .line 232
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_5
    new-instance p2, Landroid/os/Handler;

    .line 237
    .line 238
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 239
    .line 240
    .line 241
    :goto_2
    new-instance p3, LJ/w;

    .line 242
    .line 243
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    iput-object p4, p3, LJ/w;->b:LJ/l;

    .line 247
    .line 248
    iput-object p1, p3, LJ/w;->e:LJ/m;

    .line 249
    .line 250
    iput-object p2, p3, LJ/w;->f:Landroid/os/Handler;

    .line 251
    .line 252
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 253
    .line 254
    .line 255
    return-object v1

    .line 256
    :goto_3
    :try_start_4
    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
    throw p0
.end method
