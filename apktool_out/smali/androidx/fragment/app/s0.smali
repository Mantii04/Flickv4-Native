.class public final Landroidx/fragment/app/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LC/k;

.field public final b:Landroidx/fragment/app/t0;

.field public final c:Landroidx/fragment/app/C;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(LC/k;Landroidx/fragment/app/t0;Landroidx/fragment/app/C;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/s0;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/s0;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    return-void
.end method

.method public constructor <init>(LC/k;Landroidx/fragment/app/t0;Landroidx/fragment/app/C;Landroidx/fragment/app/q0;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroidx/fragment/app/s0;->d:Z

    const/4 v1, -0x1

    .line 36
    iput v1, p0, Landroidx/fragment/app/s0;->e:I

    .line 37
    iput-object p1, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 38
    iput-object p2, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 39
    iput-object p3, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p3, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 41
    iput-object p1, p3, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 42
    iput v0, p3, Landroidx/fragment/app/C;->A:I

    .line 43
    iput-boolean v0, p3, Landroidx/fragment/app/C;->x:Z

    .line 44
    iput-boolean v0, p3, Landroidx/fragment/app/C;->u:Z

    .line 45
    iget-object p2, p3, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 46
    iput-object p1, p3, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 47
    iget-object p1, p4, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 48
    iput-object p1, p3, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    return-void

    .line 49
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(LC/k;Landroidx/fragment/app/t0;Ljava/lang/ClassLoader;Landroidx/fragment/app/O;Landroidx/fragment/app/q0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/s0;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/s0;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 12
    iget-object p1, p5, Landroidx/fragment/app/q0;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p4, p3, p1}, Landroidx/fragment/app/O;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/C;

    move-result-object p1

    .line 14
    iget-object p2, p5, Landroidx/fragment/app/q0;->s:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 16
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/C;->setArguments(Landroid/os/Bundle;)V

    .line 17
    iget-object p2, p5, Landroidx/fragment/app/q0;->e:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 18
    iget-boolean p2, p5, Landroidx/fragment/app/q0;->f:Z

    iput-boolean p2, p1, Landroidx/fragment/app/C;->w:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p1, Landroidx/fragment/app/C;->y:Z

    .line 20
    iget p2, p5, Landroidx/fragment/app/q0;->j:I

    iput p2, p1, Landroidx/fragment/app/C;->F:I

    .line 21
    iget p2, p5, Landroidx/fragment/app/q0;->m:I

    iput p2, p1, Landroidx/fragment/app/C;->G:I

    .line 22
    iget-object p2, p5, Landroidx/fragment/app/q0;->n:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/C;->H:Ljava/lang/String;

    .line 23
    iget-boolean p2, p5, Landroidx/fragment/app/q0;->p:Z

    iput-boolean p2, p1, Landroidx/fragment/app/C;->K:Z

    .line 24
    iget-boolean p2, p5, Landroidx/fragment/app/q0;->q:Z

    iput-boolean p2, p1, Landroidx/fragment/app/C;->v:Z

    .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/q0;->r:Z

    iput-boolean p2, p1, Landroidx/fragment/app/C;->J:Z

    .line 26
    iget-boolean p2, p5, Landroidx/fragment/app/q0;->t:Z

    iput-boolean p2, p1, Landroidx/fragment/app/C;->I:Z

    .line 27
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/q0;->u:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/C;->X:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    iget-object p2, p5, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 29
    iput-object p2, p1, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    goto :goto_0

    .line 30
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 31
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    const/4 p2, 0x2

    .line 32
    invoke-static {p2}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "moveto ACTIVITY_CREATED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, v3, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object v4, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroidx/fragment/app/i0;->F()V

    .line 34
    .line 35
    .line 36
    iput v0, v3, Landroidx/fragment/app/C;->b:I

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    iput-boolean v4, v3, Landroidx/fragment/app/C;->O:Z

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Landroidx/fragment/app/C;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v1, v3, Landroidx/fragment/app/C;->O:Z

    .line 45
    .line 46
    const-string v5, "Fragment "

    .line 47
    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "moveto RESTORE_VIEW_STATE: "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v0, v3, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-object v2, v3, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 79
    .line 80
    iget-object v6, v3, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 81
    .line 82
    if-eqz v6, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v6}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v3, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 88
    .line 89
    :cond_2
    iget-object v0, v3, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, v3, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 94
    .line 95
    iget-object v6, v3, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 96
    .line 97
    iget-object v0, v0, Landroidx/fragment/app/F0;->j:Lq1/i;

    .line 98
    .line 99
    invoke-virtual {v0, v6}, Lq1/i;->performRestore(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, v3, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 103
    .line 104
    :cond_3
    iput-boolean v4, v3, Landroidx/fragment/app/C;->O:Z

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Landroidx/fragment/app/C;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    iget-boolean v0, v3, Landroidx/fragment/app/C;->O:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-object v0, v3, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v0, v3, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 118
    .line 119
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroidx/fragment/app/F0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 126
    .line 127
    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 128
    .line 129
    invoke-static {v5, v3, v1}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_5
    :goto_0
    iput-object v1, v3, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 138
    .line 139
    iget-object v0, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 140
    .line 141
    iput-boolean v4, v0, Landroidx/fragment/app/i0;->E:Z

    .line 142
    .line 143
    iput-boolean v4, v0, Landroidx/fragment/app/i0;->F:Z

    .line 144
    .line 145
    iget-object v1, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 146
    .line 147
    iput-boolean v4, v1, Landroidx/fragment/app/n0;->i:Z

    .line 148
    .line 149
    const/4 v1, 0x4

    .line 150
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->t(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 154
    .line 155
    invoke-virtual {v0, v4}, LC/k;->b(Z)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_6
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 160
    .line 161
    const-string v1, " did not call through to super.onActivityCreated()"

    .line 162
    .line 163
    invoke-static {v5, v3, v1}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    add-int/lit8 v5, v4, -0x1

    .line 23
    .line 24
    :goto_0
    if-ltz v5, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Landroidx/fragment/app/C;

    .line 31
    .line 32
    iget-object v7, v6, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-ne v7, v2, :cond_1

    .line 35
    .line 36
    iget-object v6, v6, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/lit8 v3, v0, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-ge v4, v5, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroidx/fragment/app/C;

    .line 63
    .line 64
    iget-object v6, v5, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 65
    .line 66
    if-ne v6, v2, :cond_3

    .line 67
    .line 68
    iget-object v5, v5, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 69
    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    goto :goto_1

    .line 78
    :cond_4
    :goto_2
    iget-object v0, v1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ATTACHED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, " that does not belong to this FragmentManager!"

    .line 33
    .line 34
    const-string v4, " declared target fragment "

    .line 35
    .line 36
    iget-object v5, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 37
    .line 38
    const-string v6, "Fragment "

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, v5, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 45
    .line 46
    check-cast v5, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/fragment/app/s0;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v3, v1, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 57
    .line 58
    iget-object v3, v3, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v3, v1, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v2, v1, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 63
    .line 64
    move-object v2, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object v2, v5, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 100
    .line 101
    check-cast v2, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v2, v0

    .line 108
    check-cast v2, Landroidx/fragment/app/s0;

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v1, v1, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v2, v1, v3}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 137
    .line 138
    invoke-virtual {v2}, Landroidx/fragment/app/s0;->k()V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->getHost()Landroidx/fragment/app/P;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, v1, Landroidx/fragment/app/C;->C:Landroidx/fragment/app/P;

    .line 148
    .line 149
    iget-object v0, v1, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 150
    .line 151
    iget-object v0, v0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 152
    .line 153
    iput-object v0, v1, Landroidx/fragment/app/C;->E:Landroidx/fragment/app/C;

    .line 154
    .line 155
    iget-object v0, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    invoke-virtual {v0, v2}, LC/k;->h(Z)V

    .line 159
    .line 160
    .line 161
    iget-object v3, v1, Landroidx/fragment/app/C;->c0:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_6

    .line 172
    .line 173
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Landroidx/fragment/app/z;

    .line 178
    .line 179
    iget-object v5, v5, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/C;

    .line 180
    .line 181
    iget-object v7, v5, Landroidx/fragment/app/C;->b0:Lq1/i;

    .line 182
    .line 183
    invoke-virtual {v7}, Lq1/i;->performAttach()V

    .line 184
    .line 185
    .line 186
    invoke-static {v5}, Landroidx/lifecycle/SavedStateHandleSupport;->enableSavedStateHandles(Lq1/j;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 191
    .line 192
    .line 193
    iget-object v3, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 194
    .line 195
    iget-object v4, v1, Landroidx/fragment/app/C;->C:Landroidx/fragment/app/P;

    .line 196
    .line 197
    invoke-virtual {v1}, Landroidx/fragment/app/C;->a()Landroidx/fragment/app/L;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v3, v4, v5, v1}, Landroidx/fragment/app/i0;->b(Landroidx/fragment/app/P;Landroidx/fragment/app/L;Landroidx/fragment/app/C;)V

    .line 202
    .line 203
    .line 204
    iput v2, v1, Landroidx/fragment/app/C;->b:I

    .line 205
    .line 206
    iput-boolean v2, v1, Landroidx/fragment/app/C;->O:Z

    .line 207
    .line 208
    iget-object v3, v1, Landroidx/fragment/app/C;->C:Landroidx/fragment/app/P;

    .line 209
    .line 210
    iget-object v3, v3, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Landroidx/fragment/app/C;->onAttach(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    iget-boolean v3, v1, Landroidx/fragment/app/C;->O:Z

    .line 216
    .line 217
    if-eqz v3, :cond_8

    .line 218
    .line 219
    iget-object v3, v1, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 220
    .line 221
    iget-object v4, v3, Landroidx/fragment/app/i0;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 222
    .line 223
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_7

    .line 232
    .line 233
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Landroidx/fragment/app/o0;

    .line 238
    .line 239
    invoke-interface {v5, v3, v1}, Landroidx/fragment/app/o0;->onAttachFragment(Landroidx/fragment/app/i0;Landroidx/fragment/app/C;)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_7
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 244
    .line 245
    iput-boolean v2, v1, Landroidx/fragment/app/i0;->E:Z

    .line 246
    .line 247
    iput-boolean v2, v1, Landroidx/fragment/app/i0;->F:Z

    .line 248
    .line 249
    iget-object v3, v1, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 250
    .line 251
    iput-boolean v2, v3, Landroidx/fragment/app/n0;->i:Z

    .line 252
    .line 253
    invoke-virtual {v1, v2}, Landroidx/fragment/app/i0;->t(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v2}, LC/k;->c(Z)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_8
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 261
    .line 262
    const-string v2, " did not call through to super.onAttach()"

    .line 263
    .line 264
    invoke-static {v6, v1, v2}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0
.end method

.method public final d()I
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/fragment/app/C;->b:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/s0;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/fragment/app/C;->X:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x5

    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x1

    .line 24
    if-eq v2, v8, :cond_3

    .line 25
    .line 26
    if-eq v2, v7, :cond_2

    .line 27
    .line 28
    if-eq v2, v5, :cond_1

    .line 29
    .line 30
    if-eq v2, v6, :cond_4

    .line 31
    .line 32
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v2, 0x0

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/C;->w:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, Landroidx/fragment/app/C;->x:Z

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    iget v1, p0, Landroidx/fragment/app/s0;->e:I

    .line 61
    .line 62
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    iget v2, p0, Landroidx/fragment/app/s0;->e:I

    .line 82
    .line 83
    if-ge v2, v6, :cond_6

    .line 84
    .line 85
    iget v2, v0, Landroidx/fragment/app/C;->b:I

    .line 86
    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_1

    .line 92
    :cond_6
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :cond_7
    :goto_1
    iget-boolean v2, v0, Landroidx/fragment/app/C;->u:Z

    .line 97
    .line 98
    if-nez v2, :cond_8

    .line 99
    .line 100
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :cond_8
    iget-object v2, v0, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 105
    .line 106
    const/4 v9, 0x0

    .line 107
    if-eqz v2, :cond_e

    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-static {v2, v10}, Landroidx/fragment/app/M0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/M0;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Landroidx/fragment/app/M0;->d(Landroidx/fragment/app/C;)Landroidx/fragment/app/L0;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    if-eqz v10, :cond_9

    .line 125
    .line 126
    iget-object v10, v10, Landroidx/fragment/app/L0;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_9
    move-object v10, v9

    .line 130
    :goto_2
    iget-object v2, v2, Landroidx/fragment/app/M0;->c:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-eqz v11, :cond_b

    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    check-cast v11, Landroidx/fragment/app/L0;

    .line 147
    .line 148
    invoke-virtual {v11}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-virtual {v12, v0}, Landroidx/fragment/app/C;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-eqz v12, :cond_a

    .line 157
    .line 158
    iget-boolean v12, v11, Landroidx/fragment/app/L0;->f:Z

    .line 159
    .line 160
    if-nez v12, :cond_a

    .line 161
    .line 162
    move-object v9, v11

    .line 163
    :cond_b
    if-eqz v9, :cond_d

    .line 164
    .line 165
    if-eqz v10, :cond_c

    .line 166
    .line 167
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 168
    .line 169
    if-ne v10, v2, :cond_d

    .line 170
    .line 171
    :cond_c
    iget-object v2, v9, Landroidx/fragment/app/L0;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 172
    .line 173
    move-object v9, v2

    .line 174
    goto :goto_3

    .line 175
    :cond_d
    move-object v9, v10

    .line 176
    :cond_e
    :goto_3
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 177
    .line 178
    if-ne v9, v2, :cond_f

    .line 179
    .line 180
    const/4 v2, 0x6

    .line 181
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    goto :goto_4

    .line 186
    :cond_f
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 187
    .line 188
    if-ne v9, v2, :cond_10

    .line 189
    .line 190
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    goto :goto_4

    .line 195
    :cond_10
    iget-boolean v2, v0, Landroidx/fragment/app/C;->v:Z

    .line 196
    .line 197
    if-eqz v2, :cond_12

    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/fragment/app/C;->f()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_11

    .line 204
    .line 205
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    goto :goto_4

    .line 210
    :cond_11
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    :cond_12
    :goto_4
    iget-boolean v2, v0, Landroidx/fragment/app/C;->R:Z

    .line 215
    .line 216
    if-eqz v2, :cond_13

    .line 217
    .line 218
    iget v2, v0, Landroidx/fragment/app/C;->b:I

    .line 219
    .line 220
    if-ge v2, v3, :cond_13

    .line 221
    .line 222
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    :cond_13
    invoke-static {v7}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_14

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v3, "computeExpectedState() of "

    .line 235
    .line 236
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, " for "

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v2, "FragmentManager"

    .line 255
    .line 256
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    :cond_14
    return v1
.end method

.method public final e()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/C;->V:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, LC/k;->i(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v1, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 41
    .line 42
    iget-object v5, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/fragment/app/i0;->F()V

    .line 45
    .line 46
    .line 47
    iput v3, v1, Landroidx/fragment/app/C;->b:I

    .line 48
    .line 49
    iput-boolean v2, v1, Landroidx/fragment/app/C;->O:Z

    .line 50
    .line 51
    iget-object v5, v1, Landroidx/fragment/app/C;->Y:Landroidx/lifecycle/w;

    .line 52
    .line 53
    new-instance v6, Landroidx/fragment/app/Fragment$6;

    .line 54
    .line 55
    invoke-direct {v6, v1}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/C;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroidx/lifecycle/w;->addObserver(Landroidx/lifecycle/s;)V

    .line 59
    .line 60
    .line 61
    iget-object v5, v1, Landroidx/fragment/app/C;->b0:Lq1/i;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Lq1/i;->performRestore(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroidx/fragment/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v3, v1, Landroidx/fragment/app/C;->V:Z

    .line 70
    .line 71
    iget-boolean v3, v1, Landroidx/fragment/app/C;->O:Z

    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    iget-object v1, v1, Landroidx/fragment/app/C;->Y:Landroidx/lifecycle/w;

    .line 76
    .line 77
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroidx/lifecycle/w;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, LC/k;->d(Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 87
    .line 88
    const-string v2, "Fragment "

    .line 89
    .line 90
    const-string v3, " did not call through to super.onCreate()"

    .line 91
    .line 92
    invoke-static {v2, v1, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    const-string v4, "android:support:fragments"

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object v4, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 113
    .line 114
    invoke-virtual {v4, v0}, Landroidx/fragment/app/i0;->J(Landroid/os/Parcelable;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 118
    .line 119
    iput-boolean v2, v0, Landroidx/fragment/app/i0;->E:Z

    .line 120
    .line 121
    iput-boolean v2, v0, Landroidx/fragment/app/i0;->F:Z

    .line 122
    .line 123
    iget-object v4, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 124
    .line 125
    iput-boolean v2, v4, Landroidx/fragment/app/n0;->i:Z

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Landroidx/fragment/app/i0;->t(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iput v3, v1, Landroidx/fragment/app/C;->b:I

    .line 131
    .line 132
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/C;->w:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "FragmentManager"

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "moveto CREATE_VIEW: "

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/C;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, v0, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget v3, v0, Landroidx/fragment/app/C;->G:I

    .line 46
    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    const/4 v4, -0x1

    .line 50
    if-eq v3, v4, :cond_5

    .line 51
    .line 52
    iget-object v4, v0, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 53
    .line 54
    iget-object v4, v4, Landroidx/fragment/app/i0;->u:Landroidx/fragment/app/L;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Landroidx/fragment/app/L;->onFindViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    iget-boolean v4, v0, Landroidx/fragment/app/C;->y:Z

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v2, v0, Landroidx/fragment/app/C;->G:I

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    const-string v1, "unknown"

    .line 81
    .line 82
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v4, "No view found for id 0x"

    .line 87
    .line 88
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v4, v0, Landroidx/fragment/app/C;->G:I

    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v4, " ("

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ") for fragment "

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v2

    .line 124
    :cond_4
    instance-of v4, v3, Landroidx/fragment/app/FragmentContainerView;

    .line 125
    .line 126
    if-nez v4, :cond_7

    .line 127
    .line 128
    invoke-static {v0, v3}, Lg0/d;->onWrongFragmentContainer(Landroidx/fragment/app/C;Landroid/view/ViewGroup;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v2, "Cannot create fragment "

    .line 135
    .line 136
    const-string v3, " for a container view with no id"

    .line 137
    .line 138
    invoke-static {v2, v0, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v1

    .line 146
    :cond_6
    const/4 v3, 0x0

    .line 147
    :cond_7
    :goto_1
    iput-object v3, v0, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 148
    .line 149
    iget-object v4, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/C;->g(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 155
    .line 156
    const/4 v4, 0x2

    .line 157
    if-eqz v1, :cond_c

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 164
    .line 165
    sget v6, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    .line 166
    .line 167
    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    if-eqz v3, :cond_8

    .line 171
    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->b()V

    .line 173
    .line 174
    .line 175
    :cond_8
    iget-boolean v1, v0, Landroidx/fragment/app/C;->I:Z

    .line 176
    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 180
    .line 181
    const/16 v3, 0x8

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 187
    .line 188
    invoke-static {v1}, LM/p0;->isAttachedToWindow(Landroid/view/View;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_a

    .line 193
    .line 194
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 195
    .line 196
    invoke-static {v1}, LM/p0;->requestApplyInsets(Landroid/view/View;)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 201
    .line 202
    new-instance v3, Landroidx/fragment/app/r0;

    .line 203
    .line 204
    invoke-direct {v3, v1}, Landroidx/fragment/app/r0;-><init>(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 208
    .line 209
    .line 210
    :goto_2
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 211
    .line 212
    iget-object v3, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 213
    .line 214
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/C;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 218
    .line 219
    invoke-virtual {v1, v4}, Landroidx/fragment/app/i0;->t(I)V

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 223
    .line 224
    invoke-virtual {v1, v5}, LC/k;->n(Z)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iget-object v3, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 234
    .line 235
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    invoke-virtual {v0}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    iput v3, v5, Landroidx/fragment/app/B;->l:F

    .line 244
    .line 245
    iget-object v3, v0, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 246
    .line 247
    if-eqz v3, :cond_c

    .line 248
    .line 249
    if-nez v1, :cond_c

    .line 250
    .line 251
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_b

    .line 258
    .line 259
    invoke-virtual {v0}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    iput-object v1, v3, Landroidx/fragment/app/B;->m:Landroid/view/View;

    .line 264
    .line 265
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v5, "requestFocus: Saved focused view "

    .line 274
    .line 275
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v1, " for Fragment "

    .line 282
    .line 283
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    :cond_b
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 297
    .line 298
    const/4 v2, 0x0

    .line 299
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 300
    .line 301
    .line 302
    :cond_c
    iput v4, v0, Landroidx/fragment/app/C;->b:I

    .line 303
    .line 304
    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/C;->v:Z

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/C;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v3

    .line 44
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v5, v1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v6, v4, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 51
    .line 52
    check-cast v6, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroidx/fragment/app/q0;

    .line 59
    .line 60
    :cond_2
    if-nez v0, :cond_7

    .line 61
    .line 62
    iget-object v5, v4, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Landroidx/fragment/app/n0;

    .line 65
    .line 66
    iget-object v6, v5, Landroidx/fragment/app/n0;->d:Ljava/util/HashMap;

    .line 67
    .line 68
    iget-object v7, v1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-boolean v6, v5, Landroidx/fragment/app/n0;->g:Z

    .line 78
    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    iget-boolean v5, v5, Landroidx/fragment/app/n0;->h:Z

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    move v5, v2

    .line 85
    :goto_2
    if-eqz v5, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-boolean v2, v0, Landroidx/fragment/app/C;->K:Z

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    iput-object v0, v1, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 103
    .line 104
    :cond_6
    iput v3, v1, Landroidx/fragment/app/C;->b:I

    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    :goto_3
    iget-object v5, v1, Landroidx/fragment/app/C;->C:Landroidx/fragment/app/P;

    .line 108
    .line 109
    instance-of v6, v5, Landroidx/lifecycle/j0;

    .line 110
    .line 111
    if-eqz v6, :cond_8

    .line 112
    .line 113
    iget-object v2, v4, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Landroidx/fragment/app/n0;

    .line 116
    .line 117
    iget-boolean v2, v2, Landroidx/fragment/app/n0;->h:Z

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_8
    iget-object v5, v5, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 121
    .line 122
    instance-of v6, v5, Landroid/app/Activity;

    .line 123
    .line 124
    if-eqz v6, :cond_9

    .line 125
    .line 126
    check-cast v5, Landroid/app/Activity;

    .line 127
    .line 128
    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    xor-int/2addr v2, v5

    .line 133
    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_a
    if-eqz v2, :cond_b

    .line 137
    .line 138
    :goto_5
    iget-object v0, v4, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Landroidx/fragment/app/n0;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroidx/fragment/app/n0;->c(Landroidx/fragment/app/C;)V

    .line 143
    .line 144
    .line 145
    :cond_b
    iget-object v0, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->k()V

    .line 148
    .line 149
    .line 150
    iget-object v0, v1, Landroidx/fragment/app/C;->Y:Landroidx/lifecycle/w;

    .line 151
    .line 152
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroidx/lifecycle/w;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 155
    .line 156
    .line 157
    iput v3, v1, Landroidx/fragment/app/C;->b:I

    .line 158
    .line 159
    iput-boolean v3, v1, Landroidx/fragment/app/C;->O:Z

    .line 160
    .line 161
    iput-boolean v3, v1, Landroidx/fragment/app/C;->V:Z

    .line 162
    .line 163
    invoke-virtual {v1}, Landroidx/fragment/app/C;->onDestroy()V

    .line 164
    .line 165
    .line 166
    iget-boolean v0, v1, Landroidx/fragment/app/C;->O:Z

    .line 167
    .line 168
    if-eqz v0, :cond_f

    .line 169
    .line 170
    iget-object v0, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 171
    .line 172
    invoke-virtual {v0, v3}, LC/k;->e(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Landroidx/fragment/app/t0;->d()Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_d

    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Landroidx/fragment/app/s0;

    .line 194
    .line 195
    if-eqz v2, :cond_c

    .line 196
    .line 197
    iget-object v3, v1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v2, v2, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 200
    .line 201
    iget-object v5, v2, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_c

    .line 208
    .line 209
    iput-object v1, v2, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    iput-object v3, v2, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_d
    iget-object v0, v1, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 216
    .line 217
    if-eqz v0, :cond_e

    .line 218
    .line 219
    invoke-virtual {v4, v0}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, v1, Landroidx/fragment/app/C;->q:Landroidx/fragment/app/C;

    .line 224
    .line 225
    :cond_e
    invoke-virtual {v4, p0}, Landroidx/fragment/app/t0;->h(Landroidx/fragment/app/s0;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_f
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 230
    .line 231
    const-string v2, "Fragment "

    .line 232
    .line 233
    const-string v3, " did not call through to super.onDestroy()"

    .line 234
    .line 235
    invoke-static {v2, v1, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0
.end method

.method public final h()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATE_VIEW: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v2, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroidx/fragment/app/i0;->t(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, v1, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/F0;->getLifecycle()Landroidx/lifecycle/o;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroidx/lifecycle/o;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v1, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 69
    .line 70
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroidx/fragment/app/F0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iput v2, v1, Landroidx/fragment/app/C;->b:I

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, v1, Landroidx/fragment/app/C;->O:Z

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/fragment/app/C;->onDestroyView()V

    .line 81
    .line 82
    .line 83
    iget-boolean v2, v1, Landroidx/fragment/app/C;->O:Z

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-static {v1}, Ln0/a;->getInstance(Landroidx/lifecycle/t;)Ln0/a;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ln0/a;->markForRedelivery()V

    .line 92
    .line 93
    .line 94
    iput-boolean v0, v1, Landroidx/fragment/app/C;->z:Z

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 97
    .line 98
    invoke-virtual {v2, v0}, LC/k;->o(Z)V

    .line 99
    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    iput-object v2, v1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 103
    .line 104
    iput-object v2, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 105
    .line 106
    iput-object v2, v1, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 107
    .line 108
    iget-object v3, v1, Landroidx/fragment/app/C;->a0:Landroidx/lifecycle/E;

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Landroidx/lifecycle/E;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-boolean v0, v1, Landroidx/fragment/app/C;->x:Z

    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 117
    .line 118
    const-string v2, "Fragment "

    .line 119
    .line 120
    const-string v3, " did not call through to super.onDestroyView()"

    .line 121
    .line 122
    invoke-static {v2, v1, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public final i()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, -0x1

    .line 30
    iput v1, v3, Landroidx/fragment/app/C;->b:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iput-boolean v4, v3, Landroidx/fragment/app/C;->O:Z

    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/fragment/app/C;->onDetach()V

    .line 36
    .line 37
    .line 38
    iget-boolean v5, v3, Landroidx/fragment/app/C;->O:Z

    .line 39
    .line 40
    if-eqz v5, :cond_7

    .line 41
    .line 42
    iget-object v5, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/fragment/app/i0;->isDestroyed()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroidx/fragment/app/i0;->k()V

    .line 53
    .line 54
    .line 55
    new-instance v5, Landroidx/fragment/app/j0;

    .line 56
    .line 57
    invoke-direct {v5}, Landroidx/fragment/app/i0;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v5, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 61
    .line 62
    :cond_1
    iget-object v5, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, LC/k;->f(Z)V

    .line 65
    .line 66
    .line 67
    iput v1, v3, Landroidx/fragment/app/C;->b:I

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    iput-object v1, v3, Landroidx/fragment/app/C;->C:Landroidx/fragment/app/P;

    .line 71
    .line 72
    iput-object v1, v3, Landroidx/fragment/app/C;->E:Landroidx/fragment/app/C;

    .line 73
    .line 74
    iput-object v1, v3, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 75
    .line 76
    iget-boolean v1, v3, Landroidx/fragment/app/C;->v:Z

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/fragment/app/C;->f()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 88
    .line 89
    iget-object v1, v1, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Landroidx/fragment/app/n0;

    .line 92
    .line 93
    iget-object v4, v1, Landroidx/fragment/app/n0;->d:Ljava/util/HashMap;

    .line 94
    .line 95
    iget-object v5, v3, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-boolean v4, v1, Landroidx/fragment/app/n0;->g:Z

    .line 105
    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    iget-boolean v1, v1, Landroidx/fragment/app/n0;->h:Z

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 112
    :goto_1
    if-eqz v1, :cond_6

    .line 113
    .line 114
    :goto_2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v1, "initState called for fragment: "

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/C;->e()V

    .line 138
    .line 139
    .line 140
    :cond_6
    return-void

    .line 141
    :cond_7
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 142
    .line 143
    const-string v1, "Fragment "

    .line 144
    .line 145
    const-string v2, " did not call through to super.onDetach()"

    .line 146
    .line 147
    invoke-static {v1, v3, v2}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/C;->w:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/C;->x:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, Landroidx/fragment/app/C;->z:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "moveto CREATE_VIEW: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "FragmentManager"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/fragment/app/C;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x0

    .line 48
    iget-object v3, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/C;->g(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 62
    .line 63
    sget v3, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    .line 64
    .line 65
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, v0, Landroidx/fragment/app/C;->I:Z

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 73
    .line 74
    const/16 v3, 0x8

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 80
    .line 81
    iget-object v3, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/C;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 87
    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-virtual {v1, v3}, Landroidx/fragment/app/i0;->t(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, LC/k;->n(Z)V

    .line 95
    .line 96
    .line 97
    iput v3, v0, Landroidx/fragment/app/C;->b:I

    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/s0;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "FragmentManager"

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/s0;->d:Z

    .line 39
    .line 40
    move v6, v5

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->d()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    iget v8, v4, Landroidx/fragment/app/C;->b:I

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    if-eq v7, v8, :cond_9

    .line 49
    .line 50
    if-le v7, v8, :cond_4

    .line 51
    .line 52
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    packed-switch v8, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->n()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :pswitch_1
    const/4 v6, 0x6

    .line 68
    iput v6, v4, Landroidx/fragment/app/C;->b:I

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->p()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :pswitch_3
    iget-object v6, v4, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 78
    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    iget-object v6, v4, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/fragment/app/C;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v6, v7}, Landroidx/fragment/app/M0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/M0;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    iget-object v7, v4, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->d(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_2

    .line 111
    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v9, "SpecialEffectsController: Enqueuing add operation for fragment "

    .line 115
    .line 116
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_2
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 130
    .line 131
    invoke-virtual {v6, v7, v8, p0}, Landroidx/fragment/app/M0;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/s0;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    const/4 v6, 0x4

    .line 135
    iput v6, v4, Landroidx/fragment/app/C;->b:I

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->a()V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->j()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->f()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->e()V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->c()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_4
    add-int/lit8 v8, v8, -0x1

    .line 163
    .line 164
    packed-switch v8, :pswitch_data_1

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->l()V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :pswitch_9
    const/4 v6, 0x5

    .line 175
    iput v6, v4, Landroidx/fragment/app/C;->b:I

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->q()V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_b
    invoke-static {v9}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_5

    .line 188
    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v7, "movefrom ACTIVITY_CREATED: "

    .line 195
    .line 196
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_5
    iget-object v6, v4, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 210
    .line 211
    if-eqz v6, :cond_6

    .line 212
    .line 213
    iget-object v6, v4, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 214
    .line 215
    if-nez v6, :cond_6

    .line 216
    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->o()V

    .line 218
    .line 219
    .line 220
    :cond_6
    iget-object v6, v4, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 221
    .line 222
    if-eqz v6, :cond_8

    .line 223
    .line 224
    iget-object v6, v4, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 225
    .line 226
    if-eqz v6, :cond_8

    .line 227
    .line 228
    invoke-virtual {v4}, Landroidx/fragment/app/C;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-static {v6, v7}, Landroidx/fragment/app/M0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/M0;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-static {v2}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eqz v7, :cond_7

    .line 244
    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    .line 248
    .line 249
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    :cond_7
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 263
    .line 264
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 265
    .line 266
    invoke-virtual {v6, v7, v8, p0}, Landroidx/fragment/app/M0;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/s0;)V

    .line 267
    .line 268
    .line 269
    :cond_8
    iput v9, v4, Landroidx/fragment/app/C;->b:I

    .line 270
    .line 271
    goto :goto_1

    .line 272
    :pswitch_c
    iput-boolean v5, v4, Landroidx/fragment/app/C;->x:Z

    .line 273
    .line 274
    iput v2, v4, Landroidx/fragment/app/C;->b:I

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->h()V

    .line 278
    .line 279
    .line 280
    iput v1, v4, Landroidx/fragment/app/C;->b:I

    .line 281
    .line 282
    goto :goto_1

    .line 283
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->g()V

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->i()V

    .line 288
    .line 289
    .line 290
    :goto_1
    move v6, v1

    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_9
    if-nez v6, :cond_c

    .line 294
    .line 295
    const/4 v6, -0x1

    .line 296
    if-ne v8, v6, :cond_c

    .line 297
    .line 298
    iget-boolean v6, v4, Landroidx/fragment/app/C;->v:Z

    .line 299
    .line 300
    if-eqz v6, :cond_c

    .line 301
    .line 302
    invoke-virtual {v4}, Landroidx/fragment/app/C;->f()Z

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-nez v6, :cond_c

    .line 307
    .line 308
    invoke-static {v9}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-eqz v6, :cond_a

    .line 313
    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v7, "Cleaning up state of never attached fragment: "

    .line 320
    .line 321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :cond_a
    iget-object v6, v0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v6, Landroidx/fragment/app/n0;

    .line 337
    .line 338
    invoke-virtual {v6, v4}, Landroidx/fragment/app/n0;->c(Landroidx/fragment/app/C;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, p0}, Landroidx/fragment/app/t0;->h(Landroidx/fragment/app/s0;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v9}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_b

    .line 349
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v6, "initState called for fragment: "

    .line 356
    .line 357
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    :cond_b
    invoke-virtual {v4}, Landroidx/fragment/app/C;->e()V

    .line 371
    .line 372
    .line 373
    :cond_c
    iget-boolean v0, v4, Landroidx/fragment/app/C;->U:Z

    .line 374
    .line 375
    if-eqz v0, :cond_12

    .line 376
    .line 377
    iget-object v0, v4, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 378
    .line 379
    if-eqz v0, :cond_10

    .line 380
    .line 381
    iget-object v0, v4, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 382
    .line 383
    if-eqz v0, :cond_10

    .line 384
    .line 385
    invoke-virtual {v4}, Landroidx/fragment/app/C;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    invoke-static {v0, v6}, Landroidx/fragment/app/M0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/M0;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    iget-boolean v6, v4, Landroidx/fragment/app/C;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    .line 395
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 396
    .line 397
    if-eqz v6, :cond_e

    .line 398
    .line 399
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {v2}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_d

    .line 407
    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    .line 411
    .line 412
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    :cond_d
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 426
    .line 427
    invoke-virtual {v0, v2, v7, p0}, Landroidx/fragment/app/M0;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/s0;)V

    .line 428
    .line 429
    .line 430
    goto :goto_2

    .line 431
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {v2}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_f

    .line 439
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v6, "SpecialEffectsController: Enqueuing show operation for fragment "

    .line 443
    .line 444
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    :cond_f
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 458
    .line 459
    invoke-virtual {v0, v2, v7, p0}, Landroidx/fragment/app/M0;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/s0;)V

    .line 460
    .line 461
    .line 462
    :cond_10
    :goto_2
    iget-object v0, v4, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 463
    .line 464
    if-eqz v0, :cond_11

    .line 465
    .line 466
    iget-boolean v2, v4, Landroidx/fragment/app/C;->u:Z

    .line 467
    .line 468
    if-eqz v2, :cond_11

    .line 469
    .line 470
    invoke-static {v4}, Landroidx/fragment/app/i0;->B(Landroidx/fragment/app/C;)Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_11

    .line 475
    .line 476
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->D:Z

    .line 477
    .line 478
    :cond_11
    iput-boolean v5, v4, Landroidx/fragment/app/C;->U:Z

    .line 479
    .line 480
    iget-boolean v0, v4, Landroidx/fragment/app/C;->I:Z

    .line 481
    .line 482
    invoke-virtual {v4, v0}, Landroidx/fragment/app/C;->onHiddenChanged(Z)V

    .line 483
    .line 484
    .line 485
    iget-object v0, v4, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 486
    .line 487
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    .line 489
    .line 490
    :cond_12
    iput-boolean v5, p0, Landroidx/fragment/app/s0;->d:Z

    .line 491
    .line 492
    return-void

    .line 493
    :goto_3
    iput-boolean v5, p0, Landroidx/fragment/app/s0;->d:Z

    .line 494
    .line 495
    throw v0

    .line 496
    nop

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom RESUMED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-virtual {v0, v2}, Landroidx/fragment/app/i0;->t(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, v1, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 40
    .line 41
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/fragment/app/F0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/C;->Y:Landroidx/lifecycle/w;

    .line 47
    .line 48
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/lifecycle/w;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x6

    .line 54
    iput v0, v1, Landroidx/fragment/app/C;->b:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, v1, Landroidx/fragment/app/C;->O:Z

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/fragment/app/C;->onPause()V

    .line 60
    .line 61
    .line 62
    iget-boolean v2, v1, Landroidx/fragment/app/C;->O:Z

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, LC/k;->g(Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 73
    .line 74
    const-string v2, "Fragment "

    .line 75
    .line 76
    const-string v3, " did not call through to super.onPause()"

    .line 77
    .line 78
    invoke-static {v2, v1, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v1, "android:view_state"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object p1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "android:view_registry_state"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v0, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object p1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v1, "android:target_state"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, v0, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 46
    .line 47
    const-string v1, "android:target_req_state"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, v0, Landroidx/fragment/app/C;->s:I

    .line 55
    .line 56
    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/C;->m:Ljava/lang/Boolean;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput-boolean p1, v0, Landroidx/fragment/app/C;->S:Z

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-object p1, v0, Landroidx/fragment/app/C;->m:Ljava/lang/Boolean;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, v0, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 72
    .line 73
    const-string v2, "android:user_visible_hint"

    .line 74
    .line 75
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput-boolean p1, v0, Landroidx/fragment/app/C;->S:Z

    .line 80
    .line 81
    :goto_0
    iget-boolean p1, v0, Landroidx/fragment/app/C;->S:Z

    .line 82
    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    iput-boolean v1, v0, Landroidx/fragment/app/C;->R:Z

    .line 86
    .line 87
    :cond_3
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "FragmentManager"

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto RESUMED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v0, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/B;->m:Landroid/view/View;

    .line 37
    .line 38
    :goto_0
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object v4, v2, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 41
    .line 42
    if-ne v0, v4, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :goto_1
    if-eqz v4, :cond_5

    .line 50
    .line 51
    iget-object v5, v2, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 52
    .line 53
    if-ne v4, v5, :cond_4

    .line 54
    .line 55
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x2

    .line 60
    invoke-static {v5}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "requestFocus: Restoring focused view "

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " "

    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    const-string v0, "succeeded"

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const-string v0, "failed"

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " on Fragment "

    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " resulting in focused view "

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    :goto_4
    invoke-virtual {v2}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v3, v0, Landroidx/fragment/app/B;->m:Landroid/view/View;

    .line 131
    .line 132
    iget-object v0, v2, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->F()V

    .line 135
    .line 136
    .line 137
    iget-object v0, v2, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x7

    .line 144
    iput v0, v2, Landroidx/fragment/app/C;->b:I

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    iput-boolean v1, v2, Landroidx/fragment/app/C;->O:Z

    .line 148
    .line 149
    invoke-virtual {v2}, Landroidx/fragment/app/C;->onResume()V

    .line 150
    .line 151
    .line 152
    iget-boolean v4, v2, Landroidx/fragment/app/C;->O:Z

    .line 153
    .line 154
    if-eqz v4, :cond_7

    .line 155
    .line 156
    iget-object v4, v2, Landroidx/fragment/app/C;->Y:Landroidx/lifecycle/w;

    .line 157
    .line 158
    sget-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Landroidx/lifecycle/w;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v2, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    iget-object v4, v2, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 168
    .line 169
    invoke-virtual {v4, v5}, Landroidx/fragment/app/F0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iget-object v4, v2, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 173
    .line 174
    iput-boolean v1, v4, Landroidx/fragment/app/i0;->E:Z

    .line 175
    .line 176
    iput-boolean v1, v4, Landroidx/fragment/app/i0;->F:Z

    .line 177
    .line 178
    iget-object v5, v4, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 179
    .line 180
    iput-boolean v1, v5, Landroidx/fragment/app/n0;->i:Z

    .line 181
    .line 182
    invoke-virtual {v4, v0}, Landroidx/fragment/app/i0;->t(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, LC/k;->j(Z)V

    .line 188
    .line 189
    .line 190
    iput-object v3, v2, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 191
    .line 192
    iput-object v3, v2, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 193
    .line 194
    iput-object v3, v2, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 195
    .line 196
    return-void

    .line 197
    :cond_7
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 198
    .line 199
    const-string v1, "Fragment "

    .line 200
    .line 201
    const-string v3, " did not call through to super.onResume()"

    .line 202
    .line 203
    invoke-static {v1, v2, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x2

    .line 9
    invoke-static {v1}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Saving view state for fragment "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " with view "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "FragmentManager"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_2

    .line 59
    .line 60
    iput-object v1, v0, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 61
    .line 62
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 68
    .line 69
    iget-object v2, v2, Landroidx/fragment/app/F0;->j:Lq1/i;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Lq1/i;->performSave(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    iput-object v1, v0, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->F()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v2}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    iput v0, v1, Landroidx/fragment/app/C;->b:I

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, v1, Landroidx/fragment/app/C;->O:Z

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/C;->onStart()V

    .line 47
    .line 48
    .line 49
    iget-boolean v3, v1, Landroidx/fragment/app/C;->O:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/fragment/app/C;->Y:Landroidx/lifecycle/w;

    .line 54
    .line 55
    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroidx/lifecycle/w;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v3, v1, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroidx/fragment/app/F0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 70
    .line 71
    iput-boolean v2, v1, Landroidx/fragment/app/i0;->E:Z

    .line 72
    .line 73
    iput-boolean v2, v1, Landroidx/fragment/app/i0;->F:Z

    .line 74
    .line 75
    iget-object v3, v1, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 76
    .line 77
    iput-boolean v2, v3, Landroidx/fragment/app/n0;->i:Z

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroidx/fragment/app/i0;->t(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, LC/k;->l(Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 89
    .line 90
    const-string v2, "Fragment "

    .line 91
    .line 92
    const-string v3, " did not call through to super.onStart()"

    .line 93
    .line 94
    invoke-static {v2, v1, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method public final q()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v0, Landroidx/fragment/app/i0;->F:Z

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 35
    .line 36
    iput-boolean v2, v3, Landroidx/fragment/app/n0;->i:Z

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-virtual {v0, v2}, Landroidx/fragment/app/i0;->t(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v1, Landroidx/fragment/app/C;->Z:Landroidx/fragment/app/F0;

    .line 47
    .line 48
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroidx/fragment/app/F0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/C;->Y:Landroidx/lifecycle/w;

    .line 54
    .line 55
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/lifecycle/w;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 58
    .line 59
    .line 60
    iput v2, v1, Landroidx/fragment/app/C;->b:I

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, v1, Landroidx/fragment/app/C;->O:Z

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/fragment/app/C;->onStop()V

    .line 66
    .line 67
    .line 68
    iget-boolean v2, v1, Landroidx/fragment/app/C;->O:Z

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/fragment/app/s0;->a:LC/k;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, LC/k;->m(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 79
    .line 80
    const-string v2, "Fragment "

    .line 81
    .line 82
    const-string v3, " did not call through to super.onStop()"

    .line 83
    .line 84
    invoke-static {v2, v1, v3}, LA/i;->j(Ljava/lang/String;Landroidx/fragment/app/C;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method
