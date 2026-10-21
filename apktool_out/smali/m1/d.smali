.class public final Lm1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm1/T;

.field public final b:Lm1/c;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lm1/T;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lm1/d;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lm1/d;->a:Lm1/T;

    .line 8
    .line 9
    new-instance p1, Lm1/c;

    .line 10
    .line 11
    invoke-direct {p1}, Lm1/c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lm1/d;->b:Lm1/c;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lm1/d;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/T;

    .line 2
    .line 3
    if-gez p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lm1/T;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p3}, Lm1/d;->e(I)I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    :goto_0
    iget-object v1, p0, Lm1/d;->b:Lm1/c;

    .line 15
    .line 16
    invoke-virtual {v1, p3, p2}, Lm1/c;->e(IZ)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lm1/d;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lm1/T;->onEnteredHiddenState(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0, p1, p3}, Lm1/T;->addView(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/T;

    .line 2
    .line 3
    if-gez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lm1/T;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lm1/d;->e(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :goto_0
    iget-object v1, p0, Lm1/d;->b:Lm1/c;

    .line 15
    .line 16
    invoke-virtual {v1, p2, p4}, Lm1/c;->e(IZ)V

    .line 17
    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    iget-object p4, p0, Lm1/d;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lm1/T;->onEnteredHiddenState(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lm1/T;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final c(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lm1/d;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lm1/d;->a:Lm1/T;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lm1/T;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/T;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lm1/d;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final e(I)I
    .locals 4

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lm1/d;->a:Lm1/T;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm1/T;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    move v1, p1

    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lm1/d;->b:Lm1/c;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lm1/c;->b(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sub-int v3, v1, v3

    .line 20
    .line 21
    sub-int v3, p1, v3

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    :goto_1
    invoke-virtual {v2, v1}, Lm1/c;->d(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    add-int/2addr v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    :goto_2
    const/4 p1, -0x1

    .line 38
    return p1
.end method

.method public final f(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/T;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm1/T;->indexOfChild(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lm1/d;->b:Lm1/c;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lm1/c;->d(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    :goto_0
    return v0

    .line 20
    :cond_1
    invoke-virtual {v1, p1}, Lm1/c;->b(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sub-int/2addr p1, v0

    .line 25
    return p1
.end method

.method public final g(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/d;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lm1/d;->a:Lm1/T;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lm1/T;->onLeftHiddenState(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm1/d;->b:Lm1/c;

    .line 7
    .line 8
    invoke-virtual {v1}, Lm1/c;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", hidden list:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lm1/d;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
