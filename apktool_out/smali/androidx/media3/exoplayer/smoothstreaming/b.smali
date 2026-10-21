.class public final synthetic Landroidx/media3/exoplayer/smoothstreaming/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/p;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {p1}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;->a(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
