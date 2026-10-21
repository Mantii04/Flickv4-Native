.class public final LO0/a;
.super Lv0/t;
.source "SourceFile"

# interfaces
.implements LO0/i;


# instance fields
.field public final i:J

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v8}, LO0/a;-><init>(JJIIZZ)V

    return-void
.end method

.method public constructor <init>(JJIIZZ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p8}, Lv0/t;-><init>(JJIIZZ)V

    move p8, p7

    move p7, p6

    move p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 4
    iput-wide p4, p1, LO0/a;->i:J

    .line 5
    iput p6, p1, LO0/a;->j:I

    .line 6
    iput p7, p1, LO0/a;->k:I

    .line 7
    iput-boolean p8, p1, LO0/a;->l:Z

    const-wide/16 p4, -0x1

    cmp-long p6, p2, p4

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, p4

    .line 8
    :goto_0
    iput-wide p2, p1, LO0/a;->m:J

    return-void
.end method

.method public constructor <init>(JJLv0/Y;Z)V
    .locals 9

    .line 1
    iget v5, p5, Lv0/Y;->f:I

    iget v6, p5, Lv0/Y;->c:I

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v8}, LO0/a;-><init>(JJIIZZ)V

    return-void
.end method


# virtual methods
.method public copyWithNewDataEndPosition(J)LO0/a;
    .locals 9

    .line 1
    new-instance v0, LO0/a;

    .line 2
    .line 3
    iget-boolean v7, p0, LO0/a;->l:Z

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    iget-wide v3, p0, LO0/a;->i:J

    .line 7
    .line 8
    iget v5, p0, LO0/a;->j:I

    .line 9
    .line 10
    iget v6, p0, LO0/a;->k:I

    .line 11
    .line 12
    move-wide v1, p1

    .line 13
    invoke-direct/range {v0 .. v8}, LO0/a;-><init>(JJIIZZ)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 1
    iget v0, p0, LO0/a;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/a;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/a;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lv0/t;->getTimeUsAtPosition(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method
