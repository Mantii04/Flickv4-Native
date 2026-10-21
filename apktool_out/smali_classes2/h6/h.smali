.class public final Lh6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/d;


# instance fields
.field public a:Lh6/d;

.field public b:Lh6/g;


# direct methods
.method public static a(Ljava/net/URL;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " "

    .line 6
    .line 7
    const-string v2, "%20"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/net/URI;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/net/URL;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    return-object p0
.end method

.method public static connect(Ljava/lang/String;)Lg6/d;
    .locals 5

    .line 1
    new-instance v0, Lh6/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lh6/d;

    .line 7
    .line 8
    invoke-direct {v1}, Lh6/c;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, v1, Lh6/d;->i:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v1, Lh6/d;->k:Z

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, v1, Lh6/d;->l:Z

    .line 19
    .line 20
    const-string v4, "UTF-8"

    .line 21
    .line 22
    iput-object v4, v1, Lh6/d;->m:Ljava/lang/String;

    .line 23
    .line 24
    const/16 v4, 0x7530

    .line 25
    .line 26
    iput v4, v1, Lh6/d;->e:I

    .line 27
    .line 28
    const/high16 v4, 0x100000

    .line 29
    .line 30
    iput v4, v1, Lh6/d;->f:I

    .line 31
    .line 32
    iput-boolean v3, v1, Lh6/d;->g:Z

    .line 33
    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v3, v1, Lh6/d;->h:Ljava/util/ArrayList;

    .line 40
    .line 41
    sget-object v3, Lorg/jsoup/Connection$Method;->e:Lorg/jsoup/Connection$Method;

    .line 42
    .line 43
    iput-object v3, v1, Lh6/c;->b:Lorg/jsoup/Connection$Method;

    .line 44
    .line 45
    const-string v3, "Accept-Encoding"

    .line 46
    .line 47
    const-string v4, "gzip"

    .line 48
    .line 49
    invoke-virtual {v1, v3, v4}, Lh6/c;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lg6/a;

    .line 50
    .line 51
    .line 52
    const-string v3, "User-Agent"

    .line 53
    .line 54
    const-string v4, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36"

    .line 55
    .line 56
    invoke-virtual {v1, v3, v4}, Lh6/c;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lg6/a;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lk6/e;->htmlParser()Lk6/e;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iput-object v3, v1, Lh6/d;->j:Lk6/e;

    .line 64
    .line 65
    iput-object v1, v0, Lh6/h;->a:Lh6/d;

    .line 66
    .line 67
    new-instance v1, Lh6/g;

    .line 68
    .line 69
    invoke-direct {v1}, Lh6/c;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-boolean v2, v1, Lh6/g;->i:Z

    .line 73
    .line 74
    iput-boolean v2, v1, Lh6/g;->j:Z

    .line 75
    .line 76
    iput v2, v1, Lh6/g;->k:I

    .line 77
    .line 78
    iput-object v1, v0, Lh6/h;->b:Lh6/g;

    .line 79
    .line 80
    invoke-interface {v0, p0}, Lg6/d;->url(Ljava/lang/String;)Lg6/d;

    .line 81
    .line 82
    .line 83
    return-object v0
.end method


# virtual methods
.method public execute()Lg6/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/h;->a:Lh6/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lh6/g;->b(Lh6/d;Lh6/g;)Lh6/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lh6/h;->b:Lh6/g;

    .line 9
    .line 10
    return-object v0
.end method

.method public get()Lj6/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/h;->a:Lh6/d;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/Connection$Method;->e:Lorg/jsoup/Connection$Method;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lg6/a;->method(Lorg/jsoup/Connection$Method;)Lg6/a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lh6/h;->execute()Lg6/c;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lh6/h;->b:Lh6/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lh6/g;->parse()Lj6/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public timeout(I)Lg6/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lh6/h;->a:Lh6/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lg6/b;->timeout(I)Lg6/b;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lg6/d;
    .locals 3

    .line 1
    const-string v0, "Must supply a valid URL"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lh6/k;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lh6/h;->a:Lh6/d;

    .line 7
    .line 8
    new-instance v1, Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    :try_start_1
    new-instance v2, Ljava/net/URL;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lh6/h;->a(Ljava/net/URL;)Ljava/net/URL;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-object v2, p1

    .line 25
    :goto_0
    :try_start_2
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lg6/a;->url(Ljava/net/URL;)Lg6/a;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v2, "Malformed URL: "

    .line 36
    .line 37
    invoke-static {v2, p1}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method
