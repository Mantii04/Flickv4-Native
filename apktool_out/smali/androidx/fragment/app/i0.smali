.class public abstract Landroidx/fragment/app/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroidx/activity/result/d;

.field public B:Landroidx/activity/result/d;

.field public C:Ljava/util/ArrayDeque;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Landroidx/fragment/app/n0;

.field public final M:Landroidx/fragment/app/Z;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/t0;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/S;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Landroidx/fragment/app/V;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:LC/k;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Landroidx/fragment/app/T;

.field public final o:Landroidx/fragment/app/T;

.field public final p:Landroidx/fragment/app/T;

.field public final q:Landroidx/fragment/app/T;

.field public final r:Landroidx/fragment/app/W;

.field public s:I

.field public t:Landroidx/fragment/app/P;

.field public u:Landroidx/fragment/app/L;

.field public v:Landroidx/fragment/app/C;

.field public w:Landroidx/fragment/app/C;

.field public final x:Landroidx/fragment/app/X;

.field public final y:Landroidx/fragment/app/Y;

.field public z:Landroidx/activity/result/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/t0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 18
    .line 19
    new-instance v0, Landroidx/fragment/app/S;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/fragment/app/S;-><init>(Landroidx/fragment/app/i0;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/fragment/app/i0;->f:Landroidx/fragment/app/S;

    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/V;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroidx/fragment/app/V;-><init>(Landroidx/fragment/app/i0;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/V;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/fragment/app/i0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroidx/fragment/app/i0;->j:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Landroidx/fragment/app/i0;->k:Ljava/util/Map;

    .line 61
    .line 62
    new-instance v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    new-instance v0, LC/k;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v1, v0, LC/k;->a:Ljava/lang/Object;

    .line 81
    .line 82
    iput-object p0, v0, LC/k;->b:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object v0, p0, Landroidx/fragment/app/i0;->l:LC/k;

    .line 85
    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Landroidx/fragment/app/i0;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    .line 93
    new-instance v0, Landroidx/fragment/app/T;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/T;-><init>(Landroidx/fragment/app/i0;I)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Landroidx/fragment/app/i0;->n:Landroidx/fragment/app/T;

    .line 100
    .line 101
    new-instance v0, Landroidx/fragment/app/T;

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/T;-><init>(Landroidx/fragment/app/i0;I)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Landroidx/fragment/app/i0;->o:Landroidx/fragment/app/T;

    .line 108
    .line 109
    new-instance v0, Landroidx/fragment/app/T;

    .line 110
    .line 111
    const/4 v1, 0x2

    .line 112
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/T;-><init>(Landroidx/fragment/app/i0;I)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/T;

    .line 116
    .line 117
    new-instance v0, Landroidx/fragment/app/T;

    .line 118
    .line 119
    const/4 v1, 0x3

    .line 120
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/T;-><init>(Landroidx/fragment/app/i0;I)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Landroidx/fragment/app/i0;->q:Landroidx/fragment/app/T;

    .line 124
    .line 125
    new-instance v0, Landroidx/fragment/app/W;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Landroidx/fragment/app/W;-><init>(Landroidx/fragment/app/i0;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Landroidx/fragment/app/i0;->r:Landroidx/fragment/app/W;

    .line 131
    .line 132
    const/4 v0, -0x1

    .line 133
    iput v0, p0, Landroidx/fragment/app/i0;->s:I

    .line 134
    .line 135
    new-instance v0, Landroidx/fragment/app/X;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Landroidx/fragment/app/X;-><init>(Landroidx/fragment/app/i0;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/X;

    .line 141
    .line 142
    new-instance v0, Landroidx/fragment/app/Y;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/Y;

    .line 148
    .line 149
    new-instance v0, Ljava/util/ArrayDeque;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Landroidx/fragment/app/i0;->C:Ljava/util/ArrayDeque;

    .line 155
    .line 156
    new-instance v0, Landroidx/fragment/app/Z;

    .line 157
    .line 158
    invoke-direct {v0, p0}, Landroidx/fragment/app/Z;-><init>(Landroidx/fragment/app/i0;)V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Landroidx/fragment/app/i0;->M:Landroidx/fragment/app/Z;

    .line 162
    .line 163
    return-void
.end method

.method public static B(Landroidx/fragment/app/C;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/C;->M:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/C;->N:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/t0;->e()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/fragment/app/C;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-static {v2}, Landroidx/fragment/app/i0;->B(Landroidx/fragment/app/C;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_2
    if-eqz v1, :cond_1

    .line 42
    .line 43
    :cond_3
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_4
    return v0
.end method

.method public static D(Landroidx/fragment/app/C;)Z
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->getPrimaryNavigationFragment()Landroidx/fragment/app/C;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/C;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, v0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 17
    .line 18
    invoke-static {p0}, Landroidx/fragment/app/i0;->D(Landroidx/fragment/app/C;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static Q(Landroidx/fragment/app/C;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "show: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/C;->I:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/C;->I:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/fragment/app/C;->U:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/C;->U:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public static isLoggingEnabled(I)Z
    .locals 1

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method


# virtual methods
.method public final A(Landroidx/fragment/app/C;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "hide: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/C;->I:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Landroidx/fragment/app/C;->I:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/C;->U:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Landroidx/fragment/app/C;->U:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->P(Landroidx/fragment/app/C;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/C;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/C;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->C()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final E(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, Landroidx/fragment/app/i0;->s:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_2
    iput p1, p0, Landroidx/fragment/app/i0;->s:I

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 28
    .line 29
    iget-object p2, p1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 42
    .line 43
    check-cast v1, Ljava/util/HashMap;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/fragment/app/C;

    .line 52
    .line 53
    iget-object v0, v0, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroidx/fragment/app/s0;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/fragment/app/s0;->k()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/fragment/app/s0;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/fragment/app/s0;->k()V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 93
    .line 94
    iget-boolean v2, v1, Landroidx/fragment/app/C;->v:Z

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/fragment/app/C;->f()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroidx/fragment/app/t0;->h(Landroidx/fragment/app/s0;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/t0;->d()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_9

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Landroidx/fragment/app/s0;

    .line 127
    .line 128
    iget-object v0, p2, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 129
    .line 130
    iget-boolean v1, v0, Landroidx/fragment/app/C;->R:Z

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    iget-boolean v1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 135
    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    const/4 p2, 0x1

    .line 139
    iput-boolean p2, p0, Landroidx/fragment/app/i0;->H:Z

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    const/4 v1, 0x0

    .line 143
    iput-boolean v1, v0, Landroidx/fragment/app/C;->R:Z

    .line 144
    .line 145
    invoke-virtual {p2}, Landroidx/fragment/app/s0;->k()V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_9
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->D:Z

    .line 150
    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 154
    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    iget p2, p0, Landroidx/fragment/app/i0;->s:I

    .line 158
    .line 159
    const/4 v0, 0x7

    .line 160
    if-ne p2, v0, :cond_a

    .line 161
    .line 162
    invoke-virtual {p1}, Landroidx/fragment/app/P;->onSupportInvalidateOptionsMenu()V

    .line 163
    .line 164
    .line 165
    const/4 p1, 0x0

    .line 166
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->D:Z

    .line 167
    .line 168
    :cond_a
    :goto_4
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->E:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->F:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 12
    .line 13
    iput-boolean v0, v1, Landroidx/fragment/app/n0;->i:Z

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/fragment/app/C;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->F()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public final G(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p4, v1

    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_9

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_1
    if-gez p3, :cond_3

    .line 22
    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    move v3, v1

    .line 26
    goto :goto_4

    .line 27
    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    add-int/lit8 v3, p3, -0x1

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v2, v0

    .line 43
    :goto_1
    if-ltz v2, :cond_5

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroidx/fragment/app/a;

    .line 52
    .line 53
    if-ltz p3, :cond_4

    .line 54
    .line 55
    iget v4, v4, Landroidx/fragment/app/a;->r:I

    .line 56
    .line 57
    if-ne p3, v4, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    :goto_2
    if-gez v2, :cond_6

    .line 64
    .line 65
    move v3, v2

    .line 66
    goto :goto_4

    .line 67
    :cond_6
    if-eqz p4, :cond_7

    .line 68
    .line 69
    move v3, v2

    .line 70
    :goto_3
    if-lez v3, :cond_9

    .line 71
    .line 72
    iget-object p4, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 73
    .line 74
    add-int/lit8 v2, v3, -0x1

    .line 75
    .line 76
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    check-cast p4, Landroidx/fragment/app/a;

    .line 81
    .line 82
    if-ltz p3, :cond_9

    .line 83
    .line 84
    iget p4, p4, Landroidx/fragment/app/a;->r:I

    .line 85
    .line 86
    if-ne p3, p4, :cond_9

    .line 87
    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    sub-int/2addr p3, v0

    .line 98
    if-ne v2, p3, :cond_8

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 102
    .line 103
    :cond_9
    :goto_4
    if-gez v3, :cond_a

    .line 104
    .line 105
    return v1

    .line 106
    :cond_a
    iget-object p3, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    sub-int/2addr p3, v0

    .line 113
    :goto_5
    if-lt p3, v3, :cond_b

    .line 114
    .line 115
    iget-object p4, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    check-cast p4, Landroidx/fragment/app/a;

    .line 122
    .line 123
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 p3, p3, -0x1

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_b
    return v0
.end method

.method public final H(Landroidx/fragment/app/C;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "remove: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " nesting="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p1, Landroidx/fragment/app/C;->A:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "FragmentManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/C;->f()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-boolean v1, p1, Landroidx/fragment/app/C;->J:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p1, Landroidx/fragment/app/C;->u:Z

    .line 66
    .line 67
    invoke-static {p1}, Landroidx/fragment/app/i0;->B(Landroidx/fragment/app/C;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x1

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->D:Z

    .line 75
    .line 76
    :cond_3
    iput-boolean v1, p1, Landroidx/fragment/app/C;->v:Z

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->P(Landroidx/fragment/app/C;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method

.method public final I(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/a;

    .line 31
    .line 32
    iget-boolean v3, v3, Landroidx/fragment/app/v0;->o:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/i0;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/a;

    .line 74
    .line 75
    iget-boolean v3, v3, Landroidx/fragment/app/v0;->o:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/i0;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/i0;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_2
    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final J(Landroid/os/Parcelable;)V
    .locals 14

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "result_"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x7

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v3, p0, Landroidx/fragment/app/i0;->k:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const-string v3, "state"

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    const-string v4, "fragment_"

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v4, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 101
    .line 102
    iget-object v4, v4, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Landroidx/fragment/app/q0;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 122
    .line 123
    iget-object v2, v1, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 124
    .line 125
    check-cast v2, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Landroidx/fragment/app/q0;

    .line 145
    .line 146
    iget-object v5, v4, Landroidx/fragment/app/q0;->e:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroidx/fragment/app/l0;

    .line 157
    .line 158
    if-nez p1, :cond_5

    .line 159
    .line 160
    return-void

    .line 161
    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 162
    .line 163
    check-cast v0, Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    .line 167
    .line 168
    iget-object v2, p1, Landroidx/fragment/app/l0;->b:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    iget-object v4, p0, Landroidx/fragment/app/i0;->l:LC/k;

    .line 179
    .line 180
    const-string v5, "): "

    .line 181
    .line 182
    const/4 v6, 0x2

    .line 183
    const-string v7, "FragmentManager"

    .line 184
    .line 185
    if-eqz v3, :cond_a

    .line 186
    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Ljava/lang/String;

    .line 192
    .line 193
    iget-object v8, v1, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 194
    .line 195
    check-cast v8, Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    move-object v13, v3

    .line 202
    check-cast v13, Landroidx/fragment/app/q0;

    .line 203
    .line 204
    if-eqz v13, :cond_6

    .line 205
    .line 206
    iget-object v3, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 207
    .line 208
    iget-object v3, v3, Landroidx/fragment/app/n0;->d:Ljava/util/HashMap;

    .line 209
    .line 210
    iget-object v8, v13, Landroidx/fragment/app/q0;->e:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Landroidx/fragment/app/C;

    .line 217
    .line 218
    if-eqz v3, :cond_8

    .line 219
    .line 220
    invoke-static {v6}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_7

    .line 225
    .line 226
    new-instance v8, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v9, "restoreSaveState: re-attaching retained "

    .line 229
    .line 230
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_7
    new-instance v8, Landroidx/fragment/app/s0;

    .line 244
    .line 245
    invoke-direct {v8, v4, v1, v3, v13}, Landroidx/fragment/app/s0;-><init>(LC/k;Landroidx/fragment/app/t0;Landroidx/fragment/app/C;Landroidx/fragment/app/q0;)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_8
    new-instance v8, Landroidx/fragment/app/s0;

    .line 250
    .line 251
    iget-object v3, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 252
    .line 253
    iget-object v3, v3, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->getFragmentFactory()Landroidx/fragment/app/O;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    iget-object v9, p0, Landroidx/fragment/app/i0;->l:LC/k;

    .line 264
    .line 265
    iget-object v10, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 266
    .line 267
    invoke-direct/range {v8 .. v13}, Landroidx/fragment/app/s0;-><init>(LC/k;Landroidx/fragment/app/t0;Ljava/lang/ClassLoader;Landroidx/fragment/app/O;Landroidx/fragment/app/q0;)V

    .line 268
    .line 269
    .line 270
    :goto_4
    iget-object v3, v8, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 271
    .line 272
    iput-object p0, v3, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 273
    .line 274
    invoke-static {v6}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_9

    .line 279
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v6, "restoreSaveState: active ("

    .line 283
    .line 284
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object v6, v3, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    :cond_9
    iget-object v3, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 306
    .line 307
    iget-object v3, v3, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 308
    .line 309
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v8, v3}, Landroidx/fragment/app/s0;->m(Ljava/lang/ClassLoader;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v8}, Landroidx/fragment/app/t0;->g(Landroidx/fragment/app/s0;)V

    .line 317
    .line 318
    .line 319
    iget v3, p0, Landroidx/fragment/app/i0;->s:I

    .line 320
    .line 321
    iput v3, v8, Landroidx/fragment/app/s0;->e:I

    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    :cond_a
    iget-object v2, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    new-instance v3, Ljava/util/ArrayList;

    .line 331
    .line 332
    iget-object v2, v2, Landroidx/fragment/app/n0;->d:Ljava/util/HashMap;

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_d

    .line 350
    .line 351
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Landroidx/fragment/app/C;

    .line 356
    .line 357
    iget-object v8, v3, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    if-eqz v8, :cond_b

    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_b
    invoke-static {v6}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    if-eqz v8, :cond_c

    .line 371
    .line 372
    new-instance v8, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v9, "Discarding retained Fragment "

    .line 375
    .line 376
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v9, " that was not found in the set of active Fragments "

    .line 383
    .line 384
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    iget-object v9, p1, Landroidx/fragment/app/l0;->b:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    :cond_c
    iget-object v8, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 400
    .line 401
    invoke-virtual {v8, v3}, Landroidx/fragment/app/n0;->e(Landroidx/fragment/app/C;)V

    .line 402
    .line 403
    .line 404
    iput-object p0, v3, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 405
    .line 406
    new-instance v8, Landroidx/fragment/app/s0;

    .line 407
    .line 408
    invoke-direct {v8, v4, v1, v3}, Landroidx/fragment/app/s0;-><init>(LC/k;Landroidx/fragment/app/t0;Landroidx/fragment/app/C;)V

    .line 409
    .line 410
    .line 411
    const/4 v9, 0x1

    .line 412
    iput v9, v8, Landroidx/fragment/app/s0;->e:I

    .line 413
    .line 414
    invoke-virtual {v8}, Landroidx/fragment/app/s0;->k()V

    .line 415
    .line 416
    .line 417
    iput-boolean v9, v3, Landroidx/fragment/app/C;->v:Z

    .line 418
    .line 419
    invoke-virtual {v8}, Landroidx/fragment/app/s0;->k()V

    .line 420
    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_d
    iget-object v0, p1, Landroidx/fragment/app/l0;->e:Ljava/util/ArrayList;

    .line 424
    .line 425
    iget-object v2, v1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v2, Ljava/util/ArrayList;

    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 430
    .line 431
    .line 432
    if-eqz v0, :cond_10

    .line 433
    .line 434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_10

    .line 443
    .line 444
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    check-cast v2, Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    if-eqz v3, :cond_f

    .line 455
    .line 456
    invoke-static {v6}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    if-eqz v4, :cond_e

    .line 461
    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    const-string v8, "restoreSaveState: added ("

    .line 465
    .line 466
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    :cond_e
    invoke-virtual {v1, v3}, Landroidx/fragment/app/t0;->a(Landroidx/fragment/app/C;)V

    .line 486
    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 490
    .line 491
    const-string v0, "No instantiated fragment for ("

    .line 492
    .line 493
    const-string v1, ")"

    .line 494
    .line 495
    invoke-static {v0, v2, v1}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw p1

    .line 503
    :cond_10
    iget-object v0, p1, Landroidx/fragment/app/l0;->f:[Landroidx/fragment/app/c;

    .line 504
    .line 505
    const/4 v2, 0x0

    .line 506
    if-eqz v0, :cond_12

    .line 507
    .line 508
    new-instance v0, Ljava/util/ArrayList;

    .line 509
    .line 510
    iget-object v3, p1, Landroidx/fragment/app/l0;->f:[Landroidx/fragment/app/c;

    .line 511
    .line 512
    array-length v3, v3

    .line 513
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    .line 515
    .line 516
    iput-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 517
    .line 518
    move v0, v2

    .line 519
    :goto_7
    iget-object v3, p1, Landroidx/fragment/app/l0;->f:[Landroidx/fragment/app/c;

    .line 520
    .line 521
    array-length v4, v3

    .line 522
    if-ge v0, v4, :cond_13

    .line 523
    .line 524
    aget-object v3, v3, v0

    .line 525
    .line 526
    invoke-virtual {v3, p0}, Landroidx/fragment/app/c;->instantiate(Landroidx/fragment/app/i0;)Landroidx/fragment/app/a;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-static {v6}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_11

    .line 535
    .line 536
    const-string v4, "restoreAllState: back stack #"

    .line 537
    .line 538
    const-string v8, " (index "

    .line 539
    .line 540
    invoke-static {v0, v4, v8}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    iget v8, v3, Landroidx/fragment/app/a;->r:I

    .line 545
    .line 546
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    new-instance v4, Landroidx/fragment/app/G0;

    .line 563
    .line 564
    invoke-direct {v4}, Landroidx/fragment/app/G0;-><init>()V

    .line 565
    .line 566
    .line 567
    new-instance v8, Ljava/io/PrintWriter;

    .line 568
    .line 569
    invoke-direct {v8, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 570
    .line 571
    .line 572
    const-string v4, "  "

    .line 573
    .line 574
    invoke-virtual {v3, v4, v8, v2}, Landroidx/fragment/app/a;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 578
    .line 579
    .line 580
    :cond_11
    iget-object v4, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    add-int/lit8 v0, v0, 0x1

    .line 586
    .line 587
    goto :goto_7

    .line 588
    :cond_12
    const/4 v0, 0x0

    .line 589
    iput-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 590
    .line 591
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/i0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 592
    .line 593
    iget v3, p1, Landroidx/fragment/app/l0;->j:I

    .line 594
    .line 595
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 596
    .line 597
    .line 598
    iget-object v0, p1, Landroidx/fragment/app/l0;->m:Ljava/lang/String;

    .line 599
    .line 600
    if-eqz v0, :cond_14

    .line 601
    .line 602
    invoke-virtual {v1, v0}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    iput-object v0, p0, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 607
    .line 608
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->q(Landroidx/fragment/app/C;)V

    .line 609
    .line 610
    .line 611
    :cond_14
    iget-object v0, p1, Landroidx/fragment/app/l0;->n:Ljava/util/ArrayList;

    .line 612
    .line 613
    if-eqz v0, :cond_15

    .line 614
    .line 615
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-ge v2, v1, :cond_15

    .line 620
    .line 621
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    check-cast v1, Ljava/lang/String;

    .line 626
    .line 627
    iget-object v3, p1, Landroidx/fragment/app/l0;->p:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    check-cast v3, Landroidx/fragment/app/e;

    .line 634
    .line 635
    iget-object v4, p0, Landroidx/fragment/app/i0;->j:Ljava/util/Map;

    .line 636
    .line 637
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    add-int/lit8 v2, v2, 0x1

    .line 641
    .line 642
    goto :goto_8

    .line 643
    :cond_15
    new-instance v0, Ljava/util/ArrayDeque;

    .line 644
    .line 645
    iget-object p1, p1, Landroidx/fragment/app/l0;->q:Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 648
    .line 649
    .line 650
    iput-object v0, p0, Landroidx/fragment/app/i0;->C:Ljava/util/ArrayDeque;

    .line 651
    .line 652
    return-void
.end method

.method public final K()Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->e()Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/M0;

    .line 27
    .line 28
    iget-boolean v5, v2, Landroidx/fragment/app/M0;->e:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const-string v4, "FragmentManager"

    .line 39
    .line 40
    const-string v5, "SpecialEffectsController: Forcing postponed operations"

    .line 41
    .line 42
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-boolean v3, v2, Landroidx/fragment/app/M0;->e:Z

    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/fragment/app/M0;->c()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->e()Ljava/util/HashSet;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroidx/fragment/app/M0;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/fragment/app/M0;->e()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->E:Z

    .line 80
    .line 81
    iget-object v2, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 82
    .line 83
    iput-boolean v1, v2, Landroidx/fragment/app/n0;->i:Z

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v1, v1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 93
    .line 94
    check-cast v1, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, 0x0

    .line 116
    if-eqz v5, :cond_10

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Landroidx/fragment/app/s0;

    .line 123
    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    new-instance v7, Landroidx/fragment/app/q0;

    .line 127
    .line 128
    iget-object v8, v5, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 129
    .line 130
    invoke-direct {v7, v8}, Landroidx/fragment/app/q0;-><init>(Landroidx/fragment/app/C;)V

    .line 131
    .line 132
    .line 133
    iget v9, v8, Landroidx/fragment/app/C;->b:I

    .line 134
    .line 135
    const/4 v10, -0x1

    .line 136
    if-le v9, v10, :cond_e

    .line 137
    .line 138
    iget-object v9, v7, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    .line 139
    .line 140
    if-nez v9, :cond_e

    .line 141
    .line 142
    new-instance v9, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v9}, Landroidx/fragment/app/C;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    iget-object v10, v8, Landroidx/fragment/app/C;->b0:Lq1/i;

    .line 151
    .line 152
    invoke-virtual {v10, v9}, Lq1/i;->performSave(Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    iget-object v10, v8, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 156
    .line 157
    invoke-virtual {v10}, Landroidx/fragment/app/i0;->K()Landroid/os/Bundle;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    const-string v11, "android:support:fragments"

    .line 162
    .line 163
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    .line 165
    .line 166
    iget-object v10, v5, Landroidx/fragment/app/s0;->a:LC/k;

    .line 167
    .line 168
    invoke-virtual {v10, v3}, LC/k;->k(Z)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_5

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    move-object v6, v9

    .line 179
    :goto_3
    iget-object v9, v8, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 180
    .line 181
    if-eqz v9, :cond_6

    .line 182
    .line 183
    invoke-virtual {v5}, Landroidx/fragment/app/s0;->o()V

    .line 184
    .line 185
    .line 186
    :cond_6
    iget-object v9, v8, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 187
    .line 188
    if-eqz v9, :cond_8

    .line 189
    .line 190
    if-nez v6, :cond_7

    .line 191
    .line 192
    new-instance v6, Landroid/os/Bundle;

    .line 193
    .line 194
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 195
    .line 196
    .line 197
    :cond_7
    const-string v9, "android:view_state"

    .line 198
    .line 199
    iget-object v10, v8, Landroidx/fragment/app/C;->f:Landroid/util/SparseArray;

    .line 200
    .line 201
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 202
    .line 203
    .line 204
    :cond_8
    iget-object v9, v8, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 205
    .line 206
    if-eqz v9, :cond_a

    .line 207
    .line 208
    if-nez v6, :cond_9

    .line 209
    .line 210
    new-instance v6, Landroid/os/Bundle;

    .line 211
    .line 212
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 213
    .line 214
    .line 215
    :cond_9
    const-string v9, "android:view_registry_state"

    .line 216
    .line 217
    iget-object v10, v8, Landroidx/fragment/app/C;->j:Landroid/os/Bundle;

    .line 218
    .line 219
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    .line 221
    .line 222
    :cond_a
    iget-boolean v9, v8, Landroidx/fragment/app/C;->S:Z

    .line 223
    .line 224
    if-nez v9, :cond_c

    .line 225
    .line 226
    if-nez v6, :cond_b

    .line 227
    .line 228
    new-instance v6, Landroid/os/Bundle;

    .line 229
    .line 230
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 231
    .line 232
    .line 233
    :cond_b
    const-string v9, "android:user_visible_hint"

    .line 234
    .line 235
    iget-boolean v10, v8, Landroidx/fragment/app/C;->S:Z

    .line 236
    .line 237
    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    :cond_c
    iput-object v6, v7, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    .line 241
    .line 242
    iget-object v9, v8, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 243
    .line 244
    if-eqz v9, :cond_f

    .line 245
    .line 246
    if-nez v6, :cond_d

    .line 247
    .line 248
    new-instance v6, Landroid/os/Bundle;

    .line 249
    .line 250
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v6, v7, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    .line 254
    .line 255
    :cond_d
    iget-object v6, v7, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    .line 256
    .line 257
    const-string v9, "android:target_state"

    .line 258
    .line 259
    iget-object v10, v8, Landroidx/fragment/app/C;->r:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget v6, v8, Landroidx/fragment/app/C;->s:I

    .line 265
    .line 266
    if-eqz v6, :cond_f

    .line 267
    .line 268
    iget-object v9, v7, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    .line 269
    .line 270
    const-string v10, "android:target_req_state"

    .line 271
    .line 272
    invoke-virtual {v9, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_e
    iget-object v6, v8, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 277
    .line 278
    iput-object v6, v7, Landroidx/fragment/app/q0;->v:Landroid/os/Bundle;

    .line 279
    .line 280
    :cond_f
    :goto_4
    iget-object v6, v8, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v8, v5, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t0;

    .line 283
    .line 284
    iget-object v8, v8, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 285
    .line 286
    check-cast v8, Ljava/util/HashMap;

    .line 287
    .line 288
    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    check-cast v6, Landroidx/fragment/app/q0;

    .line 293
    .line 294
    iget-object v5, v5, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 295
    .line 296
    iget-object v6, v5, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-eqz v6, :cond_4

    .line 306
    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v7, "Saved state of "

    .line 310
    .line 311
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v7, ": "

    .line 318
    .line 319
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object v5, v5, Landroidx/fragment/app/C;->e:Landroid/os/Bundle;

    .line 323
    .line 324
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    const-string v6, "FragmentManager"

    .line 332
    .line 333
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :cond_10
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    new-instance v5, Ljava/util/ArrayList;

    .line 344
    .line 345
    iget-object v1, v1, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 346
    .line 347
    check-cast v1, Ljava/util/HashMap;

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_11

    .line 361
    .line 362
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_19

    .line 367
    .line 368
    const-string v1, "FragmentManager"

    .line 369
    .line 370
    const-string v2, "saveAllState: no fragments!"

    .line 371
    .line 372
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    return-object v0

    .line 376
    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 377
    .line 378
    iget-object v7, v1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v7, Ljava/util/ArrayList;

    .line 381
    .line 382
    monitor-enter v7

    .line 383
    :try_start_0
    iget-object v8, v1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v8, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    if-eqz v8, :cond_12

    .line 392
    .line 393
    monitor-exit v7

    .line 394
    move-object v8, v6

    .line 395
    goto :goto_6

    .line 396
    :catchall_0
    move-exception v0

    .line 397
    goto/16 :goto_a

    .line 398
    .line 399
    :cond_12
    new-instance v8, Ljava/util/ArrayList;

    .line 400
    .line 401
    iget-object v9, v1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v9, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v1, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    :cond_13
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    if-eqz v9, :cond_14

    .line 425
    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    check-cast v9, Landroidx/fragment/app/C;

    .line 431
    .line 432
    iget-object v10, v9, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    if-eqz v10, :cond_13

    .line 442
    .line 443
    const-string v10, "FragmentManager"

    .line 444
    .line 445
    new-instance v11, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v12, "saveAllState: adding fragment ("

    .line 451
    .line 452
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    iget-object v12, v9, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v12, "): "

    .line 461
    .line 462
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    goto :goto_5

    .line 476
    :cond_14
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :goto_6
    iget-object v1, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 478
    .line 479
    if-eqz v1, :cond_16

    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-lez v1, :cond_16

    .line 486
    .line 487
    new-array v6, v1, [Landroidx/fragment/app/c;

    .line 488
    .line 489
    :goto_7
    if-ge v3, v1, :cond_16

    .line 490
    .line 491
    new-instance v7, Landroidx/fragment/app/c;

    .line 492
    .line 493
    iget-object v9, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    check-cast v9, Landroidx/fragment/app/a;

    .line 500
    .line 501
    invoke-direct {v7, v9}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/a;)V

    .line 502
    .line 503
    .line 504
    aput-object v7, v6, v3

    .line 505
    .line 506
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    if-eqz v7, :cond_15

    .line 511
    .line 512
    const-string v7, "FragmentManager"

    .line 513
    .line 514
    const-string v9, "saveAllState: adding back stack #"

    .line 515
    .line 516
    const-string v10, ": "

    .line 517
    .line 518
    invoke-static {v3, v9, v10}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    iget-object v10, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 539
    .line 540
    goto :goto_7

    .line 541
    :cond_16
    new-instance v1, Landroidx/fragment/app/l0;

    .line 542
    .line 543
    invoke-direct {v1}, Landroidx/fragment/app/l0;-><init>()V

    .line 544
    .line 545
    .line 546
    iput-object v2, v1, Landroidx/fragment/app/l0;->b:Ljava/util/ArrayList;

    .line 547
    .line 548
    iput-object v8, v1, Landroidx/fragment/app/l0;->e:Ljava/util/ArrayList;

    .line 549
    .line 550
    iput-object v6, v1, Landroidx/fragment/app/l0;->f:[Landroidx/fragment/app/c;

    .line 551
    .line 552
    iget-object v2, p0, Landroidx/fragment/app/i0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 553
    .line 554
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    iput v2, v1, Landroidx/fragment/app/l0;->j:I

    .line 559
    .line 560
    iget-object v2, p0, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 561
    .line 562
    if-eqz v2, :cond_17

    .line 563
    .line 564
    iget-object v2, v2, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 565
    .line 566
    iput-object v2, v1, Landroidx/fragment/app/l0;->m:Ljava/lang/String;

    .line 567
    .line 568
    :cond_17
    iget-object v2, v1, Landroidx/fragment/app/l0;->n:Ljava/util/ArrayList;

    .line 569
    .line 570
    iget-object v3, p0, Landroidx/fragment/app/i0;->j:Ljava/util/Map;

    .line 571
    .line 572
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 577
    .line 578
    .line 579
    iget-object v2, v1, Landroidx/fragment/app/l0;->p:Ljava/util/ArrayList;

    .line 580
    .line 581
    iget-object v3, p0, Landroidx/fragment/app/i0;->j:Ljava/util/Map;

    .line 582
    .line 583
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 588
    .line 589
    .line 590
    new-instance v2, Ljava/util/ArrayList;

    .line 591
    .line 592
    iget-object v3, p0, Landroidx/fragment/app/i0;->C:Ljava/util/ArrayDeque;

    .line 593
    .line 594
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 595
    .line 596
    .line 597
    iput-object v2, v1, Landroidx/fragment/app/l0;->q:Ljava/util/ArrayList;

    .line 598
    .line 599
    const-string v2, "state"

    .line 600
    .line 601
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 602
    .line 603
    .line 604
    iget-object v1, p0, Landroidx/fragment/app/i0;->k:Ljava/util/Map;

    .line 605
    .line 606
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    if-eqz v2, :cond_18

    .line 619
    .line 620
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    check-cast v2, Ljava/lang/String;

    .line 625
    .line 626
    const-string v3, "result_"

    .line 627
    .line 628
    invoke-static {v3, v2}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    iget-object v4, p0, Landroidx/fragment/app/i0;->k:Ljava/util/Map;

    .line 633
    .line 634
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    check-cast v2, Landroid/os/Bundle;

    .line 639
    .line 640
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 641
    .line 642
    .line 643
    goto :goto_8

    .line 644
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    if-eqz v2, :cond_19

    .line 653
    .line 654
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    check-cast v2, Landroidx/fragment/app/q0;

    .line 659
    .line 660
    new-instance v3, Landroid/os/Bundle;

    .line 661
    .line 662
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 663
    .line 664
    .line 665
    const-string v4, "state"

    .line 666
    .line 667
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 668
    .line 669
    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    const-string v5, "fragment_"

    .line 673
    .line 674
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    iget-object v2, v2, Landroidx/fragment/app/q0;->e:Ljava/lang/String;

    .line 678
    .line 679
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 687
    .line 688
    .line 689
    goto :goto_9

    .line 690
    :cond_19
    return-object v0

    .line 691
    :goto_a
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    throw v0
.end method

.method public final L()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/P;->getHandler()Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Landroidx/fragment/app/i0;->M:Landroidx/fragment/app/Z;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/P;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Landroidx/fragment/app/i0;->M:Landroidx/fragment/app/Z;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->S()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v1
.end method

.method public final M(Landroidx/fragment/app/C;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->y(Landroidx/fragment/app/C;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final N(Landroidx/fragment/app/C;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/C;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/C;->C:Landroidx/fragment/app/P;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/C;->X:Landroidx/lifecycle/Lifecycle$State;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final O(Landroidx/fragment/app/C;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/C;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/C;->C:Landroidx/fragment/app/P;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 22
    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Fragment "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 55
    .line 56
    iput-object p1, p0, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->q(Landroidx/fragment/app/C;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->q(Landroidx/fragment/app/C;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final P(Landroidx/fragment/app/C;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->y(Landroidx/fragment/app/C;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v1, Landroidx/fragment/app/B;->b:I

    .line 15
    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    move v4, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v4, v1, Landroidx/fragment/app/B;->c:I

    .line 21
    .line 22
    :goto_1
    add-int/2addr v4, v3

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    move v3, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v3, v1, Landroidx/fragment/app/B;->d:I

    .line 28
    .line 29
    :goto_2
    add-int/2addr v3, v4

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v1, v1, Landroidx/fragment/app/B;->e:I

    .line 35
    .line 36
    :goto_3
    add-int/2addr v1, v3

    .line 37
    if-lez v1, :cond_7

    .line 38
    .line 39
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 48
    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroidx/fragment/app/C;

    .line 59
    .line 60
    iget-object p1, p1, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 61
    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_5
    iget-boolean v2, p1, Landroidx/fragment/app/B;->a:Z

    .line 66
    .line 67
    :goto_4
    iget-object p1, v0, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 68
    .line 69
    if-nez p1, :cond_6

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-boolean v2, p1, Landroidx/fragment/app/B;->a:Z

    .line 77
    .line 78
    :cond_7
    :goto_5
    return-void
.end method

.method public final R(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/G0;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/fragment/app/G0;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/P;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/i0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    throw p1
.end method

.method public final S()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/V;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/activity/s;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/V;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->getBackStackEntryCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 32
    .line 33
    invoke-static {v1}, Landroidx/fragment/app/i0;->D(Landroidx/fragment/app/C;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/s;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v1
.end method

.method public final a(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/C;->W:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg0/d;->onFragmentReuse(Landroidx/fragment/app/C;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "add: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "FragmentManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->f(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object p0, p1, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/fragment/app/t0;->g(Landroidx/fragment/app/s0;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p1, Landroidx/fragment/app/C;->J:Z

    .line 46
    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroidx/fragment/app/t0;->a(Landroidx/fragment/app/C;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p1, Landroidx/fragment/app/C;->v:Z

    .line 54
    .line 55
    iget-object v2, p1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iput-boolean v1, p1, Landroidx/fragment/app/C;->U:Z

    .line 60
    .line 61
    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/i0;->B(Landroidx/fragment/app/C;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->D:Z

    .line 69
    .line 70
    :cond_3
    return-object v0
.end method

.method public addFragmentOnAttachListener(Landroidx/fragment/app/o0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroidx/fragment/app/P;Landroidx/fragment/app/L;Landroidx/fragment/app/C;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/i0;->u:Landroidx/fragment/app/L;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    new-instance p2, Landroidx/fragment/app/a0;

    .line 14
    .line 15
    invoke-direct {p2, p3}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/C;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroidx/fragment/app/i0;->addFragmentOnAttachListener(Landroidx/fragment/app/o0;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/o0;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    move-object p2, p1

    .line 27
    check-cast p2, Landroidx/fragment/app/o0;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroidx/fragment/app/i0;->addFragmentOnAttachListener(Landroidx/fragment/app/o0;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->S()V

    .line 37
    .line 38
    .line 39
    :cond_2
    instance-of p2, p1, Landroidx/activity/y;

    .line 40
    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    move-object p2, p1

    .line 44
    check-cast p2, Landroidx/activity/y;

    .line 45
    .line 46
    invoke-interface {p2}, Landroidx/activity/y;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/fragment/app/i0;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 51
    .line 52
    if-eqz p3, :cond_3

    .line 53
    .line 54
    move-object p2, p3

    .line 55
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/V;

    .line 56
    .line 57
    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/t;Landroidx/activity/s;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    if-eqz p3, :cond_6

    .line 61
    .line 62
    iget-object p1, p3, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 65
    .line 66
    iget-object p2, p1, Landroidx/fragment/app/n0;->e:Ljava/util/HashMap;

    .line 67
    .line 68
    iget-object v0, p3, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroidx/fragment/app/n0;

    .line 75
    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    new-instance v0, Landroidx/fragment/app/n0;

    .line 79
    .line 80
    iget-boolean p1, p1, Landroidx/fragment/app/n0;->g:Z

    .line 81
    .line 82
    invoke-direct {v0, p1}, Landroidx/fragment/app/n0;-><init>(Z)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p3, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_5
    iput-object v0, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    instance-of p2, p1, Landroidx/lifecycle/j0;

    .line 94
    .line 95
    if-eqz p2, :cond_7

    .line 96
    .line 97
    check-cast p1, Landroidx/lifecycle/j0;

    .line 98
    .line 99
    invoke-interface {p1}, Landroidx/lifecycle/j0;->getViewModelStore()Landroidx/lifecycle/i0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance p2, Landroidx/lifecycle/g0;

    .line 104
    .line 105
    sget-object v0, Landroidx/fragment/app/n0;->j:Landroidx/fragment/app/m0;

    .line 106
    .line 107
    invoke-direct {p2, p1, v0}, Landroidx/lifecycle/g0;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/c0;)V

    .line 108
    .line 109
    .line 110
    const-class p1, Landroidx/fragment/app/n0;

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Landroidx/lifecycle/g0;->get(Ljava/lang/Class;)Landroidx/lifecycle/X;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroidx/fragment/app/n0;

    .line 117
    .line 118
    iput-object p1, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    new-instance p1, Landroidx/fragment/app/n0;

    .line 122
    .line 123
    const/4 p2, 0x0

    .line 124
    invoke-direct {p1, p2}, Landroidx/fragment/app/n0;-><init>(Z)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 128
    .line 129
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->isStateSaved()Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    iput-boolean p2, p1, Landroidx/fragment/app/n0;->i:Z

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 138
    .line 139
    iget-object p2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 140
    .line 141
    iput-object p1, p2, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 142
    .line 143
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 144
    .line 145
    instance-of p2, p1, Lq1/j;

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    if-nez p3, :cond_8

    .line 150
    .line 151
    check-cast p1, Lq1/j;

    .line 152
    .line 153
    invoke-interface {p1}, Lq1/j;->getSavedStateRegistry()Lq1/g;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance p2, Landroidx/fragment/app/D;

    .line 158
    .line 159
    move-object v0, p0

    .line 160
    check-cast v0, Landroidx/fragment/app/j0;

    .line 161
    .line 162
    const/4 v1, 0x1

    .line 163
    invoke-direct {p2, v0, v1}, Landroidx/fragment/app/D;-><init>(Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    const-string v0, "android:support:fragments"

    .line 167
    .line 168
    invoke-virtual {p1, v0, p2}, Lq1/g;->registerSavedStateProvider(Ljava/lang/String;Lq1/f;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lq1/g;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->J(Landroid/os/Parcelable;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 181
    .line 182
    instance-of p2, p1, Landroidx/activity/result/i;

    .line 183
    .line 184
    if-eqz p2, :cond_a

    .line 185
    .line 186
    check-cast p1, Landroidx/activity/result/i;

    .line 187
    .line 188
    invoke-interface {p1}, Landroidx/activity/result/i;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-eqz p3, :cond_9

    .line 193
    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v0, p3, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 200
    .line 201
    const-string v1, ":"

    .line 202
    .line 203
    invoke-static {p2, v0, v1}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    goto :goto_2

    .line 208
    :cond_9
    const-string p2, ""

    .line 209
    .line 210
    :goto_2
    const-string v0, "FragmentManager:"

    .line 211
    .line 212
    invoke-static {v0, p2}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    const-string v0, "StartActivityForResult"

    .line 217
    .line 218
    invoke-static {p2, v0}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Ld/f;

    .line 223
    .line 224
    invoke-direct {v1}, Ld/f;-><init>()V

    .line 225
    .line 226
    .line 227
    new-instance v2, Landroidx/fragment/app/b0;

    .line 228
    .line 229
    move-object v3, p0

    .line 230
    check-cast v3, Landroidx/fragment/app/j0;

    .line 231
    .line 232
    invoke-direct {v2, v3}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/j0;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Ld/b;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iput-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/activity/result/d;

    .line 240
    .line 241
    const-string v0, "StartIntentSenderForResult"

    .line 242
    .line 243
    invoke-static {p2, v0}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    new-instance v1, Landroidx/fragment/app/d0;

    .line 248
    .line 249
    invoke-direct {v1}, Ld/b;-><init>()V

    .line 250
    .line 251
    .line 252
    new-instance v2, Landroidx/fragment/app/c0;

    .line 253
    .line 254
    invoke-direct {v2, v3}, Landroidx/fragment/app/c0;-><init>(Landroidx/fragment/app/j0;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Ld/b;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p0, Landroidx/fragment/app/i0;->A:Landroidx/activity/result/d;

    .line 262
    .line 263
    const-string v0, "RequestPermissions"

    .line 264
    .line 265
    invoke-static {p2, v0}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    new-instance v0, Ld/d;

    .line 270
    .line 271
    invoke-direct {v0}, Ld/d;-><init>()V

    .line 272
    .line 273
    .line 274
    new-instance v1, Landroidx/fragment/app/U;

    .line 275
    .line 276
    invoke-direct {v1, v3}, Landroidx/fragment/app/U;-><init>(Landroidx/fragment/app/j0;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Ld/b;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iput-object p1, p0, Landroidx/fragment/app/i0;->B:Landroidx/activity/result/d;

    .line 284
    .line 285
    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 286
    .line 287
    instance-of p2, p1, LA/l;

    .line 288
    .line 289
    if-eqz p2, :cond_b

    .line 290
    .line 291
    check-cast p1, LA/l;

    .line 292
    .line 293
    iget-object p2, p0, Landroidx/fragment/app/i0;->n:Landroidx/fragment/app/T;

    .line 294
    .line 295
    invoke-interface {p1, p2}, LA/l;->addOnConfigurationChangedListener(LL/a;)V

    .line 296
    .line 297
    .line 298
    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 299
    .line 300
    instance-of p2, p1, LA/m;

    .line 301
    .line 302
    if-eqz p2, :cond_c

    .line 303
    .line 304
    check-cast p1, LA/m;

    .line 305
    .line 306
    iget-object p2, p0, Landroidx/fragment/app/i0;->o:Landroidx/fragment/app/T;

    .line 307
    .line 308
    invoke-interface {p1, p2}, LA/m;->addOnTrimMemoryListener(LL/a;)V

    .line 309
    .line 310
    .line 311
    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 312
    .line 313
    instance-of p2, p1, Lz/P;

    .line 314
    .line 315
    if-eqz p2, :cond_d

    .line 316
    .line 317
    check-cast p1, Lz/P;

    .line 318
    .line 319
    iget-object p2, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/T;

    .line 320
    .line 321
    invoke-interface {p1, p2}, Lz/P;->addOnMultiWindowModeChangedListener(LL/a;)V

    .line 322
    .line 323
    .line 324
    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 325
    .line 326
    instance-of p2, p1, Lz/Q;

    .line 327
    .line 328
    if-eqz p2, :cond_e

    .line 329
    .line 330
    check-cast p1, Lz/Q;

    .line 331
    .line 332
    iget-object p2, p0, Landroidx/fragment/app/i0;->q:Landroidx/fragment/app/T;

    .line 333
    .line 334
    invoke-interface {p1, p2}, Lz/Q;->addOnPictureInPictureModeChangedListener(LL/a;)V

    .line 335
    .line 336
    .line 337
    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 338
    .line 339
    instance-of p2, p1, LM/x;

    .line 340
    .line 341
    if-eqz p2, :cond_f

    .line 342
    .line 343
    if-nez p3, :cond_f

    .line 344
    .line 345
    check-cast p1, LM/x;

    .line 346
    .line 347
    iget-object p2, p0, Landroidx/fragment/app/i0;->r:Landroidx/fragment/app/W;

    .line 348
    .line 349
    invoke-interface {p1, p2}, LM/x;->addMenuProvider(LM/E;)V

    .line 350
    .line 351
    .line 352
    :cond_f
    return-void

    .line 353
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 354
    .line 355
    const-string p2, "Already attached"

    .line 356
    .line 357
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw p1
.end method

.method public beginTransaction()Landroidx/fragment/app/v0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/i0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c(Landroidx/fragment/app/C;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

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
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/C;->J:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p1, Landroidx/fragment/app/C;->J:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/C;->u:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroidx/fragment/app/t0;->a(Landroidx/fragment/app/C;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/i0;->B(Landroidx/fragment/app/C;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->D:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/i0;->J:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "    "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 30
    .line 31
    check-cast v3, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "Active Fragments:"

    .line 43
    .line 44
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroidx/fragment/app/s0;

    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    iget-object v4, v4, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 73
    .line 74
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/C;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string v4, "null"

    .line 82
    .line 83
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p2, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    const/4 v1, 0x0

    .line 96
    if-lez p4, :cond_2

    .line 97
    .line 98
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v2, "Added Fragments:"

    .line 102
    .line 103
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move v2, v1

    .line 107
    :goto_1
    if-ge v2, p4, :cond_2

    .line 108
    .line 109
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroidx/fragment/app/C;

    .line 114
    .line 115
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v4, "  #"

    .line 119
    .line 120
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 124
    .line 125
    .line 126
    const-string v4, ": "

    .line 127
    .line 128
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Landroidx/fragment/app/C;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 142
    .line 143
    if-eqz p2, :cond_3

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-lez p2, :cond_3

    .line 150
    .line 151
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string p4, "Fragments Created Menus:"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move p4, v1

    .line 160
    :goto_2
    if-ge p4, p2, :cond_3

    .line 161
    .line 162
    iget-object v2, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroidx/fragment/app/C;

    .line 169
    .line 170
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v3, "  #"

    .line 174
    .line 175
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 179
    .line 180
    .line 181
    const-string v3, ": "

    .line 182
    .line 183
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroidx/fragment/app/C;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 p4, p4, 0x1

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 197
    .line 198
    if-eqz p2, :cond_4

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-lez p2, :cond_4

    .line 205
    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string p4, "Back Stack:"

    .line 210
    .line 211
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    move p4, v1

    .line 215
    :goto_3
    if-ge p4, p2, :cond_4

    .line 216
    .line 217
    iget-object v2, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Landroidx/fragment/app/a;

    .line 224
    .line 225
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string v3, "  #"

    .line 229
    .line 230
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    .line 235
    .line 236
    const-string v3, ": "

    .line 237
    .line 238
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 249
    .line 250
    .line 251
    add-int/lit8 p4, p4, 0x1

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string p4, "Back Stack Index: "

    .line 260
    .line 261
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object p4, p0, Landroidx/fragment/app/i0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 265
    .line 266
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 267
    .line 268
    .line 269
    move-result p4

    .line 270
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object p2, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 281
    .line 282
    monitor-enter p2

    .line 283
    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result p4

    .line 289
    if-lez p4, :cond_5

    .line 290
    .line 291
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string v0, "Pending Actions:"

    .line 295
    .line 296
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_4
    if-ge v1, p4, :cond_5

    .line 300
    .line 301
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Landroidx/fragment/app/g0;

    .line 308
    .line 309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v2, "  #"

    .line 313
    .line 314
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 318
    .line 319
    .line 320
    const-string v2, ": "

    .line 321
    .line 322
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    add-int/lit8 v1, v1, 0x1

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :catchall_0
    move-exception p1

    .line 332
    goto :goto_5

    .line 333
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string p2, "FragmentManager misc state:"

    .line 338
    .line 339
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string p2, "  mHost="

    .line 346
    .line 347
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object p2, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 351
    .line 352
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string p2, "  mContainer="

    .line 359
    .line 360
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object p2, p0, Landroidx/fragment/app/i0;->u:Landroidx/fragment/app/L;

    .line 364
    .line 365
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    iget-object p2, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 369
    .line 370
    if-eqz p2, :cond_6

    .line 371
    .line 372
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const-string p2, "  mParent="

    .line 376
    .line 377
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object p2, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 381
    .line 382
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string p2, "  mCurState="

    .line 389
    .line 390
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget p2, p0, Landroidx/fragment/app/i0;->s:I

    .line 394
    .line 395
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 396
    .line 397
    .line 398
    const-string p2, " mStateSaved="

    .line 399
    .line 400
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->E:Z

    .line 404
    .line 405
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 406
    .line 407
    .line 408
    const-string p2, " mStopped="

    .line 409
    .line 410
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->F:Z

    .line 414
    .line 415
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 416
    .line 417
    .line 418
    const-string p2, " mDestroyed="

    .line 419
    .line 420
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->G:Z

    .line 424
    .line 425
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 426
    .line 427
    .line 428
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->D:Z

    .line 429
    .line 430
    if-eqz p2, :cond_7

    .line 431
    .line 432
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const-string p1, "  mNeedMenuInvalidate="

    .line 436
    .line 437
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->D:Z

    .line 441
    .line 442
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 443
    .line 444
    .line 445
    :cond_7
    return-void

    .line 446
    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    throw p1
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/t0;->d()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/s0;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->z()Landroidx/fragment/app/Y;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Landroidx/fragment/app/M0;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/Y;)Landroidx/fragment/app/M0;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/s0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Landroidx/fragment/app/s0;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/i0;->l:LC/k;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/s0;-><init>(LC/k;Landroidx/fragment/app/t0;Landroidx/fragment/app/C;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroidx/fragment/app/s0;->m(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Landroidx/fragment/app/i0;->s:I

    .line 37
    .line 38
    iput p1, v0, Landroidx/fragment/app/s0;->e:I

    .line 39
    .line 40
    return-object v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/C;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/fragment/app/C;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v4, v3, Landroidx/fragment/app/C;->F:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_0

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 32
    .line 33
    check-cast v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/fragment/app/s0;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 58
    .line 59
    iget v2, v1, Landroidx/fragment/app/C;->F:I

    .line 60
    .line 61
    if-ne v2, p1, :cond_2

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/C;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroidx/fragment/app/C;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v4, v3, Landroidx/fragment/app/C;->H:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 40
    .line 41
    check-cast v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroidx/fragment/app/s0;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, v1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 66
    .line 67
    iget-object v2, v1, Landroidx/fragment/app/C;->H:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :cond_4
    const/4 p1, 0x0

    .line 80
    return-object p1
.end method

.method public final g(Landroidx/fragment/app/C;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

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
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/C;->J:Z

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p1, Landroidx/fragment/app/C;->J:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Landroidx/fragment/app/C;->u:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 62
    .line 63
    iget-object v2, v0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p1, Landroidx/fragment/app/C;->u:Z

    .line 78
    .line 79
    invoke-static {p1}, Landroidx/fragment/app/i0;->B(Landroidx/fragment/app/C;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->D:Z

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->P(Landroidx/fragment/app/C;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p1

    .line 94
    :cond_3
    return-void
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getFragmentFactory()Landroidx/fragment/app/O;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->getFragmentFactory()Landroidx/fragment/app/O;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/X;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/C;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHost()Landroidx/fragment/app/P;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/fragment/app/P;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/C;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrictModePolicy()Lg0/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final h(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 4
    .line 5
    instance-of v0, v0, LA/l;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->R(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/C;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Landroidx/fragment/app/C;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2, p2}, Landroidx/fragment/app/i0;->h(ZLandroid/content/res/Configuration;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final i(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/C;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, Landroidx/fragment/app/C;->I:Z

    .line 33
    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroidx/fragment/app/C;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 45
    .line 46
    invoke-virtual {v3, p1}, Landroidx/fragment/app/i0;->i(Landroid/view/MenuItem;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v3, 0x0

    .line 52
    :goto_0
    if-eqz v3, :cond_1

    .line 53
    .line 54
    return v2

    .line 55
    :cond_4
    return v1
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStateSaved()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->E:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->F:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public final j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_5

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/C;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v5}, Landroidx/fragment/app/C;->isMenuVisible()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-boolean v6, v5, Landroidx/fragment/app/C;->I:Z

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-nez v6, :cond_3

    .line 44
    .line 45
    iget-boolean v6, v5, Landroidx/fragment/app/C;->M:Z

    .line 46
    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    iget-boolean v6, v5, Landroidx/fragment/app/C;->N:Z

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/C;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    :cond_2
    iget-object v6, v5, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 58
    .line 59
    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/i0;->j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    or-int/2addr v7, v6

    .line 64
    :cond_3
    if-eqz v7, :cond_1

    .line 65
    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    new-instance v3, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move v4, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz p1, :cond_8

    .line 81
    .line 82
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ge v1, p1, :cond_8

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroidx/fragment/app/C;

    .line 97
    .line 98
    if-eqz v3, :cond_6

    .line 99
    .line 100
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_7

    .line 105
    .line 106
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/C;->onDestroyOptionsMenu()V

    .line 107
    .line 108
    .line 109
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_8
    iput-object v3, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 113
    .line 114
    return v4
.end method

.method public final k()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->G:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->e()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/fragment/app/M0;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/fragment/app/M0;->e()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 32
    .line 33
    instance-of v2, v1, Landroidx/lifecycle/j0;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v0, v3, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Landroidx/fragment/app/n0;

    .line 42
    .line 43
    iget-boolean v0, v0, Landroidx/fragment/app/n0;->h:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 47
    .line 48
    instance-of v2, v1, Landroid/app/Activity;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    check-cast v1, Landroid/app/Activity;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    xor-int/2addr v0, v1

    .line 59
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/fragment/app/i0;->j:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroidx/fragment/app/e;

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v4, v3, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v4, Landroidx/fragment/app/n0;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x3

    .line 109
    invoke-static {v5}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v6, "Clearing non-config state for saved state of Fragment "

    .line 118
    .line 119
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const-string v6, "FragmentManager"

    .line 130
    .line 131
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual {v4, v2}, Landroidx/fragment/app/n0;->d(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v0, -0x1

    .line 139
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->t(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 143
    .line 144
    instance-of v1, v0, LA/m;

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    check-cast v0, LA/m;

    .line 149
    .line 150
    iget-object v1, p0, Landroidx/fragment/app/i0;->o:Landroidx/fragment/app/T;

    .line 151
    .line 152
    invoke-interface {v0, v1}, LA/m;->removeOnTrimMemoryListener(LL/a;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 156
    .line 157
    instance-of v1, v0, LA/l;

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    check-cast v0, LA/l;

    .line 162
    .line 163
    iget-object v1, p0, Landroidx/fragment/app/i0;->n:Landroidx/fragment/app/T;

    .line 164
    .line 165
    invoke-interface {v0, v1}, LA/l;->removeOnConfigurationChangedListener(LL/a;)V

    .line 166
    .line 167
    .line 168
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 169
    .line 170
    instance-of v1, v0, Lz/P;

    .line 171
    .line 172
    if-eqz v1, :cond_8

    .line 173
    .line 174
    check-cast v0, Lz/P;

    .line 175
    .line 176
    iget-object v1, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/T;

    .line 177
    .line 178
    invoke-interface {v0, v1}, Lz/P;->removeOnMultiWindowModeChangedListener(LL/a;)V

    .line 179
    .line 180
    .line 181
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 182
    .line 183
    instance-of v1, v0, Lz/Q;

    .line 184
    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    check-cast v0, Lz/Q;

    .line 188
    .line 189
    iget-object v1, p0, Landroidx/fragment/app/i0;->q:Landroidx/fragment/app/T;

    .line 190
    .line 191
    invoke-interface {v0, v1}, Lz/Q;->removeOnPictureInPictureModeChangedListener(LL/a;)V

    .line 192
    .line 193
    .line 194
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 195
    .line 196
    instance-of v1, v0, LM/x;

    .line 197
    .line 198
    if-eqz v1, :cond_a

    .line 199
    .line 200
    check-cast v0, LM/x;

    .line 201
    .line 202
    iget-object v1, p0, Landroidx/fragment/app/i0;->r:Landroidx/fragment/app/W;

    .line 203
    .line 204
    invoke-interface {v0, v1}, LM/x;->removeMenuProvider(LM/E;)V

    .line 205
    .line 206
    .line 207
    :cond_a
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 209
    .line 210
    iput-object v0, p0, Landroidx/fragment/app/i0;->u:Landroidx/fragment/app/L;

    .line 211
    .line 212
    iput-object v0, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 213
    .line 214
    iget-object v1, p0, Landroidx/fragment/app/i0;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 215
    .line 216
    if-eqz v1, :cond_b

    .line 217
    .line 218
    iget-object v1, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/V;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroidx/activity/s;->remove()V

    .line 221
    .line 222
    .line 223
    iput-object v0, p0, Landroidx/fragment/app/i0;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 224
    .line 225
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/activity/result/d;

    .line 226
    .line 227
    if-eqz v0, :cond_c

    .line 228
    .line 229
    invoke-virtual {v0}, Landroidx/activity/result/d;->unregister()V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Landroidx/fragment/app/i0;->A:Landroidx/activity/result/d;

    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/activity/result/d;->unregister()V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Landroidx/fragment/app/i0;->B:Landroidx/activity/result/d;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroidx/activity/result/d;->unregister()V

    .line 240
    .line 241
    .line 242
    :cond_c
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 4
    .line 5
    instance-of v0, v0, LA/m;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->R(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/C;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/C;->onLowMemory()V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Landroidx/fragment/app/i0;->l(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final m(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 4
    .line 5
    instance-of v0, v0, Lz/P;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->R(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/C;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/C;->onMultiWindowModeChanged(Z)V

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/i0;->m(ZZ)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->e()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/C;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/C;->isHidden()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/C;->onHiddenChanged(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->n()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final o(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/C;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, Landroidx/fragment/app/C;->I:Z

    .line 33
    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    iget-boolean v4, v3, Landroidx/fragment/app/C;->M:Z

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    iget-boolean v4, v3, Landroidx/fragment/app/C;->N:Z

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroidx/fragment/app/C;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Landroidx/fragment/app/i0;->o(Landroid/view/MenuItem;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v3, 0x0

    .line 60
    :goto_0
    if-eqz v3, :cond_1

    .line 61
    .line 62
    return v2

    .line 63
    :cond_4
    return v1
.end method

.method public final p(Landroid/view/Menu;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/C;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-boolean v2, v1, Landroidx/fragment/app/C;->I:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-boolean v2, v1, Landroidx/fragment/app/C;->M:Z

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-boolean v2, v1, Landroidx/fragment/app/C;->N:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroidx/fragment/app/C;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroidx/fragment/app/i0;->p(Landroid/view/Menu;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    :goto_1
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {p0, v3}, Landroidx/fragment/app/i0;->v(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/fragment/app/C;->getChildFragmentManager()Landroidx/fragment/app/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroidx/fragment/app/i0;->popBackStackImmediate()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v5, p0, Landroidx/fragment/app/i0;->J:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v4, v5, v0, v1}, Landroidx/fragment/app/i0;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iput-boolean v3, p0, Landroidx/fragment/app/i0;->b:Z

    .line 37
    .line 38
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v4, p0, Landroidx/fragment/app/i0;->J:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/i0;->I(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->d()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->d()V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->S()V

    .line 55
    .line 56
    .line 57
    iget-boolean v1, p0, Landroidx/fragment/app/i0;->H:Z

    .line 58
    .line 59
    iget-object v4, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iput-boolean v2, p0, Landroidx/fragment/app/i0;->H:Z

    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/fragment/app/t0;->d()Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroidx/fragment/app/s0;

    .line 84
    .line 85
    iget-object v6, v5, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 86
    .line 87
    iget-boolean v7, v6, Landroidx/fragment/app/C;->R:Z

    .line 88
    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    iget-boolean v7, p0, Landroidx/fragment/app/i0;->b:Z

    .line 92
    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    iput-boolean v3, p0, Landroidx/fragment/app/i0;->H:Z

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iput-boolean v2, v6, Landroidx/fragment/app/C;->R:Z

    .line 99
    .line 100
    invoke-virtual {v5}, Landroidx/fragment/app/s0;->k()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object v1, v4, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 105
    .line 106
    check-cast v1, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    move v3, v0

    .line 121
    :goto_2
    return v3
.end method

.method public final q(Landroidx/fragment/app/C;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/C;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroidx/fragment/app/i0;->D(Landroidx/fragment/app/C;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p1, Landroidx/fragment/app/C;->t:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v1, v0, :cond_1

    .line 35
    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p1, Landroidx/fragment/app/C;->t:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/fragment/app/C;->onPrimaryNavigationFragmentChanged(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/i0;->S()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Landroidx/fragment/app/i0;->w:Landroidx/fragment/app/C;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/fragment/app/i0;->q(Landroidx/fragment/app/C;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final r(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 4
    .line 5
    instance-of v0, v0, Lz/Q;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->R(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/C;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/C;->onPictureInPictureModeChanged(Z)V

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/i0;->r(ZZ)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final s(Landroid/view/Menu;)Z
    .locals 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/C;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/C;->isMenuVisible()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-boolean v4, v3, Landroidx/fragment/app/C;->I:Z

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    iget-boolean v4, v3, Landroidx/fragment/app/C;->M:Z

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    iget-boolean v4, v3, Landroidx/fragment/app/C;->N:Z

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Landroidx/fragment/app/C;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/C;->D:Landroidx/fragment/app/j0;

    .line 56
    .line 57
    invoke-virtual {v3, p1}, Landroidx/fragment/app/i0;->s(Landroid/view/Menu;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    or-int/2addr v5, v3

    .line 62
    :cond_3
    if-eqz v5, :cond_1

    .line 63
    .line 64
    move v1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    return v1
.end method

.method public final t(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/s0;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iput p1, v3, Landroidx/fragment/app/s0;->e:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/i0;->E(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->e()Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/fragment/app/M0;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/fragment/app/M0;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 72
    .line 73
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final u(Landroidx/fragment/app/g0;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->G:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->isStateSaved()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "Activity has been destroyed"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->L()V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->G:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/P;->getHandler()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-ne v0, v1, :cond_5

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->isStateSaved()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/fragment/app/i0;->J:Ljava/util/ArrayList;

    .line 79
    .line 80
    :cond_4
    return-void

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "Must be called from main thread of fragment host"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "FragmentManager is already executing transactions"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final w(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->v(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    move v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/i0;->J:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    move v6, p1

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    move v5, p1

    .line 34
    move v6, v5

    .line 35
    :goto_1
    if-ge v5, v4, :cond_1

    .line 36
    .line 37
    iget-object v7, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Landroidx/fragment/app/g0;

    .line 44
    .line 45
    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/g0;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 46
    .line 47
    .line 48
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    or-int/2addr v6, v7

    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    goto :goto_4

    .line 55
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/fragment/app/P;->getHandler()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p0, Landroidx/fragment/app/i0;->M:Landroidx/fragment/app/Z;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :goto_2
    if-eqz v6, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 76
    .line 77
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayList;

    .line 78
    .line 79
    iget-object v2, p0, Landroidx/fragment/app/i0;->J:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/i0;->I(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->d()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_2
    move-exception p1

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->d()V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->S()V

    .line 94
    .line 95
    .line 96
    iget-boolean v1, p0, Landroidx/fragment/app/i0;->H:Z

    .line 97
    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->H:Z

    .line 101
    .line 102
    iget-object p1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/fragment/app/t0;->d()Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroidx/fragment/app/s0;

    .line 123
    .line 124
    iget-object v2, v1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 125
    .line 126
    iget-boolean v3, v2, Landroidx/fragment/app/C;->R:Z

    .line 127
    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    iget-boolean v3, p0, Landroidx/fragment/app/i0;->b:Z

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->H:Z

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    const/4 v3, 0x0

    .line 139
    iput-boolean v3, v2, Landroidx/fragment/app/C;->R:Z

    .line 140
    .line 141
    invoke-virtual {v1}, Landroidx/fragment/app/s0;->k()V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 146
    .line 147
    iget-object p1, p1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 148
    .line 149
    check-cast p1, Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 161
    .line 162
    .line 163
    return v0

    .line 164
    :goto_4
    :try_start_4
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Landroidx/fragment/app/i0;->t:Landroidx/fragment/app/P;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/fragment/app/P;->getHandler()Landroid/os/Handler;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v1, p0, Landroidx/fragment/app/i0;->M:Landroidx/fragment/app/Z;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    throw p1
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroidx/fragment/app/a;

    .line 16
    .line 17
    iget-boolean v5, v5, Landroidx/fragment/app/v0;->o:Z

    .line 18
    .line 19
    iget-object v6, v1, Landroidx/fragment/app/i0;->K:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v6, v1, Landroidx/fragment/app/i0;->K:Ljava/util/ArrayList;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v6, v1, Landroidx/fragment/app/i0;->K:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v7, v1, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroidx/fragment/app/t0;->f()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->getPrimaryNavigationFragment()Landroidx/fragment/app/C;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    move v9, v3

    .line 50
    const/4 v10, 0x0

    .line 51
    :goto_1
    const/4 v11, 0x1

    .line 52
    if-ge v9, v4, :cond_13

    .line 53
    .line 54
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    check-cast v13, Landroidx/fragment/app/a;

    .line 59
    .line 60
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    check-cast v14, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    if-nez v14, :cond_d

    .line 71
    .line 72
    iget-object v14, v1, Landroidx/fragment/app/i0;->K:Ljava/util/ArrayList;

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    :goto_2
    iget-object v8, v13, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    if-ge v12, v15, :cond_c

    .line 82
    .line 83
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    check-cast v15, Landroidx/fragment/app/u0;

    .line 88
    .line 89
    iget v3, v15, Landroidx/fragment/app/u0;->a:I

    .line 90
    .line 91
    if-eq v3, v11, :cond_b

    .line 92
    .line 93
    const/4 v11, 0x2

    .line 94
    move/from16 v17, v5

    .line 95
    .line 96
    const/16 v5, 0x9

    .line 97
    .line 98
    if-eq v3, v11, :cond_5

    .line 99
    .line 100
    const/4 v11, 0x3

    .line 101
    if-eq v3, v11, :cond_4

    .line 102
    .line 103
    const/4 v11, 0x6

    .line 104
    if-eq v3, v11, :cond_4

    .line 105
    .line 106
    const/4 v11, 0x7

    .line 107
    if-eq v3, v11, :cond_3

    .line 108
    .line 109
    const/16 v11, 0x8

    .line 110
    .line 111
    if-eq v3, v11, :cond_1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_1
    new-instance v3, Landroidx/fragment/app/u0;

    .line 115
    .line 116
    const/4 v11, 0x0

    .line 117
    invoke-direct {v3, v5, v6, v11}, Landroidx/fragment/app/u0;-><init>(ILandroidx/fragment/app/C;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    iput-boolean v3, v15, Landroidx/fragment/app/u0;->c:Z

    .line 125
    .line 126
    add-int/lit8 v12, v12, 0x1

    .line 127
    .line 128
    iget-object v3, v15, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 129
    .line 130
    move-object v6, v3

    .line 131
    :cond_2
    :goto_3
    move/from16 v20, v9

    .line 132
    .line 133
    move/from16 v19, v10

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :cond_3
    const/4 v5, 0x1

    .line 139
    :goto_4
    move/from16 v20, v9

    .line 140
    .line 141
    move/from16 v19, v10

    .line 142
    .line 143
    goto/16 :goto_8

    .line 144
    .line 145
    :cond_4
    iget-object v3, v15, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 146
    .line 147
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object v3, v15, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 151
    .line 152
    if-ne v3, v6, :cond_2

    .line 153
    .line 154
    new-instance v6, Landroidx/fragment/app/u0;

    .line 155
    .line 156
    invoke-direct {v6, v5, v3}, Landroidx/fragment/app/u0;-><init>(ILandroidx/fragment/app/C;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v12, v12, 0x1

    .line 163
    .line 164
    move/from16 v20, v9

    .line 165
    .line 166
    move/from16 v19, v10

    .line 167
    .line 168
    const/4 v5, 0x1

    .line 169
    const/4 v6, 0x0

    .line 170
    goto/16 :goto_9

    .line 171
    .line 172
    :cond_5
    iget-object v3, v15, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 173
    .line 174
    iget v11, v3, Landroidx/fragment/app/C;->G:I

    .line 175
    .line 176
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v18

    .line 180
    const/16 v16, 0x1

    .line 181
    .line 182
    add-int/lit8 v18, v18, -0x1

    .line 183
    .line 184
    move/from16 v5, v18

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    :goto_5
    if-ltz v5, :cond_9

    .line 189
    .line 190
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v20

    .line 194
    move/from16 v21, v5

    .line 195
    .line 196
    move-object/from16 v5, v20

    .line 197
    .line 198
    check-cast v5, Landroidx/fragment/app/C;

    .line 199
    .line 200
    move/from16 v20, v9

    .line 201
    .line 202
    iget v9, v5, Landroidx/fragment/app/C;->G:I

    .line 203
    .line 204
    if-ne v9, v11, :cond_8

    .line 205
    .line 206
    if-ne v5, v3, :cond_6

    .line 207
    .line 208
    move/from16 v19, v10

    .line 209
    .line 210
    const/4 v5, 0x1

    .line 211
    const/16 v18, 0x1

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_6
    if-ne v5, v6, :cond_7

    .line 215
    .line 216
    new-instance v6, Landroidx/fragment/app/u0;

    .line 217
    .line 218
    move/from16 v19, v10

    .line 219
    .line 220
    const/4 v9, 0x0

    .line 221
    const/16 v10, 0x9

    .line 222
    .line 223
    invoke-direct {v6, v10, v5, v9}, Landroidx/fragment/app/u0;-><init>(ILandroidx/fragment/app/C;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    add-int/lit8 v12, v12, 0x1

    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    goto :goto_6

    .line 233
    :cond_7
    move/from16 v19, v10

    .line 234
    .line 235
    const/4 v9, 0x0

    .line 236
    const/16 v10, 0x9

    .line 237
    .line 238
    :goto_6
    new-instance v10, Landroidx/fragment/app/u0;

    .line 239
    .line 240
    move-object/from16 v22, v6

    .line 241
    .line 242
    const/4 v6, 0x3

    .line 243
    invoke-direct {v10, v6, v5, v9}, Landroidx/fragment/app/u0;-><init>(ILandroidx/fragment/app/C;I)V

    .line 244
    .line 245
    .line 246
    iget v6, v15, Landroidx/fragment/app/u0;->d:I

    .line 247
    .line 248
    iput v6, v10, Landroidx/fragment/app/u0;->d:I

    .line 249
    .line 250
    iget v6, v15, Landroidx/fragment/app/u0;->f:I

    .line 251
    .line 252
    iput v6, v10, Landroidx/fragment/app/u0;->f:I

    .line 253
    .line 254
    iget v6, v15, Landroidx/fragment/app/u0;->e:I

    .line 255
    .line 256
    iput v6, v10, Landroidx/fragment/app/u0;->e:I

    .line 257
    .line 258
    iget v6, v15, Landroidx/fragment/app/u0;->g:I

    .line 259
    .line 260
    iput v6, v10, Landroidx/fragment/app/u0;->g:I

    .line 261
    .line 262
    invoke-virtual {v8, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    const/4 v5, 0x1

    .line 269
    add-int/2addr v12, v5

    .line 270
    move-object/from16 v6, v22

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_8
    move/from16 v19, v10

    .line 274
    .line 275
    const/4 v5, 0x1

    .line 276
    :goto_7
    add-int/lit8 v9, v21, -0x1

    .line 277
    .line 278
    move v5, v9

    .line 279
    move/from16 v10, v19

    .line 280
    .line 281
    move/from16 v9, v20

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_9
    move/from16 v20, v9

    .line 285
    .line 286
    move/from16 v19, v10

    .line 287
    .line 288
    const/4 v5, 0x1

    .line 289
    if-eqz v18, :cond_a

    .line 290
    .line 291
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    add-int/lit8 v12, v12, -0x1

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_a
    iput v5, v15, Landroidx/fragment/app/u0;->a:I

    .line 298
    .line 299
    iput-boolean v5, v15, Landroidx/fragment/app/u0;->c:Z

    .line 300
    .line 301
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_b
    move/from16 v17, v5

    .line 306
    .line 307
    move v5, v11

    .line 308
    goto/16 :goto_4

    .line 309
    .line 310
    :goto_8
    iget-object v3, v15, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 311
    .line 312
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    :goto_9
    add-int/2addr v12, v5

    .line 316
    move/from16 v3, p3

    .line 317
    .line 318
    move v11, v5

    .line 319
    move/from16 v5, v17

    .line 320
    .line 321
    move/from16 v10, v19

    .line 322
    .line 323
    move/from16 v9, v20

    .line 324
    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :cond_c
    move/from16 v17, v5

    .line 328
    .line 329
    move/from16 v20, v9

    .line 330
    .line 331
    move/from16 v19, v10

    .line 332
    .line 333
    goto :goto_c

    .line 334
    :cond_d
    move/from16 v17, v5

    .line 335
    .line 336
    move/from16 v20, v9

    .line 337
    .line 338
    move/from16 v19, v10

    .line 339
    .line 340
    move v5, v11

    .line 341
    iget-object v3, v1, Landroidx/fragment/app/i0;->K:Ljava/util/ArrayList;

    .line 342
    .line 343
    iget-object v8, v13, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    sub-int/2addr v9, v5

    .line 350
    :goto_a
    if-ltz v9, :cond_10

    .line 351
    .line 352
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    check-cast v10, Landroidx/fragment/app/u0;

    .line 357
    .line 358
    iget v11, v10, Landroidx/fragment/app/u0;->a:I

    .line 359
    .line 360
    if-eq v11, v5, :cond_f

    .line 361
    .line 362
    const/4 v5, 0x3

    .line 363
    if-eq v11, v5, :cond_e

    .line 364
    .line 365
    packed-switch v11, :pswitch_data_0

    .line 366
    .line 367
    .line 368
    goto :goto_b

    .line 369
    :pswitch_0
    iget-object v11, v10, Landroidx/fragment/app/u0;->h:Landroidx/lifecycle/Lifecycle$State;

    .line 370
    .line 371
    iput-object v11, v10, Landroidx/fragment/app/u0;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :pswitch_1
    iget-object v6, v10, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 375
    .line 376
    goto :goto_b

    .line 377
    :pswitch_2
    const/4 v6, 0x0

    .line 378
    goto :goto_b

    .line 379
    :cond_e
    :pswitch_3
    iget-object v10, v10, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 380
    .line 381
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_f
    const/4 v5, 0x3

    .line 386
    :pswitch_4
    iget-object v10, v10, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 387
    .line 388
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    :goto_b
    add-int/lit8 v9, v9, -0x1

    .line 392
    .line 393
    const/4 v5, 0x1

    .line 394
    goto :goto_a

    .line 395
    :cond_10
    :goto_c
    if-nez v19, :cond_12

    .line 396
    .line 397
    iget-boolean v3, v13, Landroidx/fragment/app/v0;->g:Z

    .line 398
    .line 399
    if-eqz v3, :cond_11

    .line 400
    .line 401
    goto :goto_d

    .line 402
    :cond_11
    const/4 v10, 0x0

    .line 403
    goto :goto_e

    .line 404
    :cond_12
    :goto_d
    const/4 v10, 0x1

    .line 405
    :goto_e
    add-int/lit8 v9, v20, 0x1

    .line 406
    .line 407
    move/from16 v3, p3

    .line 408
    .line 409
    move/from16 v5, v17

    .line 410
    .line 411
    goto/16 :goto_1

    .line 412
    .line 413
    :cond_13
    move/from16 v17, v5

    .line 414
    .line 415
    iget-object v3, v1, Landroidx/fragment/app/i0;->K:Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 418
    .line 419
    .line 420
    if-nez v17, :cond_16

    .line 421
    .line 422
    iget v3, v1, Landroidx/fragment/app/i0;->s:I

    .line 423
    .line 424
    const/4 v5, 0x1

    .line 425
    if-lt v3, v5, :cond_16

    .line 426
    .line 427
    move/from16 v3, p3

    .line 428
    .line 429
    :goto_f
    if-ge v3, v4, :cond_16

    .line 430
    .line 431
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    check-cast v5, Landroidx/fragment/app/a;

    .line 436
    .line 437
    iget-object v5, v5, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    :cond_14
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-eqz v6, :cond_15

    .line 448
    .line 449
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    check-cast v6, Landroidx/fragment/app/u0;

    .line 454
    .line 455
    iget-object v6, v6, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 456
    .line 457
    if-eqz v6, :cond_14

    .line 458
    .line 459
    iget-object v8, v6, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 460
    .line 461
    if-eqz v8, :cond_14

    .line 462
    .line 463
    invoke-virtual {v1, v6}, Landroidx/fragment/app/i0;->f(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v7, v6}, Landroidx/fragment/app/t0;->g(Landroidx/fragment/app/s0;)V

    .line 468
    .line 469
    .line 470
    goto :goto_10

    .line 471
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 472
    .line 473
    goto :goto_f

    .line 474
    :cond_16
    move/from16 v3, p3

    .line 475
    .line 476
    :goto_11
    const/4 v5, -0x1

    .line 477
    if-ge v3, v4, :cond_22

    .line 478
    .line 479
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    check-cast v6, Landroidx/fragment/app/a;

    .line 484
    .line 485
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    check-cast v7, Ljava/lang/Boolean;

    .line 490
    .line 491
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    const-string v8, "Unknown cmd: "

    .line 496
    .line 497
    if-eqz v7, :cond_1e

    .line 498
    .line 499
    invoke-virtual {v6, v5}, Landroidx/fragment/app/a;->c(I)V

    .line 500
    .line 501
    .line 502
    iget-object v5, v6, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    const/4 v9, 0x1

    .line 509
    sub-int/2addr v7, v9

    .line 510
    :goto_12
    if-ltz v7, :cond_1d

    .line 511
    .line 512
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v10

    .line 516
    check-cast v10, Landroidx/fragment/app/u0;

    .line 517
    .line 518
    iget-object v11, v10, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 519
    .line 520
    if-eqz v11, :cond_1c

    .line 521
    .line 522
    iget-object v12, v11, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 523
    .line 524
    if-nez v12, :cond_17

    .line 525
    .line 526
    goto :goto_13

    .line 527
    :cond_17
    invoke-virtual {v11}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 528
    .line 529
    .line 530
    move-result-object v12

    .line 531
    iput-boolean v9, v12, Landroidx/fragment/app/B;->a:Z

    .line 532
    .line 533
    :goto_13
    iget v9, v6, Landroidx/fragment/app/v0;->f:I

    .line 534
    .line 535
    const/16 v12, 0x2002

    .line 536
    .line 537
    const/16 v13, 0x1001

    .line 538
    .line 539
    if-eq v9, v13, :cond_1a

    .line 540
    .line 541
    if-eq v9, v12, :cond_18

    .line 542
    .line 543
    const/16 v12, 0x1004

    .line 544
    .line 545
    const/16 v13, 0x2005

    .line 546
    .line 547
    if-eq v9, v13, :cond_1a

    .line 548
    .line 549
    const/16 v14, 0x1003

    .line 550
    .line 551
    if-eq v9, v14, :cond_19

    .line 552
    .line 553
    if-eq v9, v12, :cond_18

    .line 554
    .line 555
    const/4 v12, 0x0

    .line 556
    goto :goto_14

    .line 557
    :cond_18
    move v12, v13

    .line 558
    goto :goto_14

    .line 559
    :cond_19
    move v12, v14

    .line 560
    :cond_1a
    :goto_14
    iget-object v9, v11, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 561
    .line 562
    if-nez v9, :cond_1b

    .line 563
    .line 564
    if-nez v12, :cond_1b

    .line 565
    .line 566
    goto :goto_15

    .line 567
    :cond_1b
    invoke-virtual {v11}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 568
    .line 569
    .line 570
    iget-object v9, v11, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 571
    .line 572
    iput v12, v9, Landroidx/fragment/app/B;->f:I

    .line 573
    .line 574
    :goto_15
    iget-object v9, v6, Landroidx/fragment/app/v0;->n:Ljava/util/ArrayList;

    .line 575
    .line 576
    iget-object v12, v6, Landroidx/fragment/app/v0;->m:Ljava/util/ArrayList;

    .line 577
    .line 578
    invoke-virtual {v11}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 579
    .line 580
    .line 581
    iget-object v13, v11, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 582
    .line 583
    iput-object v9, v13, Landroidx/fragment/app/B;->g:Ljava/util/ArrayList;

    .line 584
    .line 585
    iput-object v12, v13, Landroidx/fragment/app/B;->h:Ljava/util/ArrayList;

    .line 586
    .line 587
    :cond_1c
    iget v9, v10, Landroidx/fragment/app/u0;->a:I

    .line 588
    .line 589
    iget-object v12, v6, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/i0;

    .line 590
    .line 591
    packed-switch v9, :pswitch_data_1

    .line 592
    .line 593
    .line 594
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 595
    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget v3, v10, Landroidx/fragment/app/u0;->a:I

    .line 602
    .line 603
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw v0

    .line 614
    :pswitch_6
    iget-object v9, v10, Landroidx/fragment/app/u0;->h:Landroidx/lifecycle/Lifecycle$State;

    .line 615
    .line 616
    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/i0;->N(Landroidx/fragment/app/C;Landroidx/lifecycle/Lifecycle$State;)V

    .line 617
    .line 618
    .line 619
    :goto_16
    const/4 v9, 0x1

    .line 620
    goto/16 :goto_17

    .line 621
    .line 622
    :pswitch_7
    invoke-virtual {v12, v11}, Landroidx/fragment/app/i0;->O(Landroidx/fragment/app/C;)V

    .line 623
    .line 624
    .line 625
    goto :goto_16

    .line 626
    :pswitch_8
    const/4 v9, 0x0

    .line 627
    invoke-virtual {v12, v9}, Landroidx/fragment/app/i0;->O(Landroidx/fragment/app/C;)V

    .line 628
    .line 629
    .line 630
    goto :goto_16

    .line 631
    :pswitch_9
    iget v9, v10, Landroidx/fragment/app/u0;->d:I

    .line 632
    .line 633
    iget v13, v10, Landroidx/fragment/app/u0;->e:I

    .line 634
    .line 635
    iget v14, v10, Landroidx/fragment/app/u0;->f:I

    .line 636
    .line 637
    iget v10, v10, Landroidx/fragment/app/u0;->g:I

    .line 638
    .line 639
    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/C;->h(IIII)V

    .line 640
    .line 641
    .line 642
    const/4 v9, 0x1

    .line 643
    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/C;Z)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v12, v11}, Landroidx/fragment/app/i0;->g(Landroidx/fragment/app/C;)V

    .line 647
    .line 648
    .line 649
    goto :goto_16

    .line 650
    :pswitch_a
    iget v9, v10, Landroidx/fragment/app/u0;->d:I

    .line 651
    .line 652
    iget v13, v10, Landroidx/fragment/app/u0;->e:I

    .line 653
    .line 654
    iget v14, v10, Landroidx/fragment/app/u0;->f:I

    .line 655
    .line 656
    iget v10, v10, Landroidx/fragment/app/u0;->g:I

    .line 657
    .line 658
    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/C;->h(IIII)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v12, v11}, Landroidx/fragment/app/i0;->c(Landroidx/fragment/app/C;)V

    .line 662
    .line 663
    .line 664
    goto :goto_16

    .line 665
    :pswitch_b
    iget v9, v10, Landroidx/fragment/app/u0;->d:I

    .line 666
    .line 667
    iget v13, v10, Landroidx/fragment/app/u0;->e:I

    .line 668
    .line 669
    iget v14, v10, Landroidx/fragment/app/u0;->f:I

    .line 670
    .line 671
    iget v10, v10, Landroidx/fragment/app/u0;->g:I

    .line 672
    .line 673
    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/C;->h(IIII)V

    .line 674
    .line 675
    .line 676
    const/4 v9, 0x1

    .line 677
    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/C;Z)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v12, v11}, Landroidx/fragment/app/i0;->A(Landroidx/fragment/app/C;)V

    .line 681
    .line 682
    .line 683
    goto :goto_16

    .line 684
    :pswitch_c
    iget v9, v10, Landroidx/fragment/app/u0;->d:I

    .line 685
    .line 686
    iget v13, v10, Landroidx/fragment/app/u0;->e:I

    .line 687
    .line 688
    iget v14, v10, Landroidx/fragment/app/u0;->f:I

    .line 689
    .line 690
    iget v10, v10, Landroidx/fragment/app/u0;->g:I

    .line 691
    .line 692
    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/C;->h(IIII)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    invoke-static {v11}, Landroidx/fragment/app/i0;->Q(Landroidx/fragment/app/C;)V

    .line 699
    .line 700
    .line 701
    goto :goto_16

    .line 702
    :pswitch_d
    iget v9, v10, Landroidx/fragment/app/u0;->d:I

    .line 703
    .line 704
    iget v13, v10, Landroidx/fragment/app/u0;->e:I

    .line 705
    .line 706
    iget v14, v10, Landroidx/fragment/app/u0;->f:I

    .line 707
    .line 708
    iget v10, v10, Landroidx/fragment/app/u0;->g:I

    .line 709
    .line 710
    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/C;->h(IIII)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v12, v11}, Landroidx/fragment/app/i0;->a(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;

    .line 714
    .line 715
    .line 716
    goto :goto_16

    .line 717
    :pswitch_e
    iget v9, v10, Landroidx/fragment/app/u0;->d:I

    .line 718
    .line 719
    iget v13, v10, Landroidx/fragment/app/u0;->e:I

    .line 720
    .line 721
    iget v14, v10, Landroidx/fragment/app/u0;->f:I

    .line 722
    .line 723
    iget v10, v10, Landroidx/fragment/app/u0;->g:I

    .line 724
    .line 725
    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/C;->h(IIII)V

    .line 726
    .line 727
    .line 728
    const/4 v9, 0x1

    .line 729
    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/C;Z)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v12, v11}, Landroidx/fragment/app/i0;->H(Landroidx/fragment/app/C;)V

    .line 733
    .line 734
    .line 735
    :goto_17
    add-int/lit8 v7, v7, -0x1

    .line 736
    .line 737
    goto/16 :goto_12

    .line 738
    .line 739
    :cond_1d
    const/4 v9, 0x0

    .line 740
    goto/16 :goto_1d

    .line 741
    .line 742
    :cond_1e
    const/4 v9, 0x1

    .line 743
    invoke-virtual {v6, v9}, Landroidx/fragment/app/a;->c(I)V

    .line 744
    .line 745
    .line 746
    iget-object v5, v6, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 749
    .line 750
    .line 751
    move-result v7

    .line 752
    const/4 v11, 0x0

    .line 753
    :goto_18
    if-ge v11, v7, :cond_1d

    .line 754
    .line 755
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v9

    .line 759
    check-cast v9, Landroidx/fragment/app/u0;

    .line 760
    .line 761
    iget-object v10, v9, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 762
    .line 763
    if-eqz v10, :cond_21

    .line 764
    .line 765
    iget-object v12, v10, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 766
    .line 767
    if-nez v12, :cond_1f

    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_1f
    invoke-virtual {v10}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 771
    .line 772
    .line 773
    move-result-object v12

    .line 774
    const/4 v13, 0x0

    .line 775
    iput-boolean v13, v12, Landroidx/fragment/app/B;->a:Z

    .line 776
    .line 777
    :goto_19
    iget v12, v6, Landroidx/fragment/app/v0;->f:I

    .line 778
    .line 779
    iget-object v13, v10, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 780
    .line 781
    if-nez v13, :cond_20

    .line 782
    .line 783
    if-nez v12, :cond_20

    .line 784
    .line 785
    goto :goto_1a

    .line 786
    :cond_20
    invoke-virtual {v10}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 787
    .line 788
    .line 789
    iget-object v13, v10, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 790
    .line 791
    iput v12, v13, Landroidx/fragment/app/B;->f:I

    .line 792
    .line 793
    :goto_1a
    iget-object v12, v6, Landroidx/fragment/app/v0;->m:Ljava/util/ArrayList;

    .line 794
    .line 795
    iget-object v13, v6, Landroidx/fragment/app/v0;->n:Ljava/util/ArrayList;

    .line 796
    .line 797
    invoke-virtual {v10}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 798
    .line 799
    .line 800
    iget-object v14, v10, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 801
    .line 802
    iput-object v12, v14, Landroidx/fragment/app/B;->g:Ljava/util/ArrayList;

    .line 803
    .line 804
    iput-object v13, v14, Landroidx/fragment/app/B;->h:Ljava/util/ArrayList;

    .line 805
    .line 806
    :cond_21
    iget v12, v9, Landroidx/fragment/app/u0;->a:I

    .line 807
    .line 808
    iget-object v13, v6, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/i0;

    .line 809
    .line 810
    packed-switch v12, :pswitch_data_2

    .line 811
    .line 812
    .line 813
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 814
    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    .line 816
    .line 817
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    iget v3, v9, Landroidx/fragment/app/u0;->a:I

    .line 821
    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    throw v0

    .line 833
    :pswitch_10
    iget-object v9, v9, Landroidx/fragment/app/u0;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 834
    .line 835
    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/i0;->N(Landroidx/fragment/app/C;Landroidx/lifecycle/Lifecycle$State;)V

    .line 836
    .line 837
    .line 838
    :goto_1b
    const/4 v9, 0x0

    .line 839
    goto/16 :goto_1c

    .line 840
    .line 841
    :pswitch_11
    const/4 v12, 0x0

    .line 842
    invoke-virtual {v13, v12}, Landroidx/fragment/app/i0;->O(Landroidx/fragment/app/C;)V

    .line 843
    .line 844
    .line 845
    goto :goto_1b

    .line 846
    :pswitch_12
    const/4 v12, 0x0

    .line 847
    invoke-virtual {v13, v10}, Landroidx/fragment/app/i0;->O(Landroidx/fragment/app/C;)V

    .line 848
    .line 849
    .line 850
    goto :goto_1b

    .line 851
    :pswitch_13
    const/4 v12, 0x0

    .line 852
    iget v14, v9, Landroidx/fragment/app/u0;->d:I

    .line 853
    .line 854
    iget v15, v9, Landroidx/fragment/app/u0;->e:I

    .line 855
    .line 856
    iget v12, v9, Landroidx/fragment/app/u0;->f:I

    .line 857
    .line 858
    iget v9, v9, Landroidx/fragment/app/u0;->g:I

    .line 859
    .line 860
    invoke-virtual {v10, v14, v15, v12, v9}, Landroidx/fragment/app/C;->h(IIII)V

    .line 861
    .line 862
    .line 863
    const/4 v9, 0x0

    .line 864
    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/C;Z)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v13, v10}, Landroidx/fragment/app/i0;->c(Landroidx/fragment/app/C;)V

    .line 868
    .line 869
    .line 870
    goto :goto_1b

    .line 871
    :pswitch_14
    iget v12, v9, Landroidx/fragment/app/u0;->d:I

    .line 872
    .line 873
    iget v14, v9, Landroidx/fragment/app/u0;->e:I

    .line 874
    .line 875
    iget v15, v9, Landroidx/fragment/app/u0;->f:I

    .line 876
    .line 877
    iget v9, v9, Landroidx/fragment/app/u0;->g:I

    .line 878
    .line 879
    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/C;->h(IIII)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v13, v10}, Landroidx/fragment/app/i0;->g(Landroidx/fragment/app/C;)V

    .line 883
    .line 884
    .line 885
    goto :goto_1b

    .line 886
    :pswitch_15
    iget v12, v9, Landroidx/fragment/app/u0;->d:I

    .line 887
    .line 888
    iget v14, v9, Landroidx/fragment/app/u0;->e:I

    .line 889
    .line 890
    iget v15, v9, Landroidx/fragment/app/u0;->f:I

    .line 891
    .line 892
    iget v9, v9, Landroidx/fragment/app/u0;->g:I

    .line 893
    .line 894
    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/C;->h(IIII)V

    .line 895
    .line 896
    .line 897
    const/4 v9, 0x0

    .line 898
    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/C;Z)V

    .line 899
    .line 900
    .line 901
    invoke-static {v10}, Landroidx/fragment/app/i0;->Q(Landroidx/fragment/app/C;)V

    .line 902
    .line 903
    .line 904
    goto :goto_1b

    .line 905
    :pswitch_16
    iget v12, v9, Landroidx/fragment/app/u0;->d:I

    .line 906
    .line 907
    iget v14, v9, Landroidx/fragment/app/u0;->e:I

    .line 908
    .line 909
    iget v15, v9, Landroidx/fragment/app/u0;->f:I

    .line 910
    .line 911
    iget v9, v9, Landroidx/fragment/app/u0;->g:I

    .line 912
    .line 913
    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/C;->h(IIII)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v13, v10}, Landroidx/fragment/app/i0;->A(Landroidx/fragment/app/C;)V

    .line 917
    .line 918
    .line 919
    goto :goto_1b

    .line 920
    :pswitch_17
    iget v12, v9, Landroidx/fragment/app/u0;->d:I

    .line 921
    .line 922
    iget v14, v9, Landroidx/fragment/app/u0;->e:I

    .line 923
    .line 924
    iget v15, v9, Landroidx/fragment/app/u0;->f:I

    .line 925
    .line 926
    iget v9, v9, Landroidx/fragment/app/u0;->g:I

    .line 927
    .line 928
    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/C;->h(IIII)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v13, v10}, Landroidx/fragment/app/i0;->H(Landroidx/fragment/app/C;)V

    .line 932
    .line 933
    .line 934
    goto :goto_1b

    .line 935
    :pswitch_18
    iget v12, v9, Landroidx/fragment/app/u0;->d:I

    .line 936
    .line 937
    iget v14, v9, Landroidx/fragment/app/u0;->e:I

    .line 938
    .line 939
    iget v15, v9, Landroidx/fragment/app/u0;->f:I

    .line 940
    .line 941
    iget v9, v9, Landroidx/fragment/app/u0;->g:I

    .line 942
    .line 943
    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/C;->h(IIII)V

    .line 944
    .line 945
    .line 946
    const/4 v9, 0x0

    .line 947
    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/C;Z)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v13, v10}, Landroidx/fragment/app/i0;->a(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;

    .line 951
    .line 952
    .line 953
    :goto_1c
    add-int/lit8 v11, v11, 0x1

    .line 954
    .line 955
    goto/16 :goto_18

    .line 956
    .line 957
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    .line 958
    .line 959
    goto/16 :goto_11

    .line 960
    .line 961
    :cond_22
    add-int/lit8 v3, v4, -0x1

    .line 962
    .line 963
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v3

    .line 967
    check-cast v3, Ljava/lang/Boolean;

    .line 968
    .line 969
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    move/from16 v6, p3

    .line 974
    .line 975
    :goto_1e
    if-ge v6, v4, :cond_27

    .line 976
    .line 977
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v7

    .line 981
    check-cast v7, Landroidx/fragment/app/a;

    .line 982
    .line 983
    if-eqz v3, :cond_24

    .line 984
    .line 985
    iget-object v8, v7, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 986
    .line 987
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 988
    .line 989
    .line 990
    move-result v8

    .line 991
    const/16 v16, 0x1

    .line 992
    .line 993
    add-int/lit8 v8, v8, -0x1

    .line 994
    .line 995
    :goto_1f
    if-ltz v8, :cond_26

    .line 996
    .line 997
    iget-object v9, v7, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v9

    .line 1003
    check-cast v9, Landroidx/fragment/app/u0;

    .line 1004
    .line 1005
    iget-object v9, v9, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 1006
    .line 1007
    if-eqz v9, :cond_23

    .line 1008
    .line 1009
    invoke-virtual {v1, v9}, Landroidx/fragment/app/i0;->f(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v9

    .line 1013
    invoke-virtual {v9}, Landroidx/fragment/app/s0;->k()V

    .line 1014
    .line 1015
    .line 1016
    :cond_23
    add-int/lit8 v8, v8, -0x1

    .line 1017
    .line 1018
    goto :goto_1f

    .line 1019
    :cond_24
    iget-object v7, v7, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 1020
    .line 1021
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v7

    .line 1025
    :cond_25
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1026
    .line 1027
    .line 1028
    move-result v8

    .line 1029
    if-eqz v8, :cond_26

    .line 1030
    .line 1031
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v8

    .line 1035
    check-cast v8, Landroidx/fragment/app/u0;

    .line 1036
    .line 1037
    iget-object v8, v8, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 1038
    .line 1039
    if-eqz v8, :cond_25

    .line 1040
    .line 1041
    invoke-virtual {v1, v8}, Landroidx/fragment/app/i0;->f(Landroidx/fragment/app/C;)Landroidx/fragment/app/s0;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v8

    .line 1045
    invoke-virtual {v8}, Landroidx/fragment/app/s0;->k()V

    .line 1046
    .line 1047
    .line 1048
    goto :goto_20

    .line 1049
    :cond_26
    add-int/lit8 v6, v6, 0x1

    .line 1050
    .line 1051
    goto :goto_1e

    .line 1052
    :cond_27
    iget v6, v1, Landroidx/fragment/app/i0;->s:I

    .line 1053
    .line 1054
    const/4 v9, 0x1

    .line 1055
    invoke-virtual {v1, v6, v9}, Landroidx/fragment/app/i0;->E(IZ)V

    .line 1056
    .line 1057
    .line 1058
    new-instance v6, Ljava/util/HashSet;

    .line 1059
    .line 1060
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    move/from16 v7, p3

    .line 1064
    .line 1065
    :goto_21
    if-ge v7, v4, :cond_2a

    .line 1066
    .line 1067
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v8

    .line 1071
    check-cast v8, Landroidx/fragment/app/a;

    .line 1072
    .line 1073
    iget-object v8, v8, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 1074
    .line 1075
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v8

    .line 1079
    :cond_28
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v9

    .line 1083
    if-eqz v9, :cond_29

    .line 1084
    .line 1085
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v9

    .line 1089
    check-cast v9, Landroidx/fragment/app/u0;

    .line 1090
    .line 1091
    iget-object v9, v9, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 1092
    .line 1093
    if-eqz v9, :cond_28

    .line 1094
    .line 1095
    iget-object v9, v9, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 1096
    .line 1097
    if-eqz v9, :cond_28

    .line 1098
    .line 1099
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->z()Landroidx/fragment/app/Y;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v10

    .line 1103
    invoke-static {v9, v10}, Landroidx/fragment/app/M0;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/Y;)Landroidx/fragment/app/M0;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v9

    .line 1107
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1108
    .line 1109
    .line 1110
    goto :goto_22

    .line 1111
    :cond_29
    add-int/lit8 v7, v7, 0x1

    .line 1112
    .line 1113
    goto :goto_21

    .line 1114
    :cond_2a
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v6

    .line 1118
    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v7

    .line 1122
    if-eqz v7, :cond_2d

    .line 1123
    .line 1124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v7

    .line 1128
    check-cast v7, Landroidx/fragment/app/M0;

    .line 1129
    .line 1130
    iput-boolean v3, v7, Landroidx/fragment/app/M0;->d:Z

    .line 1131
    .line 1132
    iget-object v8, v7, Landroidx/fragment/app/M0;->b:Ljava/util/ArrayList;

    .line 1133
    .line 1134
    monitor-enter v8

    .line 1135
    :try_start_0
    invoke-virtual {v7}, Landroidx/fragment/app/M0;->h()V

    .line 1136
    .line 1137
    .line 1138
    const/4 v9, 0x0

    .line 1139
    iput-boolean v9, v7, Landroidx/fragment/app/M0;->e:Z

    .line 1140
    .line 1141
    iget-object v10, v7, Landroidx/fragment/app/M0;->b:Ljava/util/ArrayList;

    .line 1142
    .line 1143
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1144
    .line 1145
    .line 1146
    move-result v10

    .line 1147
    add-int/lit8 v10, v10, -0x1

    .line 1148
    .line 1149
    :goto_24
    if-ltz v10, :cond_2c

    .line 1150
    .line 1151
    iget-object v11, v7, Landroidx/fragment/app/M0;->b:Ljava/util/ArrayList;

    .line 1152
    .line 1153
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v11

    .line 1157
    check-cast v11, Landroidx/fragment/app/L0;

    .line 1158
    .line 1159
    invoke-virtual {v11}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v12

    .line 1163
    iget-object v12, v12, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 1164
    .line 1165
    invoke-static {v12}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v12

    .line 1169
    invoke-virtual {v11}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v13

    .line 1173
    sget-object v14, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1174
    .line 1175
    if-ne v13, v14, :cond_2b

    .line 1176
    .line 1177
    if-eq v12, v14, :cond_2b

    .line 1178
    .line 1179
    invoke-virtual {v11}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v10

    .line 1183
    iget-object v10, v10, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 1184
    .line 1185
    iput-boolean v9, v7, Landroidx/fragment/app/M0;->e:Z

    .line 1186
    .line 1187
    goto :goto_25

    .line 1188
    :catchall_0
    move-exception v0

    .line 1189
    goto :goto_26

    .line 1190
    :cond_2b
    add-int/lit8 v10, v10, -0x1

    .line 1191
    .line 1192
    goto :goto_24

    .line 1193
    :cond_2c
    :goto_25
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-virtual {v7}, Landroidx/fragment/app/M0;->c()V

    .line 1195
    .line 1196
    .line 1197
    goto :goto_23

    .line 1198
    :goto_26
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    throw v0

    .line 1200
    :cond_2d
    move/from16 v3, p3

    .line 1201
    .line 1202
    :goto_27
    if-ge v3, v4, :cond_2f

    .line 1203
    .line 1204
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v6

    .line 1208
    check-cast v6, Landroidx/fragment/app/a;

    .line 1209
    .line 1210
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v7

    .line 1214
    check-cast v7, Ljava/lang/Boolean;

    .line 1215
    .line 1216
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v7

    .line 1220
    if-eqz v7, :cond_2e

    .line 1221
    .line 1222
    iget v7, v6, Landroidx/fragment/app/a;->r:I

    .line 1223
    .line 1224
    if-ltz v7, :cond_2e

    .line 1225
    .line 1226
    iput v5, v6, Landroidx/fragment/app/a;->r:I

    .line 1227
    .line 1228
    :cond_2e
    invoke-virtual {v6}, Landroidx/fragment/app/a;->runOnCommitRunnables()V

    .line 1229
    .line 1230
    .line 1231
    add-int/lit8 v3, v3, 0x1

    .line 1232
    .line 1233
    goto :goto_27

    .line 1234
    :cond_2f
    return-void

    .line 1235
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final y(Landroidx/fragment/app/C;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Landroidx/fragment/app/C;->G:I

    .line 7
    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->u:Landroidx/fragment/app/L;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/L;->onHasView()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/fragment/app/i0;->u:Landroidx/fragment/app/L;

    .line 20
    .line 21
    iget p1, p1, Landroidx/fragment/app/C;->G:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/fragment/app/L;->onFindViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public final z()Landroidx/fragment/app/Y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->v:Landroidx/fragment/app/C;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/C;->B:Landroidx/fragment/app/i0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z()Landroidx/fragment/app/Y;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/Y;

    .line 13
    .line 14
    return-object v0
.end method
