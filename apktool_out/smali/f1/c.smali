.class public final Lf1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lf1/k;


# direct methods
.method public constructor <init>(Lf1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/c;->a:Lf1/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRoutesChanged(Lf1/C;Lf1/v;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf1/C;",
            "Lf1/v;",
            "Ljava/util/Collection<",
            "Lf1/B;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf1/c;->a:Lf1/k;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/k;->v:Lf1/C;

    .line 4
    .line 5
    if-ne p1, v1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object p1, v0, Lf1/k;->u:Lf1/U;

    .line 10
    .line 11
    invoke-virtual {p1}, Lf1/U;->getProvider()Lf1/S;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lf1/v;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, p1, v1}, Lf1/k;->b(Lf1/S;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    new-instance v2, Lf1/U;

    .line 25
    .line 26
    invoke-direct {v2, p1, v1, v3}, Lf1/U;-><init>(Lf1/S;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p2}, Lf1/U;->b(Lf1/v;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lf1/k;->s:Lf1/U;

    .line 33
    .line 34
    if-ne p1, v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v3, v0, Lf1/k;->v:Lf1/C;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    iget-object v5, v0, Lf1/k;->u:Lf1/U;

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    move-object v6, p3

    .line 44
    invoke-virtual/range {v0 .. v6}, Lf1/k;->h(Lf1/k;Lf1/U;Lf1/F;ILf1/U;Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, v0, Lf1/k;->u:Lf1/U;

    .line 49
    .line 50
    iput-object p1, v0, Lf1/k;->v:Lf1/C;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    move-object v6, p3

    .line 54
    iget-object p3, v0, Lf1/k;->t:Lf1/F;

    .line 55
    .line 56
    if-ne p1, p3, :cond_3

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object p1, v0, Lf1/k;->s:Lf1/U;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Lf1/k;->n(Lf1/U;Lf1/v;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p1, v0, Lf1/k;->s:Lf1/U;

    .line 66
    .line 67
    invoke-virtual {p1, v6}, Lf1/U;->c(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    return-void
.end method
