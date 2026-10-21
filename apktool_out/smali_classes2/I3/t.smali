.class public abstract LI3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String;

.field public static final v:Lh0/b;

.field public static final w:Landroid/view/animation/LinearInterpolator;

.field public static final x:Lh0/c;

.field public static final y:Landroid/os/Handler;

.field public static final z:[I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/animation/TimeInterpolator;

.field public final e:Landroid/animation/TimeInterpolator;

.field public final f:Landroid/animation/TimeInterpolator;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Landroid/content/Context;

.field public final i:LI3/s;

.field public final j:LI3/u;

.field public k:I

.field public final l:LI3/i;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public final t:Landroid/view/accessibility/AccessibilityManager;

.field public final u:LI3/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lg3/a;->b:Lh0/b;

    .line 2
    .line 3
    sput-object v0, LI3/t;->v:Lh0/b;

    .line 4
    .line 5
    sget-object v0, Lg3/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 6
    .line 7
    sput-object v0, LI3/t;->w:Landroid/view/animation/LinearInterpolator;

    .line 8
    .line 9
    sget-object v0, Lg3/a;->d:Lh0/c;

    .line 10
    .line 11
    sput-object v0, LI3/t;->x:Lh0/c;

    .line 12
    .line 13
    sget v0, Lcom/google/android/material/R$attr;->snackbarStyle:I

    .line 14
    .line 15
    filled-new-array {v0}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, LI3/t;->z:[I

    .line 20
    .line 21
    const-class v0, LI3/t;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, LI3/t;->A:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, LI3/h;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, LI3/t;->y:Landroid/os/Handler;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;LI3/u;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LI3/i;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LI3/i;-><init>(LI3/t;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LI3/t;->l:LI3/i;

    .line 10
    .line 11
    new-instance v0, LI3/l;

    .line 12
    .line 13
    invoke-direct {v0, p0}, LI3/l;-><init>(LI3/t;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LI3/t;->u:LI3/l;

    .line 17
    .line 18
    if-eqz p2, :cond_4

    .line 19
    .line 20
    if-eqz p3, :cond_3

    .line 21
    .line 22
    if-eqz p4, :cond_2

    .line 23
    .line 24
    iput-object p2, p0, LI3/t;->g:Landroid/view/ViewGroup;

    .line 25
    .line 26
    iput-object p4, p0, LI3/t;->j:LI3/u;

    .line 27
    .line 28
    iput-object p1, p0, LI3/t;->h:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p1}, Lx3/L;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-virtual {p0}, LI3/t;->getSnackbarBaseLayoutResId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p4, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, LI3/s;

    .line 47
    .line 48
    iput-object p2, p0, LI3/t;->i:LI3/s;

    .line 49
    .line 50
    invoke-static {p2, p0}, LI3/s;->a(LI3/s;LI3/t;)V

    .line 51
    .line 52
    .line 53
    instance-of p4, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 54
    .line 55
    if-eqz p4, :cond_1

    .line 56
    .line 57
    move-object p4, p3

    .line 58
    check-cast p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 59
    .line 60
    invoke-virtual {p2}, LI3/s;->getActionTextColorAlpha()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    .line 66
    cmpl-float v1, v0, v1

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    iget-object v1, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:Landroid/widget/Button;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    sget v2, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 77
    .line 78
    invoke-static {p4, v2}, Lr3/a;->getColor(Landroid/view/View;I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v2, v1, v0}, Lr3/a;->layer(IIF)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget-object v1, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:Landroid/widget/Button;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {p2}, LI3/s;->getMaxInlineActionWidth()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p4, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    const/4 p3, 0x1

    .line 102
    invoke-static {p2, p3}, LM/p0;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {p2, p3}, LM/p0;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 106
    .line 107
    .line 108
    invoke-static {p2, p3}, LM/p0;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 109
    .line 110
    .line 111
    new-instance p3, LI3/j;

    .line 112
    .line 113
    invoke-direct {p3, p0}, LI3/j;-><init>(LI3/t;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p2, p3}, LM/p0;->setOnApplyWindowInsetsListener(Landroid/view/View;LM/L;)V

    .line 117
    .line 118
    .line 119
    new-instance p3, LI3/k;

    .line 120
    .line 121
    invoke-direct {p3, p0}, LI3/k;-><init>(LI3/t;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p2, p3}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    .line 125
    .line 126
    .line 127
    const-string p2, "accessibility"

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 134
    .line 135
    iput-object p2, p0, LI3/t;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 136
    .line 137
    sget p2, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    .line 138
    .line 139
    const/16 p3, 0xfa

    .line 140
    .line 141
    invoke-static {p1, p2, p3}, Lz3/k;->resolveThemeDuration(Landroid/content/Context;II)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    iput p2, p0, LI3/t;->c:I

    .line 146
    .line 147
    sget p2, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    .line 148
    .line 149
    const/16 p3, 0x96

    .line 150
    .line 151
    invoke-static {p1, p2, p3}, Lz3/k;->resolveThemeDuration(Landroid/content/Context;II)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    iput p2, p0, LI3/t;->a:I

    .line 156
    .line 157
    sget p2, Lcom/google/android/material/R$attr;->motionDurationMedium1:I

    .line 158
    .line 159
    const/16 p3, 0x4b

    .line 160
    .line 161
    invoke-static {p1, p2, p3}, Lz3/k;->resolveThemeDuration(Landroid/content/Context;II)I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    iput p2, p0, LI3/t;->b:I

    .line 166
    .line 167
    sget p2, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 168
    .line 169
    sget-object p3, LI3/t;->w:Landroid/view/animation/LinearInterpolator;

    .line 170
    .line 171
    invoke-static {p1, p2, p3}, Lz3/k;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    iput-object p2, p0, LI3/t;->d:Landroid/animation/TimeInterpolator;

    .line 176
    .line 177
    sget p2, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 178
    .line 179
    sget-object p3, LI3/t;->x:Lh0/c;

    .line 180
    .line 181
    invoke-static {p1, p2, p3}, Lz3/k;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    iput-object p2, p0, LI3/t;->f:Landroid/animation/TimeInterpolator;

    .line 186
    .line 187
    sget p2, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 188
    .line 189
    sget-object p3, LI3/t;->v:Lh0/b;

    .line 190
    .line 191
    invoke-static {p1, p2, p3}, Lz3/k;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iput-object p1, p0, LI3/t;->e:Landroid/animation/TimeInterpolator;

    .line 196
    .line 197
    return-void

    .line 198
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 199
    .line 200
    const-string p2, "Transient bottom bar must have non-null callback"

    .line 201
    .line 202
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    const-string p2, "Transient bottom bar must have non-null content"

    .line 209
    .line 210
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    const-string p2, "Transient bottom bar must have non-null parent"

    .line 217
    .line 218
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-static {}, LI3/A;->b()LI3/A;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LI3/t;->u:LI3/l;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, LI3/A;->onDismissed(LI3/y;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, LI3/t;->i:LI3/s;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, LI3/t;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_0
    iget-object v2, p0, LI3/t;->i:LI3/s;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v0, LI3/o;

    .line 27
    .line 28
    invoke-direct {v0, p0}, LI3/o;-><init>(LI3/t;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-static {}, LI3/A;->b()LI3/A;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, LI3/t;->u:LI3/l;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, LI3/A;->onShown(LI3/y;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, LI3/t;->i:LI3/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    sget-object v3, LI3/t;->A:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v0, "Unable to update margins because layout params are not MarginLayoutParams"

    .line 14
    .line 15
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v2, v0, LI3/s;->s:Landroid/graphics/Rect;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string v0, "Unable to update margins because original view margins are not set"

    .line 24
    .line 25
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, LI3/t;->getAnchorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget v2, p0, LI3/t;->p:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget v2, p0, LI3/t;->m:I

    .line 47
    .line 48
    :goto_0
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    .line 50
    iget-object v3, v0, LI3/s;->s:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 53
    .line 54
    add-int/2addr v4, v2

    .line 55
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget v5, p0, LI3/t;->n:I

    .line 58
    .line 59
    add-int/2addr v2, v5

    .line 60
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    iget v6, p0, LI3/t;->o:I

    .line 63
    .line 64
    add-int/2addr v5, v6

    .line 65
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 68
    .line 69
    if-ne v6, v4, :cond_5

    .line 70
    .line 71
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 72
    .line 73
    if-ne v6, v2, :cond_5

    .line 74
    .line 75
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 76
    .line 77
    if-ne v6, v5, :cond_5

    .line 78
    .line 79
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 80
    .line 81
    if-eq v6, v3, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v6, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    :goto_1
    const/4 v6, 0x1

    .line 87
    :goto_2
    if-eqz v6, :cond_6

    .line 88
    .line 89
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 90
    .line 91
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 92
    .line 93
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 94
    .line 95
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 98
    .line 99
    .line 100
    :cond_6
    if-nez v6, :cond_7

    .line 101
    .line 102
    iget v1, p0, LI3/t;->r:I

    .line 103
    .line 104
    iget v2, p0, LI3/t;->q:I

    .line 105
    .line 106
    if-eq v1, v2, :cond_8

    .line 107
    .line 108
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    const/16 v2, 0x1d

    .line 111
    .line 112
    if-lt v1, v2, :cond_8

    .line 113
    .line 114
    iget v1, p0, LI3/t;->q:I

    .line 115
    .line 116
    if-lez v1, :cond_8

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    instance-of v2, v1, Ly/f;

    .line 123
    .line 124
    if-eqz v2, :cond_8

    .line 125
    .line 126
    check-cast v1, Ly/f;

    .line 127
    .line 128
    invoke-virtual {v1}, Ly/f;->getBehavior()Ly/c;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    instance-of v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 133
    .line 134
    if-eqz v1, :cond_8

    .line 135
    .line 136
    iget-object v1, p0, LI3/t;->l:LI3/i;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 142
    .line 143
    .line 144
    :cond_8
    :goto_3
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, LI3/t;->dispatchDismiss(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public dispatchDismiss(I)V
    .locals 2

    .line 1
    invoke-static {}, LI3/A;->b()LI3/A;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LI3/t;->u:LI3/l;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, LI3/A;->dismiss(LI3/y;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, LI3/t;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getSnackbarBaseLayoutResId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LI3/t;->hasSnackbarStyleAttr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    sget v0, Lcom/google/android/material/R$layout;->design_layout_snackbar:I

    .line 11
    .line 12
    return v0
.end method

.method public hasSnackbarStyleAttr()Z
    .locals 4

    .line 1
    iget-object v0, p0, LI3/t;->h:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, LI3/t;->z:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    .line 17
    .line 18
    if-eq v3, v2, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    return v1
.end method

.method public isShownOrQueued()Z
    .locals 2

    .line 1
    invoke-static {}, LI3/A;->b()LI3/A;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LI3/t;->u:LI3/l;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, LI3/A;->isCurrentOrNext(LI3/y;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public setDuration(I)LI3/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LI3/t;"
        }
    .end annotation

    .line 1
    iput p1, p0, LI3/t;->k:I

    .line 2
    .line 3
    return-object p0
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-static {}, LI3/A;->b()LI3/A;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, LI3/t;->getDuration()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, LI3/t;->u:LI3/l;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, LI3/A;->show(ILI3/y;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
