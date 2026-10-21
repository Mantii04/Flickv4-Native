.class public final LS2/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP2/f;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:LS2/E;

.field public final c:LS2/H;


# direct methods
.method public constructor <init>(Ljava/util/Set;LS2/E;LS2/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS2/F;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, LS2/F;->b:LS2/E;

    .line 7
    .line 8
    iput-object p3, p0, LS2/F;->c:LS2/H;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getTransport(Ljava/lang/String;Ljava/lang/Class;LP2/b;LP2/d;)LP2/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "LP2/b;",
            "LP2/d;",
            ")",
            "LP2/e;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, LS2/F;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, LS2/G;

    .line 10
    .line 11
    iget-object v6, p0, LS2/F;->c:LS2/H;

    .line 12
    .line 13
    iget-object v2, p0, LS2/F;->b:LS2/E;

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-direct/range {v1 .. v6}, LS2/G;-><init>(LS2/E;Ljava/lang/String;LP2/b;LP2/d;LS2/H;)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    move-object v4, p3

    .line 23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 26
    .line 27
    const/4 p4, 0x2

    .line 28
    new-array p4, p4, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    aput-object v4, p4, v0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    aput-object p2, p4, v0

    .line 35
    .line 36
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
