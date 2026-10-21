.class public final synthetic Landroidx/media3/common/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/common/util/d;->b:I

    iput-object p1, p0, Landroidx/media3/common/util/d;->f:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/common/util/d;->e:I

    iput-object p3, p0, Landroidx/media3/common/util/d;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/media3/common/util/d;->b:I

    iput-object p1, p0, Landroidx/media3/common/util/d;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/d;->j:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/util/d;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/d;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/d;->e:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/common/util/d;->f:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/common/util/d;->b:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v2, Lp5/c;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    sget v3, Lio/hopmonsdk/service/MoneytiserService;->m:I

    .line 20
    .line 21
    iget-object v2, v2, Lp5/c;->d:Lio/hopmonsdk/service/MoneytiserService;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v0}, Lio/hopmonsdk/service/MoneytiserService;->c(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    check-cast v2, Ll1/a;

    .line 30
    .line 31
    iget-object v2, v2, Ll1/a;->c:Ll1/f;

    .line 32
    .line 33
    check-cast v0, Ljava/io/Serializable;

    .line 34
    .line 35
    invoke-interface {v2, v1, v0}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 40
    .line 41
    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 42
    .line 43
    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 48
    .line 49
    check-cast v0, Landroidx/media3/common/util/ListenerSet$Event;

    .line 50
    .line 51
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
