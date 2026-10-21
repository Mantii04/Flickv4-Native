.class public final Lv0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/g0;


# instance fields
.field public final a:Lv0/l;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Lv0/l;JJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/i;->a:Lv0/l;

    .line 5
    .line 6
    iput-wide p2, p0, Lv0/i;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lv0/i;->c:J

    .line 9
    .line 10
    iput-wide p6, p0, Lv0/i;->d:J

    .line 11
    .line 12
    iput-wide p8, p0, Lv0/i;->e:J

    .line 13
    .line 14
    iput-wide p10, p0, Lv0/i;->f:J

    .line 15
    .line 16
    iput-wide p12, p0, Lv0/i;->g:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lv0/i;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 13

    .line 1
    iget-object v0, p0, Lv0/i;->a:Lv0/l;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv0/l;->timeUsToTargetTime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v9, p0, Lv0/i;->f:J

    .line 8
    .line 9
    iget-wide v11, p0, Lv0/i;->g:J

    .line 10
    .line 11
    iget-wide v3, p0, Lv0/i;->c:J

    .line 12
    .line 13
    iget-wide v5, p0, Lv0/i;->d:J

    .line 14
    .line 15
    iget-wide v7, p0, Lv0/i;->e:J

    .line 16
    .line 17
    invoke-static/range {v1 .. v12}, Lv0/k;->calculateNextSearchBytePosition(JJJJJJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    new-instance v2, Lv0/e0;

    .line 22
    .line 23
    new-instance v3, Lv0/h0;

    .line 24
    .line 25
    invoke-direct {v3, p1, p2, v0, v1}, Lv0/h0;-><init>(JJ)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 29
    .line 30
    .line 31
    return-object v2
.end method

.method public final synthetic isEstimated()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/d0;->a(Lv0/g0;)Z

    move-result v0

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public timeUsToTargetTime(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/i;->a:Lv0/l;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv0/l;->timeUsToTargetTime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method
