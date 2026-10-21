.class public final Lm4/B;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/ref/ReferenceQueue;

.field public final e:Lm4/y;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Lm4/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm4/B;->b:Ljava/lang/ref/ReferenceQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lm4/B;->e:Lm4/y;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    .line 11
    .line 12
    const-string p1, "Picasso-refQueue"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm4/B;->e:Lm4/y;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    .line 7
    .line 8
    :goto_0
    :try_start_0
    iget-object v1, p0, Lm4/B;->b:Ljava/lang/ref/ReferenceQueue;

    .line 9
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lm4/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    iput v3, v2, Landroid/os/Message;->what:I

    .line 26
    .line 27
    iget-object v1, v1, Lm4/a;->a:Lm4/s;

    .line 28
    .line 29
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    new-instance v2, Lm4/A;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lm4/A;-><init>(Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :catch_1
    return-void
.end method
