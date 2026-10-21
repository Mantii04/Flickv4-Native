.class public final LQ0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ0/h;


# instance fields
.field public final a:Lv0/P;

.field public final b:Lv0/O;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lv0/P;Lv0/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LQ0/c;->a:Lv0/P;

    .line 5
    .line 6
    iput-object p2, p0, LQ0/c;->b:Lv0/O;

    .line 7
    .line 8
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    iput-wide p1, p0, LQ0/c;->c:J

    .line 11
    .line 12
    iput-wide p1, p0, LQ0/c;->d:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public createSeekMap()Lv0/g0;
    .locals 4

    .line 1
    iget-wide v0, p0, LQ0/c;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lv0/N;

    .line 16
    .line 17
    iget-object v1, p0, LQ0/c;->a:Lv0/P;

    .line 18
    .line 19
    iget-wide v2, p0, LQ0/c;->c:J

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lv0/N;-><init>(Lv0/P;J)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public read(Lv0/D;)J
    .locals 6

    .line 1
    iget-wide v0, p0, LQ0/c;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    const-wide/16 v4, 0x2

    .line 12
    .line 13
    add-long/2addr v0, v4

    .line 14
    neg-long v0, v0

    .line 15
    iput-wide v2, p0, LQ0/c;->d:J

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    return-wide v2
.end method

.method public setFirstFrameOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, LQ0/c;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public startSeek(J)V
    .locals 2

    .line 1
    iget-object v0, p0, LQ0/c;->b:Lv0/O;

    .line 2
    .line 3
    iget-object v0, v0, Lv0/O;->a:[J

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v0, p1

    .line 11
    .line 12
    iput-wide p1, p0, LQ0/c;->d:J

    .line 13
    .line 14
    return-void
.end method
