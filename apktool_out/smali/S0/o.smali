.class public abstract synthetic LS0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LS0/s;[BII)LS0/i;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()LQ3/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v5, LS0/r;->c:LS0/r;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v6, LA0/a;

    .line 11
    .line 12
    const/16 v1, 0xb

    .line 13
    .line 14
    invoke-direct {v6, v0, v1}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    invoke-interface/range {v1 .. v6}, LS0/s;->parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V

    .line 22
    .line 23
    .line 24
    new-instance p0, LS0/d;

    .line 25
    .line 26
    invoke-virtual {v0}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, LS0/d;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public static b(LS0/s;)V
    .locals 0

    .line 1
    return-void
.end method
