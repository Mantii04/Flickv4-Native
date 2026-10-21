.class public final synthetic Landroidx/media3/exoplayer/source/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/I;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/c;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

.method public createExtractors()[Lv0/C;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/c;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->a(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;Landroidx/media3/common/Format;)[Lv0/C;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lv0/C;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lv0/H;->a(Lv0/I;Landroid/net/Uri;Ljava/util/Map;)[Lv0/C;

    move-result-object p1

    return-object p1
.end method

.method public synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lv0/I;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv0/H;->b(Lv0/I;I)Lv0/I;

    move-result-object p1

    return-object p1
.end method

.method public synthetic experimentalSetTextTrackTranscodingEnabled(Z)Lv0/I;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv0/H;->c(Lv0/I;Z)Lv0/I;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setSubtitleParserFactory(LS0/q;)Lv0/I;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv0/H;->d(Lv0/I;LS0/q;)Lv0/I;

    move-result-object p1

    return-object p1
.end method
