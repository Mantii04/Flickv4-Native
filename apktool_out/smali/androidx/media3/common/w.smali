.class public final synthetic Landroidx/media3/common/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic b:J

.field public final synthetic e:J

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(JJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/w;->b:J

    iput-wide p3, p0, Landroidx/media3/common/w;->e:J

    iput p5, p0, Landroidx/media3/common/w;->f:F

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/w;->f:F

    iget-wide v1, p0, Landroidx/media3/common/w;->b:J

    iget-wide v3, p0, Landroidx/media3/common/w;->e:J

    invoke-static {v1, v2, v3, v4, v0}, Landroidx/media3/common/y;->d(JJF)J

    move-result-wide v0

    return-wide v0
.end method
