.class public final Lx0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/g0;


# instance fields
.field public final a:J

.field public final synthetic b:Lx0/d;


# direct methods
.method public constructor <init>(Lx0/d;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/b;->b:Lx0/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lx0/b;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lx0/b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 8

    .line 1
    iget-object v0, p0, Lx0/b;->b:Lx0/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx0/d;->i:[Lx0/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Lx0/g;->getSeekPoints(J)Lv0/e0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    :goto_0
    iget-object v3, v0, Lx0/d;->i:[Lx0/g;

    .line 14
    .line 15
    array-length v4, v3

    .line 16
    if-ge v2, v4, :cond_1

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v3, p1, p2}, Lx0/g;->getSeekPoints(J)Lv0/e0;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, v3, Lv0/e0;->a:Lv0/h0;

    .line 25
    .line 26
    iget-wide v4, v4, Lv0/h0;->b:J

    .line 27
    .line 28
    iget-object v6, v1, Lv0/e0;->a:Lv0/h0;

    .line 29
    .line 30
    iget-wide v6, v6, Lv0/h0;->b:J

    .line 31
    .line 32
    cmp-long v4, v4, v6

    .line 33
    .line 34
    if-gez v4, :cond_0

    .line 35
    .line 36
    move-object v1, v3

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v1
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
