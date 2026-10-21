.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static volatile DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefault()Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 4

    .line 1
    sget-object v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const-class v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;

    .line 13
    .line 14
    const-string v2, "/mozilla/public-suffix-list.txt"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    :try_start_1
    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/net/URL;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sput-object v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    new-instance v2, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 33
    .line 34
    const-class v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;

    .line 35
    .line 36
    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    const-string v3, "Failure loading public suffix list from default resource"

    .line 46
    .line 47
    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 52
    .line 53
    const-string v2, "com"

    .line 54
    .line 55
    filled-new-array {v2}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    sput-object v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 68
    .line 69
    :cond_1
    :goto_0
    monitor-exit v0

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw v1

    .line 73
    :cond_2
    :goto_2
    sget-object v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 74
    .line 75
    return-object v0
.end method

.method public static load(Ljava/io/File;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    const-string v0, "File"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 10
    :try_start_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 12
    throw p0
.end method

.method private static load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;->parseByType(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static load(Ljava/net/URL;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const-string v0, "URL"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 7
    throw v0
.end method
