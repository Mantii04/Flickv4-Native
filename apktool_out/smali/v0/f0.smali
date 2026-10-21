.class public Lv0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/g0;


# instance fields
.field public final a:J

.field public final b:Lv0/e0;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lv0/f0;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lv0/f0;->a:J

    .line 4
    new-instance p1, Lv0/e0;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lv0/h0;->c:Lv0/h0;

    goto :goto_0

    :cond_0
    new-instance p2, Lv0/h0;

    invoke-direct {p2, v0, v1, p3, p4}, Lv0/h0;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lv0/e0;-><init>(Lv0/h0;)V

    iput-object p1, p0, Lv0/f0;->b:Lv0/e0;

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lv0/f0;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 0

    .line 1
    iget-object p1, p0, Lv0/f0;->b:Lv0/e0;

    .line 2
    .line 3
    return-object p1
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
    const/4 v0, 0x0

    .line 2
    return v0
.end method
