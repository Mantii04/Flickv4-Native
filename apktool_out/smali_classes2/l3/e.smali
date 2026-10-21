.class public final Ll3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/Q;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/e;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    iput-boolean p2, p0, Ll3/e;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;LM/h1;Lx3/S;)LM/h1;
    .locals 11

    .line 1
    invoke-static {}, LM/f1;->systemBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2, v0}, LM/h1;->getInsets(I)LD/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, LM/f1;->mandatorySystemGestures()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2, v1}, LM/h1;->getInsets(I)LD/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, v0, LD/c;->b:I

    .line 18
    .line 19
    iget-object v3, p0, Ll3/e;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 20
    .line 21
    iput v2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 22
    .line 23
    invoke-static {p1}, Lx3/T;->isLayoutRtl(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget-boolean v7, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetBottom()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iput v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 48
    .line 49
    iget v4, p3, Lx3/S;->c:I

    .line 50
    .line 51
    iget v7, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 52
    .line 53
    add-int/2addr v4, v7

    .line 54
    :cond_0
    iget-boolean v7, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Z

    .line 55
    .line 56
    iget v8, v0, LD/c;->a:I

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget v5, p3, Lx3/S;->b:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v5, p3, Lx3/S;->a:I

    .line 66
    .line 67
    :goto_0
    add-int/2addr v5, v8

    .line 68
    :cond_2
    iget-boolean v7, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:Z

    .line 69
    .line 70
    iget v9, v0, LD/c;->c:I

    .line 71
    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    iget p3, p3, Lx3/S;->a:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget p3, p3, Lx3/S;->b:I

    .line 80
    .line 81
    :goto_1
    add-int v6, p3, v9

    .line 82
    .line 83
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .line 89
    iget-boolean v2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Z

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v10, 0x1

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 96
    .line 97
    if-eq v2, v8, :cond_5

    .line 98
    .line 99
    iput v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 100
    .line 101
    move v2, v10

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    move v2, v7

    .line 104
    :goto_2
    iget-boolean v8, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    .line 105
    .line 106
    if-eqz v8, :cond_6

    .line 107
    .line 108
    iget v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 109
    .line 110
    if-eq v8, v9, :cond_6

    .line 111
    .line 112
    iput v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 113
    .line 114
    move v2, v10

    .line 115
    :cond_6
    iget-boolean v8, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    .line 116
    .line 117
    if-eqz v8, :cond_7

    .line 118
    .line 119
    iget v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 120
    .line 121
    iget v0, v0, LD/c;->b:I

    .line 122
    .line 123
    if-eq v8, v0, :cond_7

    .line 124
    .line 125
    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    move v10, v2

    .line 129
    :goto_3
    if-eqz v10, :cond_8

    .line 130
    .line 131
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    invoke-virtual {p1, v5, p3, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 139
    .line 140
    .line 141
    iget-boolean p1, p0, Ll3/e;->a:Z

    .line 142
    .line 143
    if-eqz p1, :cond_9

    .line 144
    .line 145
    iget p3, v1, LD/c;->d:I

    .line 146
    .line 147
    iput p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    .line 148
    .line 149
    :cond_9
    iget-boolean p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    .line 150
    .line 151
    if-nez p3, :cond_b

    .line 152
    .line 153
    if-eqz p1, :cond_a

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_a
    return-object p2

    .line 157
    :cond_b
    :goto_4
    invoke-virtual {v3, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o(Z)V

    .line 158
    .line 159
    .line 160
    return-object p2
.end method
