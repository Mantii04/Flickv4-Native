.class public final LM/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LM/o;

.field public final c:LJ0/g;

.field public final d:LJ0/g;

.field public e:Landroid/view/VelocityTracker;

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;LM/o;)V
    .locals 4

    .line 1
    new-instance v0, LJ0/g;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, LJ0/g;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, LJ0/g;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, v2}, LJ0/g;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, p0, LM/n;->g:I

    .line 18
    .line 19
    iput v2, p0, LM/n;->h:I

    .line 20
    .line 21
    iput v2, p0, LM/n;->i:I

    .line 22
    .line 23
    const v2, 0x7fffffff

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    filled-new-array {v2, v3}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, p0, LM/n;->j:[I

    .line 32
    .line 33
    iput-object p1, p0, LM/n;->a:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p2, p0, LM/n;->b:LM/o;

    .line 36
    .line 37
    iput-object v0, p0, LM/n;->c:LJ0/g;

    .line 38
    .line 39
    iput-object v1, p0, LM/n;->d:LJ0/g;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, LM/n;->h:I

    .line 10
    .line 11
    iget-object v3, p0, LM/n;->j:[I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v2, v0, :cond_1

    .line 16
    .line 17
    iget v2, p0, LM/n;->i:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_1

    .line 20
    .line 21
    iget v2, p0, LM/n;->g:I

    .line 22
    .line 23
    if-eq v2, p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v2, p0, LM/n;->c:LJ0/g;

    .line 29
    .line 30
    iget-object v6, p0, LM/n;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-static {v6, v2, v7, p2, v8}, LM/t0;->getScaledMinimumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x0

    .line 52
    aput v7, v3, v8

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-static {v6, v2, v7, p2, v8}, LM/t0;->getScaledMaximumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v6, 0x1

    .line 67
    aput v2, v3, v6

    .line 68
    .line 69
    iput v0, p0, LM/n;->h:I

    .line 70
    .line 71
    iput v1, p0, LM/n;->i:I

    .line 72
    .line 73
    iput p2, p0, LM/n;->g:I

    .line 74
    .line 75
    move v0, v4

    .line 76
    :goto_1
    aget v1, v3, v5

    .line 77
    .line 78
    const v2, 0x7fffffff

    .line 79
    .line 80
    .line 81
    if-ne v1, v2, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, LM/n;->e:Landroid/view/VelocityTracker;

    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, LM/n;->e:Landroid/view/VelocityTracker;

    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    iget-object v1, p0, LM/n;->e:Landroid/view/VelocityTracker;

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, LM/n;->e:Landroid/view/VelocityTracker;

    .line 103
    .line 104
    :cond_3
    iget-object v1, p0, LM/n;->e:Landroid/view/VelocityTracker;

    .line 105
    .line 106
    iget-object v2, p0, LM/n;->d:LJ0/g;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {v1, p1}, LM/W;->addMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 112
    .line 113
    .line 114
    const/16 p1, 0x3e8

    .line 115
    .line 116
    invoke-static {v1, p1}, LM/W;->computeCurrentVelocity(Landroid/view/VelocityTracker;I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1, p2}, LM/W;->getAxisVelocity(Landroid/view/VelocityTracker;I)F

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iget-object p2, p0, LM/n;->b:LM/o;

    .line 124
    .line 125
    check-cast p2, LS/q;

    .line 126
    .line 127
    invoke-virtual {p2}, LS/q;->getScaledScrollFactor()F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    mul-float/2addr v1, p1

    .line 132
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/4 v2, 0x0

    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    iget v0, p0, LM/n;->f:F

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    cmpl-float v0, p1, v0

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    cmpl-float p1, p1, v2

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    :cond_4
    invoke-virtual {p2}, LS/q;->stopDifferentialMotionFling()V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    aget v0, v3, v5

    .line 161
    .line 162
    int-to-float v0, v0

    .line 163
    cmpg-float p1, p1, v0

    .line 164
    .line 165
    if-gez p1, :cond_7

    .line 166
    .line 167
    :cond_6
    return-void

    .line 168
    :cond_7
    aget p1, v3, v4

    .line 169
    .line 170
    neg-int v0, p1

    .line 171
    int-to-float v0, v0

    .line 172
    int-to-float p1, p1

    .line 173
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-virtual {p2, p1}, LS/q;->startDifferentialMotionFling(F)Z

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_8

    .line 186
    .line 187
    move v2, p1

    .line 188
    :cond_8
    iput v2, p0, LM/n;->f:F

    .line 189
    .line 190
    return-void
.end method
