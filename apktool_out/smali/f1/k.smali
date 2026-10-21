.class public final Lf1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/K0;


# static fields
.field public static final synthetic F:I


# instance fields
.field public A:Lf1/P;

.field public B:Lf1/Q;

.field public C:Lf1/g;

.field public D:Landroid/support/v4/media/session/MediaSessionCompat;

.field public final E:Lf1/c;

.field public final a:Landroid/content/Context;

.field public final b:Lf1/L0;

.field public final c:Lf1/B0;

.field public final d:Z

.field public e:Lf1/t;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lf1/C0;

.field public final l:Lf1/i;

.field public final m:Lf1/d;

.field public final n:Z

.field public final o:Lf1/Y;

.field public p:Lf1/l0;

.field public q:Lf1/U;

.field public r:Lf1/U;

.field public s:Lf1/U;

.field public t:Lf1/F;

.field public u:Lf1/U;

.field public v:Lf1/C;

.field public final w:Ljava/util/HashMap;

.field public x:Lf1/w;

.field public y:Lf1/w;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GlobalMediaRouter"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

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
    iput-object v0, p0, Lf1/k;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf1/k;->h:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lf1/k;->i:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lf1/k;->j:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Lf1/C0;

    .line 40
    .line 41
    invoke-direct {v0}, Lf1/C0;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lf1/k;->k:Lf1/C0;

    .line 45
    .line 46
    new-instance v0, Lf1/i;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lf1/i;-><init>(Lf1/k;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lf1/k;->l:Lf1/i;

    .line 52
    .line 53
    new-instance v0, Lf1/d;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lf1/d;-><init>(Lf1/k;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lf1/k;->m:Lf1/d;

    .line 59
    .line 60
    new-instance v0, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lf1/k;->w:Ljava/util/HashMap;

    .line 66
    .line 67
    new-instance v0, Lf1/b;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lf1/b;-><init>(Lf1/k;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lf1/c;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lf1/c;-><init>(Lf1/k;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lf1/k;->E:Lf1/c;

    .line 78
    .line 79
    iput-object p1, p0, Lf1/k;->a:Landroid/content/Context;

    .line 80
    .line 81
    const-string v0, "activity"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/app/ActivityManager;

    .line 88
    .line 89
    invoke-static {v0}, Lz/e;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput-boolean v0, p0, Lf1/k;->n:Z

    .line 94
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    const/16 v2, 0x1e

    .line 99
    .line 100
    if-lt v0, v2, :cond_0

    .line 101
    .line 102
    invoke-static {p1}, Lf1/m0;->isDeclared(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    move v3, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    const/4 v3, 0x0

    .line 111
    :goto_0
    iput-boolean v3, p0, Lf1/k;->d:Z

    .line 112
    .line 113
    if-lt v0, v2, :cond_1

    .line 114
    .line 115
    if-eqz v3, :cond_1

    .line 116
    .line 117
    new-instance v0, Lf1/t;

    .line 118
    .line 119
    new-instance v2, Lf1/h;

    .line 120
    .line 121
    invoke-direct {v2, p0}, Lf1/h;-><init>(Lf1/k;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, p1, v2}, Lf1/t;-><init>(Landroid/content/Context;Lf1/h;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 129
    :goto_1
    iput-object v0, p0, Lf1/k;->e:Lf1/t;

    .line 130
    .line 131
    invoke-static {p1, p0}, Lf1/L0;->obtain(Landroid/content/Context;Lf1/K0;)Lf1/L0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lf1/k;->b:Lf1/L0;

    .line 136
    .line 137
    new-instance v2, Lf1/Y;

    .line 138
    .line 139
    new-instance v3, Lf1/a;

    .line 140
    .line 141
    const/4 v4, 0x0

    .line 142
    invoke-direct {v3, p0, v4}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v3}, Lf1/Y;-><init>(Lf1/a;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lf1/k;->o:Lf1/Y;

    .line 149
    .line 150
    invoke-virtual {p0, v0, v1}, Lf1/k;->a(Lf1/G;Z)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lf1/k;->e:Lf1/t;

    .line 154
    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    invoke-virtual {p0, v0, v1}, Lf1/k;->a(Lf1/G;Z)V

    .line 158
    .line 159
    .line 160
    :cond_2
    new-instance v0, Lf1/B0;

    .line 161
    .line 162
    invoke-direct {v0, p1, p0}, Lf1/B0;-><init>(Landroid/content/Context;Lf1/k;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lf1/k;->c:Lf1/B0;

    .line 166
    .line 167
    invoke-virtual {v0}, Lf1/B0;->start()V

    .line 168
    .line 169
    .line 170
    return-void
.end method


# virtual methods
.method public final a(Lf1/G;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lf1/k;->d(Lf1/G;)Lf1/S;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lf1/S;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lf1/S;-><init>(Lf1/G;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lf1/k;->i:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lf1/k;->m:Lf1/d;

    .line 18
    .line 19
    const/16 v1, 0x201

    .line 20
    .line 21
    invoke-virtual {p2, v1, v0}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lf1/G;->getDescriptor()Lf1/I;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, v0, p2}, Lf1/k;->m(Lf1/S;Lf1/I;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lf1/k;->l:Lf1/i;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lf1/G;->setCallback(Lf1/x;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lf1/k;->x:Lf1/w;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lf1/G;->setDiscoveryRequest(Lf1/w;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public addProvider(Lf1/G;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lf1/k;->a(Lf1/G;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b(Lf1/S;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lf1/S;->getComponentName()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean p1, p1, Lf1/S;->c:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    move-object v1, p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, ":"

    .line 16
    .line 17
    invoke-static {v0, v1, p2}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    iget-object v2, p0, Lf1/k;->h:Ljava/util/HashMap;

    .line 22
    .line 23
    if-nez p1, :cond_7

    .line 24
    .line 25
    iget-object p1, p0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_1
    const/4 v6, -0x1

    .line 34
    if-ge v5, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Lf1/U;

    .line 41
    .line 42
    iget-object v7, v7, Lf1/U;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v5, v6

    .line 55
    :goto_2
    if-gez v5, :cond_3

    .line 56
    .line 57
    goto :goto_6

    .line 58
    :cond_3
    const-string v3, "Either "

    .line 59
    .line 60
    const-string v5, " isn\'t unique in "

    .line 61
    .line 62
    const-string v7, " or we\'re trying to assign a unique ID for an already added route"

    .line 63
    .line 64
    invoke-static {v3, p2, v5, v0, v7}, Lb/c;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v5, "GlobalMediaRouter"

    .line 69
    .line 70
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x2

    .line 74
    :goto_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v7, "_"

    .line 85
    .line 86
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    move v8, v4

    .line 101
    :goto_4
    if-ge v8, v7, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Lf1/U;

    .line 108
    .line 109
    iget-object v9, v9, Lf1/U;->c:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    move v8, v6

    .line 122
    :goto_5
    if-gez v8, :cond_6

    .line 123
    .line 124
    new-instance p1, LL/d;

    .line 125
    .line 126
    invoke-direct {p1, v0, p2}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return-object v5

    .line 133
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    :goto_6
    new-instance p1, LL/d;

    .line 137
    .line 138
    invoke-direct {p1, v0, p2}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    return-object v1
.end method

.method public final c()Lf1/U;
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf1/U;

    .line 18
    .line 19
    iget-object v2, p0, Lf1/k;->q:Lf1/U;

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lf1/k;->b:Lf1/L0;

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    const-string v2, "android.media.intent.category.LIVE_AUDIO"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lf1/U;->supportsControlCategory(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const-string v2, "android.media.intent.category.LIVE_VIDEO"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lf1/U;->supportsControlCategory(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lf1/U;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    iget-object v0, p0, Lf1/k;->q:Lf1/U;

    .line 55
    .line 56
    return-object v0
.end method

.method public final d(Lf1/G;)Lf1/S;
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf1/S;

    .line 18
    .line 19
    iget-object v2, v1, Lf1/S;->a:Lf1/G;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public final e()Lf1/U;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/k;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lf1/k;->p:Lf1/l0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lf1/l0;->isMediaTransferReceiverEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/U;->isGroup()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 12
    .line 13
    invoke-virtual {v0}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lf1/U;

    .line 37
    .line 38
    iget-object v3, v3, Lf1/U;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, p0, Lf1/k;->w:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lf1/F;

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-virtual {v4, v5}, Lf1/F;->onUnselect(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Lf1/F;->onRelease()V

    .line 87
    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lf1/U;

    .line 108
    .line 109
    iget-object v3, v1, Lf1/U;->c:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object v4, p0, Lf1/k;->s:Lf1/U;

    .line 122
    .line 123
    iget-object v4, v4, Lf1/U;->b:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v5, v1, Lf1/U;->b:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v3, v5, v4}, Lf1/G;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Lf1/F;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Lf1/F;->onSelect()V

    .line 132
    .line 133
    .line 134
    iget-object v1, v1, Lf1/U;->c:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    :goto_3
    return-void
.end method

.method public final h(Lf1/k;Lf1/U;Lf1/F;ILf1/U;Ljava/util/Collection;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf1/k;->B:Lf1/Q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lf1/Q;->a()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lf1/k;->B:Lf1/Q;

    .line 10
    .line 11
    :cond_0
    new-instance v1, Lf1/Q;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move-object v7, p6

    .line 19
    invoke-direct/range {v1 .. v7}, Lf1/Q;-><init>(Lf1/k;Lf1/U;Lf1/F;ILf1/U;Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lf1/k;->B:Lf1/Q;

    .line 23
    .line 24
    iget p1, v1, Lf1/Q;->b:I

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    if-ne p1, p2, :cond_6

    .line 28
    .line 29
    iget-object p1, p0, Lf1/k;->A:Lf1/P;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p2, p0, Lf1/k;->s:Lf1/U;

    .line 35
    .line 36
    iget-object p3, v1, Lf1/Q;->d:Lf1/U;

    .line 37
    .line 38
    invoke-interface {p1, p2, p3}, Lf1/P;->onPrepareTransfer(Lf1/U;Lf1/U;)LV3/F;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lf1/k;->B:Lf1/Q;

    .line 45
    .line 46
    invoke-virtual {p1}, Lf1/Q;->b()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget-object p2, p0, Lf1/k;->B:Lf1/Q;

    .line 51
    .line 52
    iget-object p3, p2, Lf1/Q;->g:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Lf1/k;

    .line 59
    .line 60
    if-eqz p3, :cond_5

    .line 61
    .line 62
    iget-object p4, p3, Lf1/k;->B:Lf1/Q;

    .line 63
    .line 64
    if-eq p4, p2, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object p4, p2, Lf1/Q;->h:LV3/F;

    .line 68
    .line 69
    if-nez p4, :cond_4

    .line 70
    .line 71
    iput-object p1, p2, Lf1/Q;->h:LV3/F;

    .line 72
    .line 73
    new-instance p4, Lf1/a;

    .line 74
    .line 75
    const/4 p5, 0x2

    .line 76
    invoke-direct {p4, p2, p5}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p3, Lf1/k;->m:Lf1/d;

    .line 80
    .line 81
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    new-instance p3, Landroidx/media3/common/p;

    .line 85
    .line 86
    const/4 p5, 0x1

    .line 87
    invoke-direct {p3, p2, p5}, Landroidx/media3/common/p;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p4, p3}, LV3/F;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string p2, "future is already set"

    .line 97
    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_5
    :goto_0
    const-string p1, "AxMediaRouter"

    .line 103
    .line 104
    const-string p3, "Router is released. Cancel transfer"

    .line 105
    .line 106
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lf1/Q;->a()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lf1/Q;->b()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final i(Lf1/U;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "GlobalMediaRouter"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "Ignoring attempt to select removed route: "

    .line 14
    .line 15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p1, Lf1/U;->g:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Ignoring attempt to select disabled route: "

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x1e

    .line 54
    .line 55
    if-lt v0, v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lf1/k;->e:Lf1/t;

    .line 62
    .line 63
    if-ne v0, v1, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 66
    .line 67
    if-eq v0, p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p1, Lf1/U;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lf1/t;->transferTo(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    invoke-virtual {p0, p1, p2}, Lf1/k;->j(Lf1/U;I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final j(Lf1/U;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lf1/k;->u:Lf1/U;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-object v1, p0, Lf1/k;->u:Lf1/U;

    .line 12
    .line 13
    iget-object v0, p0, Lf1/k;->v:Lf1/C;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-virtual {v0, v2}, Lf1/F;->onUnselect(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lf1/k;->v:Lf1/C;

    .line 22
    .line 23
    invoke-virtual {v0}, Lf1/F;->onRelease()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lf1/k;->v:Lf1/C;

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lf1/k;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-virtual {p1}, Lf1/U;->getProvider()Lf1/S;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lf1/S;->e:Lf1/I;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0}, Lf1/I;->supportsDynamicGroupRoute()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    invoke-virtual {p1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p1, Lf1/U;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lf1/G;->onCreateDynamicGroupRouteController(Ljava/lang/String;)Lf1/C;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    iget-object p2, p0, Lf1/k;->a:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {p2}, LA/h;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget-object v2, p0, Lf1/k;->E:Lf1/c;

    .line 67
    .line 68
    iget-object v3, v0, Lf1/C;->a:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v3

    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    :try_start_0
    iput-object p2, v0, Lf1/C;->b:Ljava/util/concurrent/Executor;

    .line 76
    .line 77
    iput-object v2, v0, Lf1/C;->c:Lf1/c;

    .line 78
    .line 79
    iget-object p2, v0, Lf1/C;->e:Ljava/util/ArrayList;

    .line 80
    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_2

    .line 88
    .line 89
    iget-object p2, v0, Lf1/C;->d:Lf1/v;

    .line 90
    .line 91
    iget-object v4, v0, Lf1/C;->e:Ljava/util/ArrayList;

    .line 92
    .line 93
    iput-object v1, v0, Lf1/C;->d:Lf1/v;

    .line 94
    .line 95
    iput-object v1, v0, Lf1/C;->e:Ljava/util/ArrayList;

    .line 96
    .line 97
    iget-object v1, v0, Lf1/C;->b:Ljava/util/concurrent/Executor;

    .line 98
    .line 99
    new-instance v5, Lf1/y;

    .line 100
    .line 101
    invoke-direct {v5, v0, v2, p2, v4}, Lf1/y;-><init>(Lf1/C;Lf1/c;Lf1/v;Ljava/util/ArrayList;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    move-object p1, v0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iput-object p1, p0, Lf1/k;->u:Lf1/U;

    .line 113
    .line 114
    iput-object v0, p0, Lf1/k;->v:Lf1/C;

    .line 115
    .line 116
    invoke-virtual {v0}, Lf1/F;->onSelect()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 121
    .line 122
    const-string p2, "Listener shouldn\'t be null"

    .line 123
    .line 124
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 129
    .line 130
    const-string p2, "Executor shouldn\'t be null"

    .line 131
    .line 132
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    throw p1

    .line 138
    :cond_5
    const-string v0, "GlobalMediaRouter"

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v3, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    .line 143
    .line 144
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_6
    invoke-virtual {p1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v2, p1, Lf1/U;->b:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lf1/G;->onCreateRouteController(Ljava/lang/String;)Lf1/F;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    if-eqz v6, :cond_7

    .line 168
    .line 169
    invoke-virtual {v6}, Lf1/F;->onSelect()V

    .line 170
    .line 171
    .line 172
    :cond_7
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 173
    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    iput-object p1, p0, Lf1/k;->s:Lf1/U;

    .line 177
    .line 178
    iput-object v6, p0, Lf1/k;->t:Lf1/F;

    .line 179
    .line 180
    iget-object v0, p0, Lf1/k;->m:Lf1/d;

    .line 181
    .line 182
    new-instance v2, LL/d;

    .line 183
    .line 184
    invoke-direct {v2, v1, p1}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    const/16 p1, 0x106

    .line 188
    .line 189
    invoke-virtual {v0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_8
    const/4 v8, 0x0

    .line 200
    const/4 v9, 0x0

    .line 201
    move-object v4, p0

    .line 202
    move-object v3, p0

    .line 203
    move-object v5, p1

    .line 204
    move v7, p2

    .line 205
    invoke-virtual/range {v3 .. v9}, Lf1/k;->h(Lf1/k;Lf1/U;Lf1/F;ILf1/U;Ljava/util/Collection;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final k()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lf1/K;

    .line 4
    .line 5
    invoke-direct {v1}, Lf1/K;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lf1/k;->o:Lf1/Y;

    .line 9
    .line 10
    invoke-virtual {v2}, Lf1/Y;->reset()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lf1/k;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 22
    .line 23
    iget-boolean v7, v0, Lf1/k;->n:Z

    .line 24
    .line 25
    if-ltz v3, :cond_6

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Lf1/X;

    .line 38
    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v8, v8, Lf1/X;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    add-int/2addr v5, v9

    .line 52
    const/4 v10, 0x0

    .line 53
    :goto_1
    if-ge v10, v9, :cond_5

    .line 54
    .line 55
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    check-cast v11, Lf1/N;

    .line 60
    .line 61
    iget-object v12, v11, Lf1/N;->c:Lf1/L;

    .line 62
    .line 63
    invoke-virtual {v1, v12}, Lf1/K;->addSelector(Lf1/L;)Lf1/K;

    .line 64
    .line 65
    .line 66
    iget v12, v11, Lf1/N;->d:I

    .line 67
    .line 68
    const/4 v13, 0x1

    .line 69
    and-int/2addr v12, v13

    .line 70
    if-eqz v12, :cond_1

    .line 71
    .line 72
    move v12, v13

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    const/4 v12, 0x0

    .line 75
    :goto_2
    iget-object v14, v0, Lf1/k;->o:Lf1/Y;

    .line 76
    .line 77
    move v15, v5

    .line 78
    iget-wide v4, v11, Lf1/N;->e:J

    .line 79
    .line 80
    invoke-virtual {v14, v12, v4, v5}, Lf1/Y;->requestActiveScan(ZJ)V

    .line 81
    .line 82
    .line 83
    if-eqz v12, :cond_2

    .line 84
    .line 85
    move v6, v13

    .line 86
    :cond_2
    iget v4, v11, Lf1/N;->d:I

    .line 87
    .line 88
    and-int/lit8 v5, v4, 0x4

    .line 89
    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    if-nez v7, :cond_3

    .line 93
    .line 94
    move v6, v13

    .line 95
    :cond_3
    and-int/lit8 v4, v4, 0x8

    .line 96
    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    move v6, v13

    .line 100
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    move v5, v15

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    move v15, v5

    .line 105
    goto :goto_0

    .line 106
    :cond_6
    iget-object v2, v0, Lf1/k;->o:Lf1/Y;

    .line 107
    .line 108
    invoke-virtual {v2}, Lf1/Y;->finalizeActiveScanAndScheduleSuppressActiveScanRunnable()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput v5, v0, Lf1/k;->z:I

    .line 113
    .line 114
    if-eqz v6, :cond_7

    .line 115
    .line 116
    invoke-virtual {v1}, Lf1/K;->build()Lf1/L;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    sget-object v3, Lf1/L;->c:Lf1/L;

    .line 122
    .line 123
    :goto_3
    invoke-virtual {v1}, Lf1/K;->build()Lf1/L;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lf1/k;->f()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    const/4 v5, 0x0

    .line 132
    if-nez v4, :cond_8

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    iget-object v4, v0, Lf1/k;->y:Lf1/w;

    .line 136
    .line 137
    if-eqz v4, :cond_9

    .line 138
    .line 139
    invoke-virtual {v4}, Lf1/w;->getSelector()Lf1/L;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4, v1}, Lf1/L;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_9

    .line 148
    .line 149
    iget-object v4, v0, Lf1/k;->y:Lf1/w;

    .line 150
    .line 151
    invoke-virtual {v4}, Lf1/w;->isActiveScan()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-ne v4, v2, :cond_9

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_9
    invoke-virtual {v1}, Lf1/L;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_b

    .line 163
    .line 164
    if-nez v2, :cond_b

    .line 165
    .line 166
    iget-object v1, v0, Lf1/k;->y:Lf1/w;

    .line 167
    .line 168
    if-nez v1, :cond_a

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_a
    iput-object v5, v0, Lf1/k;->y:Lf1/w;

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_b
    new-instance v4, Lf1/w;

    .line 175
    .line 176
    invoke-direct {v4, v1, v2}, Lf1/w;-><init>(Lf1/L;Z)V

    .line 177
    .line 178
    .line 179
    iput-object v4, v0, Lf1/k;->y:Lf1/w;

    .line 180
    .line 181
    :goto_4
    iget-object v1, v0, Lf1/k;->e:Lf1/t;

    .line 182
    .line 183
    iget-object v4, v0, Lf1/k;->y:Lf1/w;

    .line 184
    .line 185
    invoke-virtual {v1, v4}, Lf1/G;->setDiscoveryRequest(Lf1/w;)V

    .line 186
    .line 187
    .line 188
    :goto_5
    iget-object v1, v0, Lf1/k;->x:Lf1/w;

    .line 189
    .line 190
    if-eqz v1, :cond_c

    .line 191
    .line 192
    invoke-virtual {v1}, Lf1/w;->getSelector()Lf1/L;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1, v3}, Lf1/L;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_c

    .line 201
    .line 202
    iget-object v1, v0, Lf1/k;->x:Lf1/w;

    .line 203
    .line 204
    invoke-virtual {v1}, Lf1/w;->isActiveScan()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-ne v1, v2, :cond_c

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_c
    invoke-virtual {v3}, Lf1/L;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_e

    .line 216
    .line 217
    if-nez v2, :cond_e

    .line 218
    .line 219
    iget-object v1, v0, Lf1/k;->x:Lf1/w;

    .line 220
    .line 221
    if-nez v1, :cond_d

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_d
    iput-object v5, v0, Lf1/k;->x:Lf1/w;

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_e
    new-instance v1, Lf1/w;

    .line 228
    .line 229
    invoke-direct {v1, v3, v2}, Lf1/w;-><init>(Lf1/L;Z)V

    .line 230
    .line 231
    .line 232
    iput-object v1, v0, Lf1/k;->x:Lf1/w;

    .line 233
    .line 234
    :goto_6
    if-eqz v6, :cond_f

    .line 235
    .line 236
    if-nez v2, :cond_f

    .line 237
    .line 238
    if-eqz v7, :cond_f

    .line 239
    .line 240
    const-string v1, "GlobalMediaRouter"

    .line 241
    .line 242
    const-string v2, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 243
    .line 244
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    :cond_f
    iget-object v1, v0, Lf1/k;->i:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_11

    .line 258
    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Lf1/S;

    .line 264
    .line 265
    iget-object v2, v2, Lf1/S;->a:Lf1/G;

    .line 266
    .line 267
    iget-object v3, v0, Lf1/k;->e:Lf1/t;

    .line 268
    .line 269
    if-ne v2, v3, :cond_10

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_10
    iget-object v3, v0, Lf1/k;->x:Lf1/w;

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Lf1/G;->setDiscoveryRequest(Lf1/w;)V

    .line 275
    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_11
    :goto_8
    return-void
.end method

.method public final l()V
    .locals 10

    .line 1
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lf1/U;->getVolume()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lf1/k;->k:Lf1/C0;

    .line 10
    .line 11
    iput v0, v1, Lf1/C0;->a:I

    .line 12
    .line 13
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 14
    .line 15
    invoke-virtual {v0}, Lf1/U;->getVolumeMax()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, v1, Lf1/C0;->b:I

    .line 20
    .line 21
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 22
    .line 23
    invoke-virtual {v0}, Lf1/U;->getVolumeHandling()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, v1, Lf1/C0;->c:I

    .line 28
    .line 29
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 30
    .line 31
    invoke-virtual {v0}, Lf1/U;->getPlaybackStream()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, v1, Lf1/C0;->d:I

    .line 36
    .line 37
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 38
    .line 39
    invoke-virtual {v0}, Lf1/U;->getPlaybackType()I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lf1/k;->f()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 50
    .line 51
    invoke-virtual {v0}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v3, p0, Lf1/k;->e:Lf1/t;

    .line 56
    .line 57
    if-ne v0, v3, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lf1/k;->t:Lf1/F;

    .line 60
    .line 61
    sget v3, Lf1/t;->r:I

    .line 62
    .line 63
    instance-of v3, v0, Lf1/o;

    .line 64
    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    :goto_0
    move-object v0, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    check-cast v0, Lf1/o;

    .line 70
    .line 71
    iget-object v0, v0, Lf1/o;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/b;->l(Landroid/media/MediaRouter2$RoutingController;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_1
    iput-object v0, v1, Lf1/C0;->e:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iput-object v2, v1, Lf1/C0;->e:Ljava/lang/String;

    .line 84
    .line 85
    :goto_2
    iget-object v0, p0, Lf1/k;->j:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_8

    .line 96
    .line 97
    iget-object v5, p0, Lf1/k;->C:Lf1/g;

    .line 98
    .line 99
    if-eqz v5, :cond_a

    .line 100
    .line 101
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 102
    .line 103
    iget-object v2, p0, Lf1/k;->q:Lf1/U;

    .line 104
    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    if-eq v0, v2, :cond_6

    .line 108
    .line 109
    iget-object v2, p0, Lf1/k;->r:Lf1/U;

    .line 110
    .line 111
    if-ne v0, v2, :cond_3

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_3
    iget v0, v1, Lf1/C0;->c:I

    .line 115
    .line 116
    const/4 v2, 0x1

    .line 117
    if-ne v0, v2, :cond_4

    .line 118
    .line 119
    const/4 v0, 0x2

    .line 120
    :goto_3
    move v6, v0

    .line 121
    goto :goto_4

    .line 122
    :cond_4
    const/4 v0, 0x0

    .line 123
    goto :goto_3

    .line 124
    :goto_4
    iget v7, v1, Lf1/C0;->b:I

    .line 125
    .line 126
    iget v8, v1, Lf1/C0;->a:I

    .line 127
    .line 128
    iget-object v9, v1, Lf1/C0;->e:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v0, v5, Lf1/g;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 131
    .line 132
    iget-object v1, v5, Lf1/g;->b:Lf1/f;

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    if-nez v6, :cond_5

    .line 137
    .line 138
    if-nez v7, :cond_5

    .line 139
    .line 140
    invoke-virtual {v1, v8}, Lp0/m;->setCurrentVolume(I)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    new-instance v4, Lf1/f;

    .line 145
    .line 146
    invoke-direct/range {v4 .. v9}, Lf1/f;-><init>(Lf1/g;IIILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iput-object v4, v5, Lf1/g;->b:Lf1/f;

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Lp0/m;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_6
    :goto_5
    invoke-virtual {v5}, Lf1/g;->a()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lf1/j;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    throw v2

    .line 177
    :cond_9
    iget-object v0, p0, Lf1/k;->C:Lf1/g;

    .line 178
    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    invoke-virtual {v0}, Lf1/g;->a()V

    .line 182
    .line 183
    .line 184
    :cond_a
    return-void
.end method

.method public final m(Lf1/S;Lf1/I;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lf1/S;->e:Lf1/I;

    .line 8
    .line 9
    if-eq v3, v2, :cond_11

    .line 10
    .line 11
    iput-object v2, v1, Lf1/S;->e:Lf1/I;

    .line 12
    .line 13
    iget-object v3, v0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v4, v1, Lf1/S;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v6, "GlobalMediaRouter"

    .line 18
    .line 19
    iget-object v8, v0, Lf1/k;->m:Lf1/d;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lf1/I;->isValid()Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-nez v9, :cond_1

    .line 28
    .line 29
    iget-object v9, v0, Lf1/k;->b:Lf1/L0;

    .line 30
    .line 31
    invoke-virtual {v9}, Lf1/G;->getDescriptor()Lf1/I;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    if-ne v2, v9, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v16, 0x1

    .line 39
    .line 40
    goto/16 :goto_9

    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lf1/I;->getRoutes()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v9, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v10, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-eqz v13, :cond_b

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    check-cast v13, Lf1/v;

    .line 73
    .line 74
    if-eqz v13, :cond_2

    .line 75
    .line 76
    invoke-virtual {v13}, Lf1/v;->isValid()Z

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    if-nez v15, :cond_3

    .line 81
    .line 82
    :cond_2
    const/16 v16, 0x1

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_3
    invoke-virtual {v13}, Lf1/v;->getId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    const/16 v16, 0x1

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const/4 v7, 0x0

    .line 97
    :goto_2
    if-ge v7, v5, :cond_5

    .line 98
    .line 99
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v17

    .line 103
    move-object/from16 v14, v17

    .line 104
    .line 105
    check-cast v14, Lf1/U;

    .line 106
    .line 107
    iget-object v14, v14, Lf1/U;->b:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-eqz v14, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const/4 v7, -0x1

    .line 120
    :goto_3
    if-gez v7, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0, v1, v15}, Lf1/k;->b(Lf1/S;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v7, Lf1/U;

    .line 127
    .line 128
    invoke-direct {v7, v1, v15, v5}, Lf1/U;-><init>(Lf1/S;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v5, v11, 0x1

    .line 132
    .line 133
    invoke-virtual {v4, v11, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13}, Lf1/v;->getGroupMemberIds()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-lez v11, :cond_6

    .line 148
    .line 149
    new-instance v11, LL/d;

    .line 150
    .line 151
    invoke-direct {v11, v7, v13}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    invoke-virtual {v7, v13}, Lf1/U;->b(Lf1/v;)I

    .line 159
    .line 160
    .line 161
    const/16 v11, 0x101

    .line 162
    .line 163
    invoke-virtual {v8, v11, v7}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :goto_4
    move v11, v5

    .line 167
    goto :goto_1

    .line 168
    :cond_7
    if-ge v7, v11, :cond_8

    .line 169
    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v7, "Ignoring route descriptor with duplicate id: "

    .line 173
    .line 174
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    check-cast v5, Lf1/U;

    .line 193
    .line 194
    add-int/lit8 v14, v11, 0x1

    .line 195
    .line 196
    invoke-static {v4, v7, v11}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v13}, Lf1/v;->getGroupMemberIds()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-lez v7, :cond_9

    .line 208
    .line 209
    new-instance v7, LL/d;

    .line 210
    .line 211
    invoke-direct {v7, v5, v13}, LL/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_9
    invoke-virtual {v0, v5, v13}, Lf1/k;->n(Lf1/U;Lf1/v;)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-eqz v7, :cond_a

    .line 223
    .line 224
    iget-object v7, v0, Lf1/k;->s:Lf1/U;

    .line 225
    .line 226
    if-ne v5, v7, :cond_a

    .line 227
    .line 228
    move v11, v14

    .line 229
    move/from16 v12, v16

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_a
    :goto_5
    move v11, v14

    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v7, "Ignoring invalid system route descriptor: "

    .line 239
    .line 240
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_b
    const/16 v16, 0x1

    .line 256
    .line 257
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_c

    .line 266
    .line 267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    check-cast v5, LL/d;

    .line 272
    .line 273
    iget-object v6, v5, LL/d;->a:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v6, Lf1/U;

    .line 276
    .line 277
    iget-object v5, v5, LL/d;->b:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v5, Lf1/v;

    .line 280
    .line 281
    invoke-virtual {v6, v5}, Lf1/U;->b(Lf1/v;)I

    .line 282
    .line 283
    .line 284
    const/16 v5, 0x101

    .line 285
    .line 286
    invoke-virtual {v8, v5, v6}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    move v7, v12

    .line 295
    :cond_d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-eqz v5, :cond_e

    .line 300
    .line 301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    check-cast v5, LL/d;

    .line 306
    .line 307
    iget-object v6, v5, LL/d;->a:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v6, Lf1/U;

    .line 310
    .line 311
    iget-object v5, v5, LL/d;->b:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v5, Lf1/v;

    .line 314
    .line 315
    invoke-virtual {v0, v6, v5}, Lf1/k;->n(Lf1/U;Lf1/v;)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-eqz v5, :cond_d

    .line 320
    .line 321
    iget-object v5, v0, Lf1/k;->s:Lf1/U;

    .line 322
    .line 323
    if-ne v6, v5, :cond_d

    .line 324
    .line 325
    move/from16 v7, v16

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_e
    move v2, v7

    .line 329
    move v7, v11

    .line 330
    goto :goto_a

    .line 331
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v7, "Ignoring invalid provider descriptor: "

    .line 334
    .line 335
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    const/4 v2, 0x0

    .line 349
    const/4 v7, 0x0

    .line 350
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    add-int/lit8 v5, v5, -0x1

    .line 355
    .line 356
    :goto_b
    if-lt v5, v7, :cond_f

    .line 357
    .line 358
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    check-cast v6, Lf1/U;

    .line 363
    .line 364
    const/4 v9, 0x0

    .line 365
    invoke-virtual {v6, v9}, Lf1/U;->b(Lf1/v;)I

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    add-int/lit8 v5, v5, -0x1

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_f
    invoke-virtual {v0, v2}, Lf1/k;->o(Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    add-int/lit8 v2, v2, -0x1

    .line 382
    .line 383
    :goto_c
    if-lt v2, v7, :cond_10

    .line 384
    .line 385
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    check-cast v3, Lf1/U;

    .line 390
    .line 391
    const/16 v5, 0x102

    .line 392
    .line 393
    invoke-virtual {v8, v5, v3}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    add-int/lit8 v2, v2, -0x1

    .line 397
    .line 398
    goto :goto_c

    .line 399
    :cond_10
    const/16 v2, 0x203

    .line 400
    .line 401
    invoke-virtual {v8, v2, v1}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_11
    return-void
.end method

.method public final n(Lf1/U;Lf1/v;)I
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lf1/U;->b(Lf1/v;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, p2, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Lf1/k;->m:Lf1/d;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x103

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x104

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    and-int/lit8 v0, p2, 0x4

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x105

    .line 32
    .line 33
    invoke-virtual {v1, v0, p1}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return p2
.end method

.method public final o(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/k;->q:Lf1/U;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "GlobalMediaRouter"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lf1/U;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Clearing the default route because it is no longer selectable: "

    .line 17
    .line 18
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lf1/k;->q:Lf1/U;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lf1/k;->q:Lf1/U;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lf1/k;->q:Lf1/U;

    .line 36
    .line 37
    iget-object v3, p0, Lf1/k;->g:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lf1/U;

    .line 62
    .line 63
    invoke-virtual {v4}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iget-object v6, p0, Lf1/k;->b:Lf1/L0;

    .line 68
    .line 69
    if-ne v5, v6, :cond_1

    .line 70
    .line 71
    iget-object v5, v4, Lf1/U;->b:Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "DEFAULT_ROUTE"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v4}, Lf1/U;->a()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_1

    .line 86
    .line 87
    iput-object v4, p0, Lf1/k;->q:Lf1/U;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v4, "Found default route: "

    .line 92
    .line 93
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lf1/k;->q:Lf1/U;

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v0, p0, Lf1/k;->r:Lf1/U;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0}, Lf1/U;->a()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v4, "Clearing the bluetooth route because it is no longer selectable: "

    .line 121
    .line 122
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v4, p0, Lf1/k;->r:Lf1/U;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, Lf1/k;->r:Lf1/U;

    .line 138
    .line 139
    :cond_3
    iget-object v0, p0, Lf1/k;->r:Lf1/U;

    .line 140
    .line 141
    if-nez v0, :cond_5

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lf1/U;

    .line 164
    .line 165
    invoke-virtual {v1}, Lf1/U;->getProviderInstance()Lf1/G;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iget-object v4, p0, Lf1/k;->b:Lf1/L0;

    .line 170
    .line 171
    if-ne v3, v4, :cond_4

    .line 172
    .line 173
    const-string v3, "android.media.intent.category.LIVE_AUDIO"

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Lf1/U;->supportsControlCategory(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_4

    .line 180
    .line 181
    const-string v3, "android.media.intent.category.LIVE_VIDEO"

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Lf1/U;->supportsControlCategory(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_4

    .line 188
    .line 189
    invoke-virtual {v1}, Lf1/U;->a()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_4

    .line 194
    .line 195
    iput-object v1, p0, Lf1/k;->r:Lf1/U;

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v1, "Found bluetooth route: "

    .line 200
    .line 201
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lf1/k;->r:Lf1/U;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 217
    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    invoke-virtual {v0}, Lf1/U;->isEnabled()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_6

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_6
    if-eqz p1, :cond_7

    .line 228
    .line 229
    invoke-virtual {p0}, Lf1/k;->g()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lf1/k;->l()V

    .line 233
    .line 234
    .line 235
    :cond_7
    return-void

    .line 236
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v0, "Unselecting the current route because it is no longer selectable: "

    .line 239
    .line 240
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lf1/k;->s:Lf1/U;

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lf1/k;->c()Lf1/U;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, p1, v0}, Lf1/k;->j(Lf1/U;I)V

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method public onSystemRouteSelectedByDescriptorId(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/k;->m:Lf1/d;

    .line 2
    .line 3
    const/16 v1, 0x106

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf1/k;->b:Lf1/L0;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lf1/k;->d(Lf1/G;)Lf1/S;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, v0, Lf1/S;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lf1/U;

    .line 33
    .line 34
    iget-object v2, v1, Lf1/U;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lf1/U;->select()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public releaseProviderController(Lf1/x0;Lf1/F;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/k;->t:Lf1/F;

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lf1/k;->c()Lf1/U;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-virtual {p0, p1, p2}, Lf1/k;->i(Lf1/U;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public removeProvider(Lf1/G;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lf1/k;->d(Lf1/G;)Lf1/S;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lf1/G;->setCallback(Lf1/x;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lf1/G;->setDiscoveryRequest(Lf1/w;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lf1/k;->m(Lf1/S;Lf1/I;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lf1/k;->m:Lf1/d;

    .line 18
    .line 19
    const/16 v1, 0x202

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lf1/d;->b(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lf1/k;->i:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
