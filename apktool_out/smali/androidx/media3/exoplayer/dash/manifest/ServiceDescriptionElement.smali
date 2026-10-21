.class public final Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method public constructor <init>(JJJFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    .line 7
    .line 8
    iput-wide p5, p0, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    .line 9
    .line 10
    iput p7, p0, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    .line 11
    .line 12
    iput p8, p0, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    .line 13
    .line 14
    return-void
.end method
