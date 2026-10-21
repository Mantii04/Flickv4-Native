.class public final Lp2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG2/o;

.field public final b:LL/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LG2/o;

    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, LG2/o;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lp2/t;->a:LG2/o;

    .line 12
    .line 13
    new-instance v0, Lp2/r;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    invoke-static {v1, v0}, LH2/h;->threadSafe(ILH2/d;)LL/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lp2/t;->b:LL/e;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getSafeKey(Ll2/m;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/t;->a:LG2/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp2/t;->a:LG2/o;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, LG2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lp2/t;->b:LL/e;

    .line 16
    .line 17
    invoke-interface {v0}, LL/e;->acquire()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lp2/s;

    .line 26
    .line 27
    :try_start_1
    iget-object v2, v1, Lp2/s;->b:Ljava/security/MessageDigest;

    .line 28
    .line 29
    invoke-interface {p1, v2}, Ll2/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Lp2/s;->b:Ljava/security/MessageDigest;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, LG2/t;->sha256BytesToHex([B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-interface {v0, v1}, LL/e;->release(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-object v1, v2

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-interface {v0, v1}, LL/e;->release(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_0
    :goto_0
    iget-object v2, p0, Lp2/t;->a:LG2/o;

    .line 53
    .line 54
    monitor-enter v2

    .line 55
    :try_start_2
    iget-object v0, p0, Lp2/t;->a:LG2/o;

    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, LG2/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    monitor-exit v2

    .line 61
    return-object v1

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    throw p1

    .line 65
    :catchall_2
    move-exception p1

    .line 66
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 67
    throw p1
.end method
