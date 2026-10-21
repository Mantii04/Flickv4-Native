.class public final synthetic Landroidx/media3/exoplayer/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic j:Landroidx/media3/exoplayer/analytics/PlayerId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/E;->b:Landroid/content/Context;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/E;->e:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/E;->f:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p4, p0, Landroidx/media3/exoplayer/E;->j:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/E;->f:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, p0, Landroidx/media3/exoplayer/E;->b:Landroid/content/Context;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/E;->e:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/E;->j:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {v1, v2, v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;->a(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method
