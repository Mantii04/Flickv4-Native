.class public final LW1/q;
.super LW1/f;
.source "SourceFile"


# instance fields
.field public final i:La2/k;

.field public final j:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LW1/f;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, La2/k;

    .line 5
    .line 6
    invoke-direct {p1}, La2/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LW1/q;->i:La2/k;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, LW1/q;->j:Landroid/graphics/Path;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getValue(Lg2/a;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/a;",
            "F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lg2/a;->b:Ljava/lang/Object;

    check-cast v0, La2/k;

    .line 3
    iget-object p1, p1, Lg2/a;->c:Ljava/lang/Object;

    check-cast p1, La2/k;

    .line 4
    iget-object v1, p0, LW1/q;->i:La2/k;

    invoke-virtual {v1, v0, p1, p2}, La2/k;->interpolateBetween(La2/k;La2/k;F)V

    .line 5
    iget-object p1, p0, LW1/q;->j:Landroid/graphics/Path;

    invoke-static {v1, p1}, Lf2/g;->getPathFromData(La2/k;Landroid/graphics/Path;)V

    return-object p1
.end method

.method public bridge synthetic getValue(Lg2/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW1/q;->getValue(Lg2/a;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
