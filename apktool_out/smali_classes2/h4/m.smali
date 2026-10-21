.class public final Lh4/m;
.super Lh4/n;
.source "SourceFile"


# instance fields
.field public q:Lh4/g;

.field public r:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh4/n;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lh4/m;->setIntValues([I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh4/m;->q:Lh4/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lh4/g;->getIntValue(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lh4/m;->r:I

    .line 8
    .line 9
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lh4/m;->r:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public clone()Lh4/m;
    .locals 2

    .line 3
    invoke-super {p0}, Lh4/n;->clone()Lh4/n;

    move-result-object v0

    check-cast v0, Lh4/m;

    .line 4
    iget-object v1, v0, Lh4/n;->f:Lh4/k;

    check-cast v1, Lh4/g;

    iput-object v1, v0, Lh4/m;->q:Lh4/g;

    return-object v0
.end method

.method public bridge synthetic clone()Lh4/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh4/m;->clone()Lh4/m;

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
    invoke-virtual {p0}, Lh4/m;->clone()Lh4/m;

    move-result-object v0

    return-object v0
.end method

.method public varargs setIntValues([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh4/n;->setIntValues([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lh4/n;->f:Lh4/k;

    .line 5
    .line 6
    check-cast p1, Lh4/g;

    .line 7
    .line 8
    iput-object p1, p0, Lh4/m;->q:Lh4/g;

    .line 9
    .line 10
    return-void
.end method
