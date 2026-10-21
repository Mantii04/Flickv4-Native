.class public final Lc1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ls0/u;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc1/p;->b:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lc1/p;->a:Z

    .line 5
    .line 6
    return-void
.end method

.method public isISlice()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc1/p;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lc1/p;->e:I

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public setAll(Ls0/u;IIIIZZZZIIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/p;->c:Ls0/u;

    .line 2
    .line 3
    iput p2, p0, Lc1/p;->d:I

    .line 4
    .line 5
    iput p3, p0, Lc1/p;->e:I

    .line 6
    .line 7
    iput p4, p0, Lc1/p;->f:I

    .line 8
    .line 9
    iput p5, p0, Lc1/p;->g:I

    .line 10
    .line 11
    iput-boolean p6, p0, Lc1/p;->h:Z

    .line 12
    .line 13
    iput-boolean p7, p0, Lc1/p;->i:Z

    .line 14
    .line 15
    iput-boolean p8, p0, Lc1/p;->j:Z

    .line 16
    .line 17
    iput-boolean p9, p0, Lc1/p;->k:Z

    .line 18
    .line 19
    iput p10, p0, Lc1/p;->l:I

    .line 20
    .line 21
    iput p11, p0, Lc1/p;->m:I

    .line 22
    .line 23
    iput p12, p0, Lc1/p;->n:I

    .line 24
    .line 25
    iput p13, p0, Lc1/p;->o:I

    .line 26
    .line 27
    iput p14, p0, Lc1/p;->p:I

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lc1/p;->a:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lc1/p;->b:Z

    .line 33
    .line 34
    return-void
.end method

.method public setSliceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/p;->e:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lc1/p;->b:Z

    .line 5
    .line 6
    return-void
.end method
