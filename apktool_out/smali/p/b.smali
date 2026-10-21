.class public final Lp/b;
.super Lp/m;
.source "SourceFile"


# instance fields
.field public final synthetic j:Lp/g;


# direct methods
.method public constructor <init>(Lp/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp/b;->j:Lp/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Lp/q;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lp/m;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public elementAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp/b;->j:Lp/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public removeAt(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/b;->j:Lp/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp/q;->removeAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
