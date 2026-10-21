.class public final synthetic Landroidx/media3/exoplayer/offline/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/C;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/offline/SegmentDownloader;

.field public final synthetic e:Landroidx/media3/datasource/DataSource;

.field public final synthetic f:Landroidx/media3/datasource/DataSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/j;->b:Landroidx/media3/exoplayer/offline/SegmentDownloader;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/j;->e:Landroidx/media3/datasource/DataSource;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/j;->f:Landroidx/media3/datasource/DataSpec;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/j;->b:Landroidx/media3/exoplayer/offline/SegmentDownloader;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/j;->e:Landroidx/media3/datasource/DataSource;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/j;->f:Landroidx/media3/datasource/DataSpec;

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)Landroidx/media3/common/util/RunnableFutureTask;

    move-result-object v0

    return-object v0
.end method
