.class public final synthetic Landroidx/media3/exoplayer/mediacodec/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/common/Format;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/l;->a:I

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/l;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/l;->c:Landroidx/media3/common/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/l;->a:I

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/l;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/l;->c:Landroidx/media3/common/Format;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->d(Landroid/content/Context;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/l;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/l;->c:Landroidx/media3/common/Format;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a(Landroid/content/Context;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
