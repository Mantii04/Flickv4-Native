.class public final LS2/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:LS2/J;


# instance fields
.field public final a:Lc3/a;

.field public final b:Lc3/a;

.field public final c:LY2/d;

.field public final d:LZ2/m;


# direct methods
.method public constructor <init>(Lc3/a;Lc3/a;LY2/d;LZ2/m;LZ2/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS2/H;->a:Lc3/a;

    .line 5
    .line 6
    iput-object p2, p0, LS2/H;->b:Lc3/a;

    .line 7
    .line 8
    iput-object p3, p0, LS2/H;->c:LY2/d;

    .line 9
    .line 10
    iput-object p4, p0, LS2/H;->d:LZ2/m;

    .line 11
    .line 12
    invoke-virtual {p5}, LZ2/o;->ensureContextsScheduled()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static getInstance()LS2/H;
    .locals 2

    .line 1
    sget-object v0, LS2/H;->e:LS2/J;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, LS2/p;

    .line 6
    .line 7
    iget-object v0, v0, LS2/p;->t:Lt5/a;

    .line 8
    .line 9
    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, LS2/H;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Not initialized!"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, LS2/H;->e:LS2/J;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, LS2/H;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, LS2/H;->e:LS2/J;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, LS2/p;->builder()LS2/I;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, LS2/o;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, LS2/o;->setApplicationContext(Landroid/content/Context;)LS2/I;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, LS2/o;

    .line 23
    .line 24
    invoke-virtual {p0}, LS2/o;->build()LS2/J;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sput-object p0, LS2/H;->e:LS2/J;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public getUploader()LZ2/m;
    .locals 1

    .line 1
    iget-object v0, p0, LS2/H;->d:LZ2/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public newFactory(LS2/q;)LP2/f;
    .locals 4

    .line 1
    new-instance v0, LS2/F;

    .line 2
    .line 3
    instance-of v1, p1, LS2/r;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, LS2/r;

    .line 9
    .line 10
    check-cast v1, LQ2/a;

    .line 11
    .line 12
    invoke-virtual {v1}, LQ2/a;->getSupportedEncodings()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "proto"

    .line 22
    .line 23
    invoke-static {v1}, LP2/b;->of(Ljava/lang/String;)LP2/b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-static {}, LS2/E;->builder()LS2/D;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast p1, LQ2/a;

    .line 36
    .line 37
    invoke-virtual {p1}, LQ2/a;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, LS2/D;->setBackendName(Ljava/lang/String;)LS2/D;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1}, LQ2/a;->getExtras()[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v2, p1}, LS2/D;->setExtras([B)LS2/D;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, LS2/D;->build()LS2/E;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, v1, p1, p0}, LS2/F;-><init>(Ljava/util/Set;LS2/E;LS2/H;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public send(LS2/C;LP2/g;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, LS2/C;->getTransportContext()LS2/E;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, LS2/l;

    .line 7
    .line 8
    iget-object v1, v1, LS2/l;->c:LP2/c;

    .line 9
    .line 10
    invoke-virtual {v1}, LP2/c;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, LS2/E;->withPriority(Lcom/google/android/datatransport/Priority;)LS2/E;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, LS2/u;->builder()LS2/t;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, LS2/H;->a:Lc3/a;

    .line 23
    .line 24
    invoke-interface {v3}, Lc3/a;->getTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2, v3, v4}, LS2/t;->setEventMillis(J)LS2/t;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, LS2/H;->b:Lc3/a;

    .line 33
    .line 34
    invoke-interface {v3}, Lc3/a;->getTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {v2, v3, v4}, LS2/t;->setUptimeMillis(J)LS2/t;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1}, LS2/C;->getTransportName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, LS2/t;->setTransportName(Ljava/lang/String;)LS2/t;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, LS2/s;

    .line 51
    .line 52
    invoke-virtual {p1}, LS2/C;->getEncoding()LP2/b;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {p1}, LS2/C;->getPayload()[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v3, v4, p1}, LS2/s;-><init>(LP2/b;[B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, LS2/t;->setEncodedPayload(LS2/s;)LS2/t;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1}, LP2/c;->getCode()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, LS2/t;->setCode(Ljava/lang/Integer;)LS2/t;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, LS2/t;->build()LS2/u;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v1, p0, LS2/H;->c:LY2/d;

    .line 80
    .line 81
    check-cast v1, LY2/b;

    .line 82
    .line 83
    invoke-virtual {v1, v0, p1, p2}, LY2/b;->schedule(LS2/E;LS2/u;LP2/g;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
