.class Landroidx/media3/common/VideoFrameProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Effect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/VideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic getDurationAfterEffectApplied(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c;->a(Landroidx/media3/common/Effect;J)J

    move-result-wide p1

    return-wide p1
.end method
