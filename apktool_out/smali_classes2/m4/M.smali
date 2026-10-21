.class public final Lm4/M;
.super Lm4/L;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm4/L;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm4/M;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public canHandleRequest(Lm4/I;)Z
    .locals 1

    .line 1
    iget v0, p1, Lm4/I;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "android.resource"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public load(Lm4/I;I)Lm4/K;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p2, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget p2, p1, Lm4/I;->b:I

    .line 4
    .line 5
    const-string v0, "No package provided: "

    .line 6
    .line 7
    iget-object v1, p0, Lm4/M;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 10
    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 32
    .line 33
    const-string p2, "Unable to obtain resources for package: "

    .line 34
    .line 35
    invoke-static {p2, v2}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 44
    .line 45
    invoke-static {v0, v2}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :goto_1
    iget v1, p1, Lm4/I;->b:I

    .line 58
    .line 59
    if-nez v1, :cond_8

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_6

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x1

    .line 88
    if-ne v3, v5, :cond_4

    .line 89
    .line 90
    :try_start_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_2

    .line 101
    :catch_1
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 102
    .line 103
    const-string p2, "Last path segment is not a resource ID: "

    .line 104
    .line 105
    invoke-static {p2, v2}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    const/4 v6, 0x2

    .line 118
    if-ne v3, v6, :cond_5

    .line 119
    .line 120
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p2, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 138
    .line 139
    const-string p2, "More than two path segments: "

    .line 140
    .line 141
    invoke-static {p2, v2}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :cond_6
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 150
    .line 151
    const-string p2, "No path segments: "

    .line 152
    .line 153
    invoke-static {p2, v2}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_7
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 162
    .line 163
    invoke-static {v0, v2}, Lb/c;->k(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_8
    :goto_2
    new-instance v0, Lm4/K;

    .line 172
    .line 173
    invoke-static {p1}, Lm4/L;->b(Lm4/I;)Landroid/graphics/BitmapFactory$Options;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_9

    .line 178
    .line 179
    iget-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    .line 181
    if-eqz v2, :cond_9

    .line 182
    .line 183
    invoke-static {p2, v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 184
    .line 185
    .line 186
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 187
    .line 188
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 189
    .line 190
    iget v2, p1, Lm4/I;->d:I

    .line 191
    .line 192
    iget v3, p1, Lm4/I;->e:I

    .line 193
    .line 194
    move-object v7, p1

    .line 195
    invoke-static/range {v2 .. v7}, Lm4/L;->a(IIIILandroid/graphics/BitmapFactory$Options;Lm4/I;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    invoke-static {p2, v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->e:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 203
    .line 204
    invoke-direct {v0, p1, p2}, Lm4/K;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 205
    .line 206
    .line 207
    return-object v0
.end method
