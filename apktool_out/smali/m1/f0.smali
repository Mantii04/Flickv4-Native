.class public final Lm1/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/R0;


# instance fields
.field public final synthetic a:Lm1/i0;


# direct methods
.method public constructor <init>(Lm1/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/f0;->a:Lm1/i0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/f0;->a:Lm1/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lm1/j0;

    .line 6
    .line 7
    iget-object v1, p0, Lm1/f0;->a:Lm1/i0;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lm1/i0;->getDecoratedBottom(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    .line 15
    add-int/2addr p1, v0

    .line 16
    return p1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lm1/j0;

    .line 6
    .line 7
    iget-object v1, p0, Lm1/f0;->a:Lm1/i0;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lm1/i0;->getDecoratedTop(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    return p1
.end method

.method public getParentEnd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/f0;->a:Lm1/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/i0;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lm1/i0;->getPaddingBottom()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public getParentStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/f0;->a:Lm1/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/i0;->getPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
