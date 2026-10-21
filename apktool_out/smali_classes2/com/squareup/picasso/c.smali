.class public final Lcom/squareup/picasso/c;
.super Lm4/k;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "orientation"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/squareup/picasso/c;->b:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public canHandleRequest(Lm4/I;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "content"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "media"

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public load(Lm4/I;I)Lm4/K;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    move-object/from16 v6, p0

    .line 4
    .line 5
    iget-object v7, v6, Lm4/k;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v9, v5, Lm4/I;->a:Landroid/net/Uri;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v14, 0x0

    .line 15
    :try_start_0
    sget-object v10, Lcom/squareup/picasso/c;->b:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 34
    .line 35
    .line 36
    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 38
    .line 39
    .line 40
    move v9, v2

    .line 41
    goto :goto_4

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    move-object v14, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 46
    .line 47
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 48
    .line 49
    .line 50
    :cond_2
    move v9, v0

    .line 51
    goto :goto_4

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-object v1, v14

    .line 55
    goto :goto_3

    .line 56
    :goto_2
    if-eqz v14, :cond_3

    .line 57
    .line 58
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 59
    .line 60
    .line 61
    :cond_3
    throw v0

    .line 62
    :catch_1
    :goto_3
    if-eqz v1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_4
    iget-object v10, v5, Lm4/I;->a:Landroid/net/Uri;

    .line 66
    .line 67
    invoke-virtual {v8, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v11, 0x1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    const-string v2, "video/"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    move v12, v11

    .line 83
    goto :goto_5

    .line 84
    :cond_4
    move v12, v0

    .line 85
    :goto_5
    invoke-virtual {v5}, Lm4/I;->hasSize()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    sget-object v13, Lcom/squareup/picasso/Picasso$LoadedFrom;->e:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 90
    .line 91
    if-eqz v0, :cond_a

    .line 92
    .line 93
    sget-object v15, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->n:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 94
    .line 95
    iget v0, v5, Lm4/I;->d:I

    .line 96
    .line 97
    iget v1, v5, Lm4/I;->e:I

    .line 98
    .line 99
    const/16 v2, 0x60

    .line 100
    .line 101
    if-gt v0, v2, :cond_5

    .line 102
    .line 103
    if-gt v1, v2, :cond_5

    .line 104
    .line 105
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->j:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_5
    const/16 v2, 0x200

    .line 109
    .line 110
    if-gt v0, v2, :cond_6

    .line 111
    .line 112
    const/16 v0, 0x180

    .line 113
    .line 114
    if-gt v1, v0, :cond_6

    .line 115
    .line 116
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->m:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_6
    move-object v0, v15

    .line 120
    :goto_6
    if-nez v12, :cond_7

    .line 121
    .line 122
    if-ne v0, v15, :cond_7

    .line 123
    .line 124
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Le6/w;->source(Ljava/io/InputStream;)Le6/L;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Lm4/K;

    .line 137
    .line 138
    invoke-direct {v1, v14, v0, v13, v9}, Lm4/K;-><init>(Landroid/graphics/Bitmap;Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    .line 139
    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_7
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v1

    .line 146
    invoke-static {v5}, Lm4/L;->b(Lm4/I;)Landroid/graphics/BitmapFactory$Options;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 151
    .line 152
    iget v3, v5, Lm4/I;->d:I

    .line 153
    .line 154
    move-wide/from16 v16, v1

    .line 155
    .line 156
    iget v1, v5, Lm4/I;->e:I

    .line 157
    .line 158
    iget v2, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->e:I

    .line 159
    .line 160
    move/from16 v18, v3

    .line 161
    .line 162
    iget v3, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->f:I

    .line 163
    .line 164
    move-object v11, v0

    .line 165
    move-wide/from16 v19, v16

    .line 166
    .line 167
    move/from16 v0, v18

    .line 168
    .line 169
    invoke-static/range {v0 .. v5}, Lm4/L;->a(IIIILandroid/graphics/BitmapFactory$Options;Lm4/I;)V

    .line 170
    .line 171
    .line 172
    iget v0, v11, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->b:I

    .line 173
    .line 174
    if-eqz v12, :cond_9

    .line 175
    .line 176
    if-ne v11, v15, :cond_8

    .line 177
    .line 178
    const/4 v11, 0x1

    .line 179
    :goto_7
    move-wide/from16 v1, v19

    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_8
    move v11, v0

    .line 183
    goto :goto_7

    .line 184
    :goto_8
    invoke-static {v8, v1, v2, v11, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    goto :goto_9

    .line 189
    :cond_9
    move-wide/from16 v1, v19

    .line 190
    .line 191
    invoke-static {v8, v1, v2, v0, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :goto_9
    if-eqz v0, :cond_a

    .line 196
    .line 197
    new-instance v1, Lm4/K;

    .line 198
    .line 199
    invoke-direct {v1, v0, v14, v13, v9}, Lm4/K;-><init>(Landroid/graphics/Bitmap;Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    .line 200
    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_a
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Le6/w;->source(Ljava/io/InputStream;)Le6/L;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v1, Lm4/K;

    .line 216
    .line 217
    invoke-direct {v1, v14, v0, v13, v9}, Lm4/K;-><init>(Landroid/graphics/Bitmap;Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    .line 218
    .line 219
    .line 220
    return-object v1
.end method
