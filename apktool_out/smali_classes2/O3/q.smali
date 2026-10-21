.class public final LO3/q;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final b:Landroid/widget/ProgressBar;

.field public final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1}, LO3/J;->c(Landroid/content/Context;)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    new-instance v0, LO3/p;

    .line 10
    .line 11
    invoke-direct {v0, p1}, LO3/p;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/high16 v1, -0x1000000

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/widget/ProgressBar;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, LO3/q;->b:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v4, -0x2

    .line 34
    const/16 v5, 0x11

    .line 35
    .line 36
    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .line 52
    const/high16 v3, 0x41200000    # 10.0f

    .line 53
    .line 54
    mul-float/2addr v1, v3

    .line 55
    const/high16 v3, 0x3f000000    # 0.5f

    .line 56
    .line 57
    add-float/2addr v1, v3

    .line 58
    float-to-int v1, v1

    .line 59
    new-instance v3, Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v3, p0, LO3/q;->e:Landroid/widget/TextView;

    .line 65
    .line 66
    const v6, 0x1030046

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    const/4 p1, -0x1

    .line 73
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, v0, LO3/p;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    .line 92
    invoke-direct {p1, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LO3/q;->b:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LO3/q;->e:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LO3/q;->b:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LO3/q;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, LO3/q;->b:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LO3/q;->e:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/high16 v4, 0x40000000    # 2.0f

    .line 18
    .line 19
    if-ne v0, v4, :cond_0

    .line 20
    .line 21
    if-ne v1, v4, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    const v5, 0x3fe374bc    # 1.777f

    .line 25
    .line 26
    .line 27
    if-eq v0, v4, :cond_6

    .line 28
    .line 29
    const/high16 v6, -0x80000000

    .line 30
    .line 31
    if-ne v0, v6, :cond_1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    if-eq v1, v4, :cond_5

    .line 37
    .line 38
    if-ne v1, v6, :cond_2

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-ne v0, v6, :cond_4

    .line 44
    .line 45
    if-ne v1, v6, :cond_4

    .line 46
    .line 47
    int-to-float v0, v3

    .line 48
    int-to-float v1, v2

    .line 49
    div-float/2addr v1, v5

    .line 50
    cmpg-float v6, v0, v1

    .line 51
    .line 52
    if-gez v6, :cond_3

    .line 53
    .line 54
    :goto_0
    mul-float/2addr v0, v5

    .line 55
    float-to-int v2, v0

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    float-to-int v3, v1

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/4 v2, 0x0

    .line 60
    move v3, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_5
    :goto_1
    int-to-float v0, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_6
    :goto_2
    int-to-float v0, v2

    .line 65
    div-float/2addr v0, v5

    .line 66
    float-to-int v3, v0

    .line 67
    :goto_3
    invoke-static {v2, p1}, Landroid/view/View;->resolveSize(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-static {v3, p2}, Landroid/view/View;->resolveSize(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
