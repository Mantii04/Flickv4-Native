.class public final Lm4/r;
.super Lm4/k;
.source "SourceFile"


# virtual methods
.method public canHandleRequest(Lm4/I;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "file"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public load(Lm4/I;I)Lm4/K;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lm4/k;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Le6/w;->source(Ljava/io/InputStream;)Le6/L;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lm4/K;

    .line 18
    .line 19
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->e:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 20
    .line 21
    new-instance v2, Lf0/g;

    .line 22
    .line 23
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v2, p1}, Lf0/g;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "Orientation"

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v2, p1, v3}, Lf0/g;->getAttributeInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v0, v2, p2, v1, p1}, Lm4/K;-><init>(Landroid/graphics/Bitmap;Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method
