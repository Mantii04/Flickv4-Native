.class public final Lz/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/graphics/drawable/IconCompat;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/app/PendingIntent;

.field public final d:Z

.field public final e:Landroid/os/Bundle;

.field public final f:Ljava/util/ArrayList;

.field public final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Lz/x;->d:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lz/x;->g:Z

    .line 24
    .line 25
    iput-object p1, p0, Lz/x;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 26
    .line 27
    invoke-static {p2}, Lz/B;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lz/x;->b:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iput-object p3, p0, Lz/x;->c:Landroid/app/PendingIntent;

    .line 34
    .line 35
    iput-object v1, p0, Lz/x;->e:Landroid/os/Bundle;

    .line 36
    .line 37
    iput-object v0, p0, Lz/x;->f:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-boolean v2, p0, Lz/x;->d:Z

    .line 40
    .line 41
    iput-boolean v2, p0, Lz/x;->g:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public build()Lz/y;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lz/x;->f:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v2}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    move-object v10, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    new-array v2, v2, [Lz/U;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, [Lz/U;

    .line 51
    .line 52
    move-object v10, v0

    .line 53
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    :goto_2
    move-object v9, v3

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    new-array v0, v0, [Lz/U;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v3, v0

    .line 72
    check-cast v3, [Lz/U;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_3
    new-instance v4, Lz/y;

    .line 76
    .line 77
    iget-boolean v11, p0, Lz/x;->d:Z

    .line 78
    .line 79
    iget-boolean v12, p0, Lz/x;->g:Z

    .line 80
    .line 81
    iget-object v5, p0, Lz/x;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 82
    .line 83
    iget-object v6, p0, Lz/x;->b:Ljava/lang/CharSequence;

    .line 84
    .line 85
    iget-object v7, p0, Lz/x;->c:Landroid/app/PendingIntent;

    .line 86
    .line 87
    iget-object v8, p0, Lz/x;->e:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct/range {v4 .. v12}, Lz/y;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lz/U;[Lz/U;ZZ)V

    .line 90
    .line 91
    .line 92
    return-object v4
.end method
