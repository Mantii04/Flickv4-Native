.class public abstract synthetic Landroidx/media3/exoplayer/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static b(Landroidx/media3/exoplayer/Renderer;JJ)J
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    :cond_0
    const-wide/32 p0, 0xf4240

    .line 21
    .line 22
    .line 23
    return-wide p0

    .line 24
    :cond_1
    const-wide/16 p0, 0x2710

    .line 25
    .line 26
    return-wide p0
.end method

.method public static c(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static d(Landroidx/media3/exoplayer/Renderer;FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public static e(Landroidx/media3/exoplayer/Renderer;J)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
