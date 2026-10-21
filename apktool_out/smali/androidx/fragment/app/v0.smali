.class public abstract Landroidx/fragment/app/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:Ljava/lang/CharSequence;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:Z


# virtual methods
.method public final a(Landroidx/fragment/app/u0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/fragment/app/v0;->b:I

    .line 7
    .line 8
    iput v0, p1, Landroidx/fragment/app/u0;->d:I

    .line 9
    .line 10
    iget v0, p0, Landroidx/fragment/app/v0;->c:I

    .line 11
    .line 12
    iput v0, p1, Landroidx/fragment/app/u0;->e:I

    .line 13
    .line 14
    iget v0, p0, Landroidx/fragment/app/v0;->d:I

    .line 15
    .line 16
    iput v0, p1, Landroidx/fragment/app/u0;->f:I

    .line 17
    .line 18
    iget v0, p0, Landroidx/fragment/app/v0;->e:I

    .line 19
    .line 20
    iput v0, p1, Landroidx/fragment/app/u0;->g:I

    .line 21
    .line 22
    return-void
.end method

.method public add(ILandroidx/fragment/app/C;)Landroidx/fragment/app/v0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/fragment/app/v0;->b(ILandroidx/fragment/app/C;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(ILandroidx/fragment/app/C;Ljava/lang/String;)Landroidx/fragment/app/v0;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/v0;->b(ILandroidx/fragment/app/C;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Landroidx/fragment/app/C;Ljava/lang/String;)Landroidx/fragment/app/v0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/v0;->b(ILandroidx/fragment/app/C;Ljava/lang/String;I)V

    return-object p0
.end method

.method public abstract b(ILandroidx/fragment/app/C;Ljava/lang/String;I)V
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public disallowAddToBackStack()Landroidx/fragment/app/v0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/v0;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "This transaction is already being added to the back stack"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public remove(Landroidx/fragment/app/C;)Landroidx/fragment/app/v0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/u0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/u0;-><init>(ILandroidx/fragment/app/C;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/v0;->a(Landroidx/fragment/app/u0;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public replace(ILandroidx/fragment/app/C;)Landroidx/fragment/app/v0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/v0;->replace(ILandroidx/fragment/app/C;Ljava/lang/String;)Landroidx/fragment/app/v0;

    move-result-object p1

    return-object p1
.end method

.method public replace(ILandroidx/fragment/app/C;Ljava/lang/String;)Landroidx/fragment/app/v0;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/v0;->b(ILandroidx/fragment/app/C;Ljava/lang/String;I)V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReorderingAllowed(Z)Landroidx/fragment/app/v0;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/v0;->o:Z

    .line 2
    .line 3
    return-object p0
.end method
