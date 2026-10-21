.class public abstract LQ0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ0/f;

.field public b:Lv0/r0;

.field public c:Lv0/F;

.field public d:LQ0/h;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:LQ0/j;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LQ0/f;

    .line 5
    .line 6
    invoke-direct {v0}, LQ0/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LQ0/l;->a:LQ0/f;

    .line 10
    .line 11
    new-instance v0, LQ0/j;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LQ0/l;->j:LQ0/j;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public convertGranuleToTime(J)J
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    mul-long/2addr p1, v0

    .line 5
    iget v0, p0, LQ0/l;->i:I

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    div-long/2addr p1, v0

    .line 9
    return-wide p1
.end method

.method public convertTimeToGranule(J)J
    .locals 2

    .line 1
    iget v0, p0, LQ0/l;->i:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long/2addr v0, p1

    .line 5
    const-wide/32 p1, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, p1

    .line 9
    return-wide v0
.end method

.method public onSeekEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, LQ0/l;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public abstract preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
.end method

.method public abstract readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLQ0/j;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset(Z)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, LQ0/j;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, LQ0/l;->j:LQ0/j;

    .line 11
    .line 12
    iput-wide v0, p0, LQ0/l;->f:J

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, LQ0/l;->h:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    iput p1, p0, LQ0/l;->h:I

    .line 20
    .line 21
    :goto_0
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    iput-wide v2, p0, LQ0/l;->e:J

    .line 24
    .line 25
    iput-wide v0, p0, LQ0/l;->g:J

    .line 26
    .line 27
    return-void
.end method
