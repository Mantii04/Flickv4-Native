.class public final synthetic LZ2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/a;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LZ2/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LZ2/j;->e:I

    iput-object p1, p0, LZ2/j;->f:Ljava/lang/Object;

    iput-object p2, p0, LZ2/j;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, LZ2/j;->b:I

    iput-object p1, p0, LZ2/j;->f:Ljava/lang/Object;

    iput-object p2, p0, LZ2/j;->j:Ljava/lang/Object;

    iput p3, p0, LZ2/j;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, LZ2/j;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, LZ2/j;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LZ2/m;

    .line 8
    .line 9
    iget-object v1, v1, LZ2/m;->d:LZ2/q;

    .line 10
    .line 11
    check-cast v1, LZ2/d;

    .line 12
    .line 13
    iget-object v2, p0, LZ2/j;->j:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, LS2/E;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, LZ2/d;->schedule(LS2/E;I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, LZ2/j;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v0, p0, LZ2/j;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LZ2/j;->j:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/MediaItem;

    iget v2, p0, LZ2/j;->e:I

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->m0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget v0, p0, LZ2/j;->e:I

    iget-object v1, p0, LZ2/j;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    iget-object v2, p0, LZ2/j;->j:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/common/SimpleBasePlayer;->D(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
