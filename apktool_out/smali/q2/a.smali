.class public final Lq2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:I

.field public c:I

.field public final d:Lq2/c;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq2/c;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq2/a;->d:Lq2/c;

    .line 10
    .line 11
    iput-boolean p1, p0, Lq2/a;->a:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public build()Lq2/h;
    .locals 9

    .line 1
    iget-object v0, p0, Lq2/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    .line 11
    iget v2, p0, Lq2/a;->b:I

    .line 12
    .line 13
    iget v3, p0, Lq2/a;->c:I

    .line 14
    .line 15
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 18
    .line 19
    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v8, Lq2/e;

    .line 23
    .line 24
    iget-object v0, p0, Lq2/a;->d:Lq2/c;

    .line 25
    .line 26
    iget-object v4, p0, Lq2/a;->e:Ljava/lang/String;

    .line 27
    .line 28
    iget-boolean v5, p0, Lq2/a;->a:Z

    .line 29
    .line 30
    invoke-direct {v8, v0, v4, v5}, Lq2/e;-><init>(Lq2/c;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lq2/h;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lq2/h;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Name must be non-null and non-empty, but given: "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lq2/a;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public setName(Ljava/lang/String;)Lq2/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lq2/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setThreadCount(I)Lq2/a;
    .locals 0

    .line 1
    iput p1, p0, Lq2/a;->b:I

    .line 2
    .line 3
    iput p1, p0, Lq2/a;->c:I

    .line 4
    .line 5
    return-object p0
.end method
