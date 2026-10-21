.class public final Landroidx/mediarouter/app/H;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/Q;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/Q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/H;->a:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/mediarouter/app/H;->a:Landroidx/mediarouter/app/Q;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, v0, Landroidx/mediarouter/app/Q;->y:J

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/mediarouter/app/Q;->s:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Landroidx/mediarouter/app/Q;->s:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Landroidx/mediarouter/app/Q;->t:Landroidx/mediarouter/app/O;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/mediarouter/app/O;->a()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
