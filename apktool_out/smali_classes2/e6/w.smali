.class public abstract Le6/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final appendingSink(Ljava/io/File;)Le6/J;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le6/x;->appendingSink(Ljava/io/File;)Le6/J;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final blackhole()Le6/J;
    .locals 1

    .line 1
    invoke-static {}, Le6/y;->blackhole()Le6/J;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final buffer(Le6/J;)Le6/m;
    .locals 0

    .line 1
    invoke-static {p0}, Le6/y;->buffer(Le6/J;)Le6/m;

    move-result-object p0

    return-object p0
.end method

.method public static final buffer(Le6/L;)Le6/n;
    .locals 0

    .line 2
    invoke-static {p0}, Le6/y;->buffer(Le6/L;)Le6/n;

    move-result-object p0

    return-object p0
.end method

.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Le6/x;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final sink(Ljava/io/File;Z)Le6/J;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Le6/x;->sink(Ljava/io/File;Z)Le6/J;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/OutputStream;)Le6/J;
    .locals 0

    .line 2
    invoke-static {p0}, Le6/x;->sink(Ljava/io/OutputStream;)Le6/J;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/net/Socket;)Le6/J;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Le6/x;->sink(Ljava/net/Socket;)Le6/J;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sink$default(Ljava/io/File;ZILjava/lang/Object;)Le6/J;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Le6/x;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Le6/J;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final source(Ljava/io/File;)Le6/L;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le6/x;->source(Ljava/io/File;)Le6/L;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/InputStream;)Le6/L;
    .locals 0

    .line 2
    invoke-static {p0}, Le6/x;->source(Ljava/io/InputStream;)Le6/L;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/net/Socket;)Le6/L;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Le6/x;->source(Ljava/net/Socket;)Le6/L;

    move-result-object p0

    return-object p0
.end method
