.class public final Landroidx/leanback/widget/K0;
.super Landroidx/leanback/widget/C0;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Paint;

.field public c:Z

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/R$layout;->lb_row_header:I

    invoke-direct {p0, v0}, Landroidx/leanback/widget/K0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/K0;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/C0;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/K0;->b:Landroid/graphics/Paint;

    .line 5
    iput p1, p0, Landroidx/leanback/widget/K0;->a:I

    .line 6
    iput-boolean p2, p0, Landroidx/leanback/widget/K0;->d:Z

    return-void
.end method

.method public static getFontDescent(Landroid/widget/TextView;Landroid/graphics/Paint;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method


# virtual methods
.method public getSpaceUnderBaseline(Landroidx/leanback/widget/J0;)I
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 8
    .line 9
    instance-of v1, p1, Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/leanback/widget/K0;->b:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-static {p1, v1}, Landroidx/leanback/widget/K0;->getFontDescent(Landroid/widget/TextView;Landroid/graphics/Paint;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-int p1, p1

    .line 22
    add-int/2addr v0, p1

    .line 23
    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move-object p2, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p2, Landroidx/leanback/widget/H0;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/leanback/widget/H0;->getHeaderItem()Landroidx/leanback/widget/P;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    move-object v1, p1

    .line 13
    check-cast v1, Landroidx/leanback/widget/J0;

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-nez p2, :cond_4

    .line 18
    .line 19
    iget-object p2, v1, Landroidx/leanback/widget/J0;->d:Landroidx/leanback/widget/RowHeaderView;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p2, v1, Landroidx/leanback/widget/J0;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object p2, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-boolean p2, p0, Landroidx/leanback/widget/K0;->c:Z

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void

    .line 48
    :cond_4
    iget-object v0, v1, Landroidx/leanback/widget/J0;->d:Landroidx/leanback/widget/RowHeaderView;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/leanback/widget/P;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    const/4 v0, 0x0

    .line 60
    iget-object v1, v1, Landroidx/leanback/widget/J0;->e:Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v1, :cond_7

    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/leanback/widget/P;->getDescription()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {p2}, Landroidx/leanback/widget/P;->getDescription()Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :cond_7
    iget-object v1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroidx/leanback/widget/P;->getContentDescription()Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroidx/leanback/widget/K0;->a:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Landroidx/leanback/widget/J0;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroidx/leanback/widget/J0;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Landroidx/leanback/widget/K0;->d:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/K0;->setSelectLevel(Landroidx/leanback/widget/J0;F)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method

.method public onSelectLevelChanged(Landroidx/leanback/widget/J0;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/K0;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 6
    .line 7
    iget v1, p1, Landroidx/leanback/widget/J0;->c:F

    .line 8
    .line 9
    iget p1, p1, Landroidx/leanback/widget/J0;->b:F

    .line 10
    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    sub-float/2addr v2, v1

    .line 14
    mul-float/2addr v2, p1

    .line 15
    add-float/2addr v2, v1

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/A0;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/leanback/widget/J0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/J0;->d:Landroidx/leanback/widget/RowHeaderView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/J0;->e:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-boolean v0, p0, Landroidx/leanback/widget/K0;->d:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/K0;->setSelectLevel(Landroidx/leanback/widget/J0;F)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public setNullItemVisibilityGone(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/K0;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectLevel(Landroidx/leanback/widget/J0;F)V
    .locals 0

    .line 1
    iput p2, p1, Landroidx/leanback/widget/J0;->b:F

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/K0;->onSelectLevelChanged(Landroidx/leanback/widget/J0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
