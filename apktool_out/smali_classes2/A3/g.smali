.class public final LA3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:LA3/k;


# direct methods
.method public constructor <init>(LA3/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA3/g;->b:LA3/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, LA3/g;->b:LA3/k;

    .line 2
    .line 3
    iget-object v1, v0, LA3/k;->u:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LA3/k;->u:[I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    iget-object v4, v0, LA3/k;->r:Lx3/A;

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Lx3/A;->setBehindStatusBar(Z)V

    .line 22
    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, LA3/k;->isTopInsetScrimEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v3

    .line 35
    :goto_1
    invoke-virtual {v0, v1}, Lx3/F;->setDrawTopInsetForeground(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, LA3/k;->u:[I

    .line 39
    .line 40
    aget v1, v1, v3

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v4, v1

    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v1, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    :goto_2
    move v1, v2

    .line 55
    :goto_3
    invoke-virtual {v0, v1}, Lx3/F;->setDrawLeftInsetForeground(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lx3/f;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_9

    .line 67
    .line 68
    invoke-static {v1}, Lx3/V;->getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    sub-int/2addr v5, v6

    .line 81
    iget-object v6, v0, LA3/k;->u:[I

    .line 82
    .line 83
    aget v6, v6, v2

    .line 84
    .line 85
    if-ne v5, v6, :cond_4

    .line 86
    .line 87
    move v5, v2

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move v5, v3

    .line 90
    :goto_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    move v1, v2

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    move v1, v3

    .line 107
    :goto_5
    if-eqz v5, :cond_6

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0}, LA3/k;->isBottomInsetScrimEnabled()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    move v1, v2

    .line 118
    goto :goto_6

    .line 119
    :cond_6
    move v1, v3

    .line 120
    :goto_6
    invoke-virtual {v0, v1}, Lx3/F;->setDrawBottomInsetForeground(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v5, v0, LA3/k;->u:[I

    .line 128
    .line 129
    aget v5, v5, v3

    .line 130
    .line 131
    if-eq v1, v5, :cond_8

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    sub-int/2addr v1, v4

    .line 142
    iget-object v4, v0, LA3/k;->u:[I

    .line 143
    .line 144
    aget v4, v4, v3

    .line 145
    .line 146
    if-ne v1, v4, :cond_7

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_7
    move v2, v3

    .line 150
    :cond_8
    :goto_7
    invoke-virtual {v0, v2}, Lx3/F;->setDrawRightInsetForeground(Z)V

    .line 151
    .line 152
    .line 153
    :cond_9
    return-void
.end method
