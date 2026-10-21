.class public final LC1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:LC1/r;

.field public final e:LK1/r;

.field public final f:LV3/F;


# direct methods
.method public constructor <init>(LC1/r;LK1/r;LV3/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/q;->b:LC1/r;

    .line 5
    .line 6
    iput-object p2, p0, LC1/q;->e:LK1/r;

    .line 7
    .line 8
    iput-object p3, p0, LC1/q;->f:LV3/F;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, LC1/q;->f:LV3/F;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    iget-object v1, p0, LC1/q;->b:LC1/r;

    .line 16
    .line 17
    iget-object v2, p0, LC1/q;->e:LK1/r;

    .line 18
    .line 19
    invoke-interface {v1, v2, v0}, LC1/e;->onExecuted(LK1/r;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
