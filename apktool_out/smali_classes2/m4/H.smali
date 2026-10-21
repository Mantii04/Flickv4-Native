.class public final Lm4/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Ljava/util/ArrayList;

.field public i:Landroid/graphics/Bitmap$Config;

.field public j:Lcom/squareup/picasso/Picasso$Priority;


# virtual methods
.method public build()Lm4/I;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lm4/H;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lm4/H;->c:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lm4/H;->d:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Center crop requires calling resize with positive width and height."

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lm4/H;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->e:Lcom/squareup/picasso/Picasso$Priority;

    .line 27
    .line 28
    iput-object v0, p0, Lm4/H;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 29
    .line 30
    :cond_2
    new-instance v1, Lm4/I;

    .line 31
    .line 32
    iget-object v4, p0, Lm4/H;->h:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget v5, p0, Lm4/H;->c:I

    .line 35
    .line 36
    iget v6, p0, Lm4/H;->d:I

    .line 37
    .line 38
    iget-boolean v7, p0, Lm4/H;->e:Z

    .line 39
    .line 40
    iget v8, p0, Lm4/H;->f:I

    .line 41
    .line 42
    iget-boolean v9, p0, Lm4/H;->g:Z

    .line 43
    .line 44
    iget-object v11, p0, Lm4/H;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 45
    .line 46
    iget-object v2, p0, Lm4/H;->a:Landroid/net/Uri;

    .line 47
    .line 48
    iget v3, p0, Lm4/H;->b:I

    .line 49
    .line 50
    iget-object v10, p0, Lm4/H;->i:Landroid/graphics/Bitmap$Config;

    .line 51
    .line 52
    invoke-direct/range {v1 .. v11}, Lm4/I;-><init>(Landroid/net/Uri;ILjava/util/ArrayList;IIZIZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;)V

    .line 53
    .line 54
    .line 55
    return-object v1
.end method

.method public centerCrop(I)Lm4/H;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm4/H;->e:Z

    .line 3
    .line 4
    iput p1, p0, Lm4/H;->f:I

    .line 5
    .line 6
    return-object p0
.end method

.method public onlyScaleDown()Lm4/H;
    .locals 2

    .line 1
    iget v0, p0, Lm4/H;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lm4/H;->c:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "onlyScaleDown can not be applied without resize"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lm4/H;->g:Z

    .line 20
    .line 21
    return-object p0
.end method

.method public resize(II)Lm4/H;
    .locals 0

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-ltz p2, :cond_2

    .line 4
    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "At least one dimension has to be positive number."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    iput p1, p0, Lm4/H;->c:I

    .line 19
    .line 20
    iput p2, p0, Lm4/H;->d:I

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "Height must be positive number or 0."

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p2, "Width must be positive number or 0."

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public transform(Lm4/S;)Lm4/H;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, LT4/d;

    .line 5
    .line 6
    invoke-virtual {v0}, LT4/d;->key()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lm4/H;->h:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lm4/H;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lm4/H;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "Transformation key must not be null."

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v0, "Transformation must not be null."

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
