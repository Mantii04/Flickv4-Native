.class public final Lv0/m0;
.super Lv0/S;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv0/g0;

.field public final synthetic b:Lv0/n0;


# direct methods
.method public constructor <init>(Lv0/n0;Lv0/g0;Lv0/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv0/m0;->b:Lv0/n0;

    .line 2
    .line 3
    iput-object p3, p0, Lv0/m0;->a:Lv0/g0;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lv0/S;-><init>(Lv0/g0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getSeekPoints(J)Lv0/e0;
    .locals 9

    .line 1
    iget-object v0, p0, Lv0/m0;->a:Lv0/g0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv0/g0;->getSeekPoints(J)Lv0/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lv0/e0;

    .line 8
    .line 9
    new-instance v0, Lv0/h0;

    .line 10
    .line 11
    iget-object v1, p1, Lv0/e0;->a:Lv0/h0;

    .line 12
    .line 13
    iget-wide v2, v1, Lv0/h0;->a:J

    .line 14
    .line 15
    iget-wide v4, v1, Lv0/h0;->b:J

    .line 16
    .line 17
    iget-object v1, p0, Lv0/m0;->b:Lv0/n0;

    .line 18
    .line 19
    iget-wide v6, v1, Lv0/n0;->b:J

    .line 20
    .line 21
    add-long/2addr v4, v6

    .line 22
    invoke-direct {v0, v2, v3, v4, v5}, Lv0/h0;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lv0/h0;

    .line 26
    .line 27
    iget-object p1, p1, Lv0/e0;->b:Lv0/h0;

    .line 28
    .line 29
    iget-wide v3, p1, Lv0/h0;->a:J

    .line 30
    .line 31
    iget-wide v5, p1, Lv0/h0;->b:J

    .line 32
    .line 33
    iget-wide v7, v1, Lv0/n0;->b:J

    .line 34
    .line 35
    add-long/2addr v5, v7

    .line 36
    invoke-direct {v2, v3, v4, v5, v6}, Lv0/h0;-><init>(JJ)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, v0, v2}, Lv0/e0;-><init>(Lv0/h0;Lv0/h0;)V

    .line 40
    .line 41
    .line 42
    return-object p2
.end method
