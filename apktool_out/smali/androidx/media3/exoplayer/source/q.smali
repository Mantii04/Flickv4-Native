.class public abstract synthetic Landroidx/media3/exoplayer/source/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/media3/exoplayer/source/ShuffleOrder;III)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static b(Landroidx/media3/exoplayer/source/ShuffleOrder;II)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-interface {p0, p2, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
