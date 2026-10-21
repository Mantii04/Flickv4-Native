.class public final Lv0/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/g0;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lv0/j0;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lv0/j0;->a:J

    .line 4
    iput-wide p3, p0, Lv0/j0;->b:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lv0/j0;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 4

    .line 1
    new-instance v0, Lv0/e0;

    .line 2
    .line 3
    new-instance v1, Lv0/h0;

    .line 4
    .line 5
    iget-wide v2, p0, Lv0/j0;->b:J

    .line 6
    .line 7
    invoke-direct {v1, p1, p2, v2, v3}, Lv0/h0;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 11
    .line 12
    .line 13
    return-object v0
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
