.class public abstract synthetic Landroidx/media3/common/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-void
.end method

.method public static a(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/media3/common/x;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(JF)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v3

    .line 5
    new-instance v0, Landroidx/media3/common/w;

    .line 6
    .line 7
    move-wide v1, p0

    .line 8
    move v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/w;-><init>(JJF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static synthetic d(JJF)J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p2

    .line 6
    long-to-float p2, v0

    .line 7
    mul-float/2addr p2, p4

    .line 8
    float-to-long p2, p2

    .line 9
    add-long/2addr p0, p2

    .line 10
    return-wide p0
.end method
