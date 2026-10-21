.class public final synthetic Landroidx/media3/exoplayer/hls/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/w;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/hls/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/k;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    invoke-static {p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->a(Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, LJ0/o;

    invoke-static {p1}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->a(LJ0/o;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
