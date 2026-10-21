.class public final synthetic Landroidx/media3/exoplayer/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic e:Landroid/util/Pair;

.field public final synthetic f:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic j:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/U;->b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/U;->e:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/U;->f:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Landroidx/media3/exoplayer/U;->j:Landroidx/media3/exoplayer/source/MediaLoadData;

    iput p5, p0, Landroidx/media3/exoplayer/U;->m:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/U;->b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/U;->e:Landroid/util/Pair;

    iget-object v2, p0, Landroidx/media3/exoplayer/U;->f:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, p0, Landroidx/media3/exoplayer/U;->j:Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v4, p0, Landroidx/media3/exoplayer/U;->m:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->l(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method
