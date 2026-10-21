.class public final synthetic Landroidx/media3/exoplayer/analytics/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic e:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f:Ljava/io/IOException;

.field public final synthetic j:Z

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/k;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/k;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/k;->e:Landroidx/media3/exoplayer/source/MediaLoadData;

    iput-object p4, p0, Landroidx/media3/exoplayer/analytics/k;->f:Ljava/io/IOException;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/analytics/k;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v5, p1

    check-cast v5, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/k;->m:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/k;->e:Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/k;->f:Ljava/io/IOException;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/k;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/analytics/k;->j:Z

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v5, p1

    check-cast v5, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/k;->e:Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/k;->f:Ljava/io/IOException;

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/k;->m:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/k;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/analytics/k;->j:Z

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
