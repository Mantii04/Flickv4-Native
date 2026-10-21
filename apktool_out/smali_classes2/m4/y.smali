.class public final Lm4/y;
.super Landroid/os/Handler;
.source "SourceFile"


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_9

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    move v1, v2

    .line 25
    :goto_0
    if-ge v1, v0, :cond_8

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lm4/s;

    .line 32
    .line 33
    iget-object v5, v4, Lm4/s;->a:Lm4/D;

    .line 34
    .line 35
    iget-object v6, v5, Lm4/D;->e:Lm4/v;

    .line 36
    .line 37
    iget-object v7, v4, Lm4/s;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Lm4/v;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, v5, Lm4/D;->f:Lm4/P;

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    iget-object v7, v7, Lm4/P;->b:Lm4/O;

    .line 48
    .line 49
    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v7, v7, Lm4/P;->b:Lm4/O;

    .line 54
    .line 55
    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    .line 57
    .line 58
    :goto_1
    if-eqz v6, :cond_1

    .line 59
    .line 60
    sget-object v7, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-virtual {v5, v6, v7, v4, v8}, Lm4/D;->b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lm4/s;Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {v5, v4}, Lm4/D;->c(Lm4/s;)V

    .line 68
    .line 69
    .line 70
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "Unknown handler message received: "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget p1, p1, Landroid/os/Message;->what:I

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    move v1, v2

    .line 104
    :goto_3
    if-ge v1, v0, :cond_8

    .line 105
    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/squareup/picasso/a;

    .line 111
    .line 112
    iget-object v5, v4, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v6, v4, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 118
    .line 119
    iget-object v7, v4, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 120
    .line 121
    if-eqz v7, :cond_4

    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_4

    .line 128
    .line 129
    move v8, v3

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    move v8, v2

    .line 132
    :goto_4
    if-nez v6, :cond_5

    .line 133
    .line 134
    if-eqz v8, :cond_7

    .line 135
    .line 136
    :cond_5
    iget-object v9, v4, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 137
    .line 138
    iget-object v9, v9, Lm4/I;->a:Landroid/net/Uri;

    .line 139
    .line 140
    iget-object v9, v4, Lcom/squareup/picasso/a;->x:Ljava/lang/Exception;

    .line 141
    .line 142
    iget-object v10, v4, Lcom/squareup/picasso/a;->u:Landroid/graphics/Bitmap;

    .line 143
    .line 144
    iget-object v4, v4, Lcom/squareup/picasso/a;->w:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 145
    .line 146
    if-eqz v6, :cond_6

    .line 147
    .line 148
    invoke-virtual {v5, v10, v4, v6, v9}, Lm4/D;->b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lm4/s;Ljava/lang/Exception;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    if-eqz v8, :cond_7

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    move v8, v2

    .line 158
    :goto_5
    if-ge v8, v6, :cond_7

    .line 159
    .line 160
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    check-cast v11, Lm4/s;

    .line 165
    .line 166
    invoke-virtual {v5, v10, v4, v11, v9}, Lm4/D;->b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lm4/s;Ljava/lang/Exception;)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v8, v8, 0x1

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    return-void

    .line 176
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Lm4/s;

    .line 179
    .line 180
    iget-object v0, p1, Lm4/s;->a:Lm4/D;

    .line 181
    .line 182
    invoke-virtual {p1}, Lm4/s;->a()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Lm4/D;->a(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
