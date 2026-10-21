.class public final LS0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/F;


# instance fields
.field public final b:Lv0/F;

.field public final e:LS0/q;

.field public final f:Landroid/util/SparseArray;

.field public j:Z


# direct methods
.method public constructor <init>(Lv0/F;LS0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS0/t;->b:Lv0/F;

    .line 5
    .line 6
    iput-object p2, p0, LS0/t;->e:LS0/q;

    .line 7
    .line 8
    new-instance p1, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LS0/t;->f:Landroid/util/SparseArray;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 3

    .line 1
    iget-object v0, p0, LS0/t;->b:Lv0/F;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/F;->endTracks()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, LS0/t;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, LS0/t;->f:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v0, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, LS0/u;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, LS0/u;->shouldSuppressParsingErrors(Z)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public seekMap(Lv0/g0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LS0/t;->b:Lv0/F;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public track(II)Lv0/r0;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, LS0/t;->b:Lv0/F;

    .line 3
    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, LS0/t;->j:Z

    .line 8
    .line 9
    invoke-interface {v1, p1, p2}, Lv0/F;->track(II)Lv0/r0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, LS0/t;->f:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, LS0/u;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    new-instance v2, LS0/u;

    .line 26
    .line 27
    invoke-interface {v1, p1, p2}, Lv0/F;->track(II)Lv0/r0;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v1, p0, LS0/t;->e:LS0/q;

    .line 32
    .line 33
    invoke-direct {v2, p2, v1}, LS0/u;-><init>(Lv0/r0;LS0/q;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v2
.end method
