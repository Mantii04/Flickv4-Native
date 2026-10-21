.class public final LL4/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:LL4/e;

.field public final b:Landroid/content/Context;

.field public c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;LL4/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LL4/f;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LL4/f;->a:LL4/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LL4/f;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 5
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    .line 6
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, LL4/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, LL4/f;->c:Ljava/io/File;

    .line 8
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, LL4/f;->c:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    .line 9
    new-array v0, v0, [B

    .line 10
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 11
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 13
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :goto_1
    iget-object v0, p0, LL4/f;->a:LL4/e;

    check-cast v0, LL4/a;

    invoke-virtual {v0, p1}, LL4/a;->onFail(Ljava/lang/Exception;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LL4/f;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p1, p0, LL4/f;->a:LL4/e;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LL4/f;->c:Ljava/io/File;

    check-cast p1, LL4/a;

    invoke-virtual {p1, v0}, LL4/a;->onDownload(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LL4/f;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method
