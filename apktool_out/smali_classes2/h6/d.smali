.class public final Lh6/d;
.super Lh6/c;
.source "SourceFile"

# interfaces
.implements Lg6/b;


# instance fields
.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/lang/String;

.field public j:Lk6/e;

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;


# virtual methods
.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-super {p0}, Lh6/c;->cookies()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public data()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/d;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh6/d;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh6/c;->hasHeader(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh6/c;->headers(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public ignoreContentType()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public ignoreHttpErrors()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public maxBodySize()I
    .locals 1

    .line 1
    iget v0, p0, Lh6/d;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 1
    invoke-super {p0}, Lh6/c;->method()Lorg/jsoup/Connection$Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic multiHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-super {p0}, Lh6/c;->multiHeaders()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic parser(Lk6/e;)Lg6/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh6/d;->parser(Lk6/e;)Lh6/d;

    move-result-object p1

    return-object p1
.end method

.method public parser(Lk6/e;)Lh6/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lh6/d;->j:Lk6/e;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lh6/d;->k:Z

    return-object p0
.end method

.method public parser()Lk6/e;
    .locals 1

    .line 4
    iget-object v0, p0, Lh6/d;->j:Lk6/e;

    return-object v0
.end method

.method public postDataCharset()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh6/d;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public requestBody(Ljava/lang/String;)Lg6/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lh6/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method public requestBody()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lh6/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public timeout()I
    .locals 1

    .line 2
    iget v0, p0, Lh6/d;->e:I

    return v0
.end method

.method public bridge synthetic timeout(I)Lg6/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh6/d;->timeout(I)Lh6/d;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lh6/d;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    const-string v1, "Timeout milliseconds must be 0 (infinite) or greater"

    invoke-static {v0, v1}, Lh6/k;->isTrue(ZLjava/lang/String;)V

    .line 4
    iput p1, p0, Lh6/d;->e:I

    return-object p0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-super {p0}, Lh6/c;->url()Ljava/net/URL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public validateTLSCertificates()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh6/d;->l:Z

    .line 2
    .line 3
    return v0
.end method
