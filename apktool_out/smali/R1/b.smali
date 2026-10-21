.class public final LR1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/afollestad/materialdialogs/internal/MDRootLayout;


# direct methods
.method public constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR1/b;->c:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 5
    .line 6
    iput-object p2, p0, LR1/b;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    iput-boolean p3, p0, LR1/b;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, LR1/b;->c:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    const/4 v5, 0x1

    .line 9
    const/16 v6, 0x8

    .line 10
    .line 11
    if-ge v4, v2, :cond_1

    .line 12
    .line 13
    aget-object v7, v1, v4

    .line 14
    .line 15
    if-eqz v7, :cond_0

    .line 16
    .line 17
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    if-eq v7, v6, :cond_0

    .line 22
    .line 23
    move v1, v5

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v3

    .line 29
    :goto_1
    iget-object v2, p0, LR1/b;->a:Landroid/view/ViewGroup;

    .line 30
    .line 31
    instance-of v4, v2, Landroid/webkit/WebView;

    .line 32
    .line 33
    iget-boolean v7, p0, LR1/b;->b:Z

    .line 34
    .line 35
    if-eqz v4, :cond_5

    .line 36
    .line 37
    check-cast v2, Landroid/webkit/WebView;

    .line 38
    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v4, v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    add-int/2addr v6, v4

    .line 60
    if-lez v6, :cond_2

    .line 61
    .line 62
    move v4, v5

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v4, v3

    .line 65
    :goto_2
    iput-boolean v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 66
    .line 67
    :cond_3
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    add-int/2addr v4, v1

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sub-int/2addr v4, v1

    .line 83
    int-to-float v1, v4

    .line 84
    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    int-to-float v4, v4

    .line 89
    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    mul-float/2addr v2, v4

    .line 94
    cmpg-float v1, v1, v2

    .line 95
    .line 96
    if-gez v1, :cond_4

    .line 97
    .line 98
    move v3, v5

    .line 99
    :cond_4
    iput-boolean v3, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    if-eqz v7, :cond_7

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-lez v4, :cond_7

    .line 109
    .line 110
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    .line 111
    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eq v4, v6, :cond_6

    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    add-int/2addr v6, v4

    .line 129
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-le v6, v4, :cond_6

    .line 138
    .line 139
    move v4, v5

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move v4, v3

    .line 142
    :goto_3
    iput-boolean v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 143
    .line 144
    :cond_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-lez v4, :cond_9

    .line 149
    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    add-int/2addr v4, v1

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    sub-int/2addr v4, v1

    .line 166
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    sub-int/2addr v1, v5

    .line 171
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-ge v4, v1, :cond_8

    .line 180
    .line 181
    move v3, v5

    .line 182
    :cond_8
    iput-boolean v3, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 183
    .line 184
    :cond_9
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 185
    .line 186
    .line 187
    return-void
.end method
