.class public final Lh4/l;
.super Lh4/n;
.source "SourceFile"


# instance fields
.field public q:Lh4/e;

.field public r:F


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh4/n;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lh4/l;->setFloatValues([F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh4/l;->q:Lh4/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lh4/e;->getFloatValue(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lh4/l;->r:F

    .line 8
    .line 9
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lh4/l;->r:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public clone()Lh4/l;
    .locals 2

    .line 3
    invoke-super {p0}, Lh4/n;->clone()Lh4/n;

    move-result-object v0

    check-cast v0, Lh4/l;

    .line 4
    iget-object v1, v0, Lh4/n;->f:Lh4/k;

    check-cast v1, Lh4/e;

    iput-object v1, v0, Lh4/l;->q:Lh4/e;

    return-object v0
.end method

.method public bridge synthetic clone()Lh4/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh4/l;->clone()Lh4/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lh4/l;->clone()Lh4/l;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh4/n;->setFloatValues([F)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lh4/n;->f:Lh4/k;

    .line 5
    .line 6
    check-cast p1, Lh4/e;

    .line 7
    .line 8
    iput-object p1, p0, Lh4/l;->q:Lh4/e;

    .line 9
    .line 10
    return-void
.end method
