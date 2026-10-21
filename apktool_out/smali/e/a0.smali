.class public final Le/a0;
.super Le/A;
.source "SourceFile"

# interfaces
.implements Lk/n;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final r0:Lp/q;

.field public static final s0:[I

.field public static final t0:Z

.field public static final u0:Z


# instance fields
.field public A:Ll/L0;

.field public B:Le/I;

.field public C:Le/Z;

.field public D:Lj/c;

.field public E:Landroidx/appcompat/widget/ActionBarContextView;

.field public F:Landroid/widget/PopupWindow;

.field public G:Le/F;

.field public H:LM/C0;

.field public final I:Z

.field public J:Z

.field public K:Landroid/view/ViewGroup;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/view/View;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:[Le/Y;

.field public W:Le/Y;

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Landroid/content/res/Configuration;

.field public final c0:I

.field public d0:I

.field public e0:I

.field public f0:Z

.field public g0:Le/W;

.field public h0:Le/T;

.field public i0:Z

.field public j0:I

.field public final k0:Le/B;

.field public l0:Z

.field public m0:Landroid/graphics/Rect;

.field public n0:Landroid/graphics/Rect;

.field public o0:Le/e0;

.field public p0:Landroid/window/OnBackInvokedDispatcher;

.field public q0:Landroid/window/OnBackInvokedCallback;

.field public final s:Ljava/lang/Object;

.field public final t:Landroid/content/Context;

.field public u:Landroid/view/Window;

.field public v:Le/S;

.field public final w:Le/w;

.field public x:Le/b;

.field public y:Lj/l;

.field public z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lp/q;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le/a0;->r0:Lp/q;

    .line 7
    .line 8
    const v0, 0x1010054

    .line 9
    .line 10
    .line 11
    filled-new-array {v0}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Le/a0;->s0:[I

    .line 16
    .line 17
    const-string v0, "robolectric"

    .line 18
    .line 19
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    sput-boolean v0, Le/a0;->t0:Z

    .line 28
    .line 29
    sput-boolean v1, Le/a0;->u0:Z

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Le/w;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/a0;->H:LM/C0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Le/a0;->I:Z

    .line 9
    .line 10
    const/16 v1, -0x64

    .line 11
    .line 12
    iput v1, p0, Le/a0;->c0:I

    .line 13
    .line 14
    new-instance v2, Le/B;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Le/B;-><init>(Le/a0;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Le/a0;->k0:Le/B;

    .line 20
    .line 21
    iput-object p1, p0, Le/a0;->t:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Le/a0;->w:Le/w;

    .line 24
    .line 25
    iput-object p4, p0, Le/a0;->s:Ljava/lang/Object;

    .line 26
    .line 27
    instance-of p3, p4, Landroid/app/Dialog;

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    instance-of p3, p1, Le/v;

    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    move-object v0, p1

    .line 38
    check-cast v0, Le/v;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    .line 42
    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    check-cast p1, Landroid/content/ContextWrapper;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Le/v;->getDelegate()Le/A;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Le/A;->getLocalNightMode()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Le/a0;->c0:I

    .line 63
    .line 64
    :cond_2
    iget p1, p0, Le/a0;->c0:I

    .line 65
    .line 66
    if-ne p1, v1, :cond_3

    .line 67
    .line 68
    sget-object p1, Le/a0;->r0:Lp/q;

    .line 69
    .line 70
    iget-object p3, p0, Le/a0;->s:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p1, p3}, Lp/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz p3, :cond_3

    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    iput p3, p0, Le/a0;->c0:I

    .line 93
    .line 94
    iget-object p3, p0, Le/a0;->s:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p1, p3}, Lp/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_3
    if-eqz p2, :cond_4

    .line 108
    .line 109
    invoke-virtual {p0, p2}, Le/a0;->d(Landroid/view/Window;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-static {}, Ll/I;->preload()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static e(Landroid/content/Context;)LI/o;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Le/A;->f:LI/o;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Le/a0;->o(Landroid/content/res/Configuration;)LI/o;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/16 v2, 0x18

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-lt v0, v2, :cond_6

    .line 34
    .line 35
    invoke-virtual {v1}, LI/o;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {}, LI/o;->getEmptyLocaleList()LI/o;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v1}, LI/o;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0}, LI/o;->size()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    add-int/2addr v4, v2

    .line 60
    if-ge v3, v4, :cond_5

    .line 61
    .line 62
    invoke-virtual {v1}, LI/o;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-ge v3, v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1, v3}, LI/o;->get(I)Ljava/util/Locale;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v1}, LI/o;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    sub-int v2, v3, v2

    .line 78
    .line 79
    invoke-virtual {p0, v2}, LI/o;->get(I)Ljava/util/Locale;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_2
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    new-array v1, v1, [Ljava/util/Locale;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, [Ljava/util/Locale;

    .line 102
    .line 103
    invoke-static {v0}, LI/o;->create([Ljava/util/Locale;)LI/o;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_3

    .line 108
    :cond_6
    invoke-virtual {v1}, LI/o;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    invoke-static {}, LI/o;->getEmptyLocaleList()LI/o;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_3

    .line 119
    :cond_7
    invoke-virtual {v1, v3}, LI/o;->get(I)Ljava/util/Locale;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, LI/o;->forLanguageTags(Ljava/lang/String;)LI/o;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_3
    invoke-virtual {v0}, LI/o;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_8
    return-object v0
.end method

.method public static i(Landroid/content/Context;ILI/o;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    move p0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    .line 26
    and-int/lit8 p0, p0, 0x30

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 p0, 0x20

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 p0, 0x10

    .line 33
    .line 34
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 p4, 0x0

    .line 40
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 41
    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    .line 49
    and-int/lit8 p3, p3, -0x31

    .line 50
    .line 51
    or-int/2addr p0, p3

    .line 52
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 53
    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 p3, 0x18

    .line 59
    .line 60
    if-lt p0, p3, :cond_4

    .line 61
    .line 62
    invoke-static {p1, p2}, Le/O;->c(Landroid/content/res/Configuration;LI/o;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_4
    invoke-virtual {p2, v1}, LI/o;->get(I)Ljava/util/Locale;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p1, p0}, Le/L;->b(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v1}, LI/o;->get(I)Ljava/util/Locale;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Le/L;->a(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    return-object p1
.end method

.method public static o(Landroid/content/res/Configuration;)LI/o;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Le/O;->b(Landroid/content/res/Configuration;)LI/o;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {p0}, Le/M;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, LI/o;->forLanguageTags(Ljava/lang/String;)LI/o;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a0;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le/a0;->K:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Le/a0;->v:Le/S;

    .line 19
    .line 20
    iget-object p2, p0, Le/a0;->u:Landroid/view/Window;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Le/S;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public applyDayNight()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Le/a0;->c(ZZ)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a0;->Y:Z

    .line 3
    .line 4
    iget v1, p0, Le/a0;->c0:I

    .line 5
    .line 6
    const/16 v2, -0x64

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Le/A;->getDefaultNightMode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    invoke-virtual {p0, p1, v1}, Le/a0;->q(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p1}, Le/A;->a(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_7

    .line 24
    .line 25
    invoke-static {p1}, Le/A;->a(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_1
    invoke-static {}, LI/b;->isAtLeastT()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-boolean v2, Le/A;->n:Z

    .line 39
    .line 40
    if-nez v2, :cond_7

    .line 41
    .line 42
    sget-object v2, Le/A;->b:Le/h0;

    .line 43
    .line 44
    new-instance v3, Le/x;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v3, p1, v4}, Le/x;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Le/h0;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_2
    sget-object v2, Le/A;->r:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v2

    .line 57
    :try_start_0
    sget-object v3, Le/A;->f:LI/o;

    .line 58
    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    sget-object v3, Le/A;->j:LI/o;

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, LV3/r;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, LI/o;->forLanguageTags(Ljava/lang/String;)LI/o;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sput-object v3, Le/A;->j:LI/o;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_1
    sget-object v3, Le/A;->j:LI/o;

    .line 79
    .line 80
    invoke-virtual {v3}, LI/o;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    monitor-exit v2

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    sget-object v3, Le/A;->j:LI/o;

    .line 89
    .line 90
    sput-object v3, Le/A;->f:LI/o;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    sget-object v4, Le/A;->j:LI/o;

    .line 94
    .line 95
    invoke-virtual {v3, v4}, LI/o;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_6

    .line 100
    .line 101
    sget-object v3, Le/A;->f:LI/o;

    .line 102
    .line 103
    sput-object v3, Le/A;->j:LI/o;

    .line 104
    .line 105
    invoke-virtual {v3}, LI/o;->toLanguageTags()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {p1, v3}, LV3/r;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_2
    monitor-exit v2

    .line 113
    goto :goto_4

    .line 114
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p1

    .line 116
    :cond_7
    :goto_4
    invoke-static {p1}, Le/a0;->e(Landroid/content/Context;)LI/o;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-boolean v3, Le/a0;->u0:Z

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v5, 0x0

    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    .line 127
    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    invoke-static {p1, v1, v2, v5, v4}, Le/a0;->i(Landroid/content/Context;ILI/o;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :try_start_1
    move-object v6, p1

    .line 135
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 136
    .line 137
    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .line 139
    .line 140
    return-object p1

    .line 141
    :catch_0
    :cond_8
    instance-of v3, p1, Lj/f;

    .line 142
    .line 143
    if-eqz v3, :cond_9

    .line 144
    .line 145
    invoke-static {p1, v1, v2, v5, v4}, Le/a0;->i(Landroid/content/Context;ILI/o;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    :try_start_2
    move-object v4, p1

    .line 150
    check-cast v4, Lj/f;

    .line 151
    .line 152
    invoke-virtual {v4, v3}, Lj/f;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .line 154
    .line 155
    return-object p1

    .line 156
    :catch_1
    :cond_9
    sget-boolean v3, Le/a0;->t0:Z

    .line 157
    .line 158
    if-nez v3, :cond_a

    .line 159
    .line 160
    invoke-super {p0, p1}, Le/A;->attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    return-object p1

    .line 165
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 166
    .line 167
    new-instance v4, Landroid/content/res/Configuration;

    .line 168
    .line 169
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 170
    .line 171
    .line 172
    const/4 v6, -0x1

    .line 173
    iput v6, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 177
    .line 178
    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 199
    .line 200
    iput v8, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 201
    .line 202
    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-nez v8, :cond_22

    .line 207
    .line 208
    new-instance v5, Landroid/content/res/Configuration;

    .line 209
    .line 210
    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 211
    .line 212
    .line 213
    iput v6, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 214
    .line 215
    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-nez v6, :cond_b

    .line 220
    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :cond_b
    iget v6, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 224
    .line 225
    iget v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 226
    .line 227
    cmpl-float v6, v6, v8

    .line 228
    .line 229
    if-eqz v6, :cond_c

    .line 230
    .line 231
    iput v8, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 232
    .line 233
    :cond_c
    iget v6, v4, Landroid/content/res/Configuration;->mcc:I

    .line 234
    .line 235
    iget v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 236
    .line 237
    if-eq v6, v8, :cond_d

    .line 238
    .line 239
    iput v8, v5, Landroid/content/res/Configuration;->mcc:I

    .line 240
    .line 241
    :cond_d
    iget v6, v4, Landroid/content/res/Configuration;->mnc:I

    .line 242
    .line 243
    iget v8, v7, Landroid/content/res/Configuration;->mnc:I

    .line 244
    .line 245
    if-eq v6, v8, :cond_e

    .line 246
    .line 247
    iput v8, v5, Landroid/content/res/Configuration;->mnc:I

    .line 248
    .line 249
    :cond_e
    const/16 v6, 0x18

    .line 250
    .line 251
    if-lt v3, v6, :cond_f

    .line 252
    .line 253
    invoke-static {v4, v7, v5}, Le/O;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_f
    iget-object v6, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 258
    .line 259
    iget-object v8, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 260
    .line 261
    invoke-static {v6, v8}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-nez v6, :cond_10

    .line 266
    .line 267
    iget-object v6, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 268
    .line 269
    iput-object v6, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 270
    .line 271
    :cond_10
    :goto_5
    iget v6, v4, Landroid/content/res/Configuration;->touchscreen:I

    .line 272
    .line 273
    iget v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 274
    .line 275
    if-eq v6, v8, :cond_11

    .line 276
    .line 277
    iput v8, v5, Landroid/content/res/Configuration;->touchscreen:I

    .line 278
    .line 279
    :cond_11
    iget v6, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 280
    .line 281
    iget v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 282
    .line 283
    if-eq v6, v8, :cond_12

    .line 284
    .line 285
    iput v8, v5, Landroid/content/res/Configuration;->keyboard:I

    .line 286
    .line 287
    :cond_12
    iget v6, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 288
    .line 289
    iget v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 290
    .line 291
    if-eq v6, v8, :cond_13

    .line 292
    .line 293
    iput v8, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 294
    .line 295
    :cond_13
    iget v6, v4, Landroid/content/res/Configuration;->navigation:I

    .line 296
    .line 297
    iget v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 298
    .line 299
    if-eq v6, v8, :cond_14

    .line 300
    .line 301
    iput v8, v5, Landroid/content/res/Configuration;->navigation:I

    .line 302
    .line 303
    :cond_14
    iget v6, v4, Landroid/content/res/Configuration;->navigationHidden:I

    .line 304
    .line 305
    iget v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 306
    .line 307
    if-eq v6, v8, :cond_15

    .line 308
    .line 309
    iput v8, v5, Landroid/content/res/Configuration;->navigationHidden:I

    .line 310
    .line 311
    :cond_15
    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    .line 312
    .line 313
    iget v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 314
    .line 315
    if-eq v6, v8, :cond_16

    .line 316
    .line 317
    iput v8, v5, Landroid/content/res/Configuration;->orientation:I

    .line 318
    .line 319
    :cond_16
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 320
    .line 321
    and-int/lit8 v6, v6, 0xf

    .line 322
    .line 323
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 324
    .line 325
    and-int/lit8 v8, v8, 0xf

    .line 326
    .line 327
    if-eq v6, v8, :cond_17

    .line 328
    .line 329
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 330
    .line 331
    or-int/2addr v6, v8

    .line 332
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 333
    .line 334
    :cond_17
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 335
    .line 336
    and-int/lit16 v6, v6, 0xc0

    .line 337
    .line 338
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 339
    .line 340
    and-int/lit16 v8, v8, 0xc0

    .line 341
    .line 342
    if-eq v6, v8, :cond_18

    .line 343
    .line 344
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 345
    .line 346
    or-int/2addr v6, v8

    .line 347
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 348
    .line 349
    :cond_18
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 350
    .line 351
    and-int/lit8 v6, v6, 0x30

    .line 352
    .line 353
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 354
    .line 355
    and-int/lit8 v8, v8, 0x30

    .line 356
    .line 357
    if-eq v6, v8, :cond_19

    .line 358
    .line 359
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 360
    .line 361
    or-int/2addr v6, v8

    .line 362
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 363
    .line 364
    :cond_19
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 365
    .line 366
    and-int/lit16 v6, v6, 0x300

    .line 367
    .line 368
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 369
    .line 370
    and-int/lit16 v8, v8, 0x300

    .line 371
    .line 372
    if-eq v6, v8, :cond_1a

    .line 373
    .line 374
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 375
    .line 376
    or-int/2addr v6, v8

    .line 377
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 378
    .line 379
    :cond_1a
    const/16 v6, 0x1a

    .line 380
    .line 381
    if-lt v3, v6, :cond_1c

    .line 382
    .line 383
    invoke-static {v4}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    and-int/lit8 v3, v3, 0x3

    .line 388
    .line 389
    invoke-static {v7}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    and-int/lit8 v6, v6, 0x3

    .line 394
    .line 395
    if-eq v3, v6, :cond_1b

    .line 396
    .line 397
    invoke-static {v5}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    invoke-static {v7}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    and-int/lit8 v6, v6, 0x3

    .line 406
    .line 407
    or-int/2addr v3, v6

    .line 408
    invoke-static {v5, v3}, Le/P;->v(Landroid/content/res/Configuration;I)V

    .line 409
    .line 410
    .line 411
    :cond_1b
    invoke-static {v4}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    and-int/lit8 v3, v3, 0xc

    .line 416
    .line 417
    invoke-static {v7}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    and-int/lit8 v6, v6, 0xc

    .line 422
    .line 423
    if-eq v3, v6, :cond_1c

    .line 424
    .line 425
    invoke-static {v5}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    invoke-static {v7}, Le/P;->a(Landroid/content/res/Configuration;)I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    and-int/lit8 v6, v6, 0xc

    .line 434
    .line 435
    or-int/2addr v3, v6

    .line 436
    invoke-static {v5, v3}, Le/P;->v(Landroid/content/res/Configuration;I)V

    .line 437
    .line 438
    .line 439
    :cond_1c
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 440
    .line 441
    and-int/lit8 v3, v3, 0xf

    .line 442
    .line 443
    iget v6, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 444
    .line 445
    and-int/lit8 v6, v6, 0xf

    .line 446
    .line 447
    if-eq v3, v6, :cond_1d

    .line 448
    .line 449
    iget v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 450
    .line 451
    or-int/2addr v3, v6

    .line 452
    iput v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 453
    .line 454
    :cond_1d
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 455
    .line 456
    and-int/lit8 v3, v3, 0x30

    .line 457
    .line 458
    iget v6, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 459
    .line 460
    and-int/lit8 v6, v6, 0x30

    .line 461
    .line 462
    if-eq v3, v6, :cond_1e

    .line 463
    .line 464
    iget v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 465
    .line 466
    or-int/2addr v3, v6

    .line 467
    iput v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 468
    .line 469
    :cond_1e
    iget v3, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 470
    .line 471
    iget v6, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 472
    .line 473
    if-eq v3, v6, :cond_1f

    .line 474
    .line 475
    iput v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 476
    .line 477
    :cond_1f
    iget v3, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 478
    .line 479
    iget v6, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 480
    .line 481
    if-eq v3, v6, :cond_20

    .line 482
    .line 483
    iput v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 484
    .line 485
    :cond_20
    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 486
    .line 487
    iget v6, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 488
    .line 489
    if-eq v3, v6, :cond_21

    .line 490
    .line 491
    iput v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 492
    .line 493
    :cond_21
    iget v3, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 494
    .line 495
    iget v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 496
    .line 497
    if-eq v3, v4, :cond_22

    .line 498
    .line 499
    iput v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 500
    .line 501
    :cond_22
    :goto_6
    invoke-static {p1, v1, v2, v5, v0}, Le/a0;->i(Landroid/content/Context;ILI/o;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    new-instance v1, Lj/f;

    .line 506
    .line 507
    sget v2, Landroidx/appcompat/R$style;->Theme_AppCompat_Empty:I

    .line 508
    .line 509
    invoke-direct {v1, p1, v2}, Lj/f;-><init>(Landroid/content/Context;I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v0}, Lj/f;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 513
    .line 514
    .line 515
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 516
    .line 517
    .line 518
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 519
    if-eqz p1, :cond_23

    .line 520
    .line 521
    invoke-virtual {v1}, Lj/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-static {p1}, LC/t;->rebase(Landroid/content/res/Resources$Theme;)V

    .line 526
    .line 527
    .line 528
    :catch_2
    :cond_23
    invoke-super {p0, v1}, Le/A;->attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    return-object p1
.end method

.method public final c(ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Le/a0;->a0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget v0, v1, Le/a0;->c0:I

    .line 10
    .line 11
    const/16 v3, -0x64

    .line 12
    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    :goto_0
    move v3, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-static {}, Le/A;->getDefaultNightMode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget-object v4, v1, Le/a0;->t:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1, v4, v3}, Le/a0;->q(Landroid/content/Context;I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v6, 0x21

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    if-ge v0, v6, :cond_2

    .line 34
    .line 35
    invoke-static {v4}, Le/a0;->e(Landroid/content/Context;)LI/o;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v6, v7

    .line 41
    :goto_2
    if-nez p2, :cond_3

    .line 42
    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v6}, Le/a0;->o(Landroid/content/res/Configuration;)LI/o;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    :cond_3
    invoke-static {v4, v5, v6, v7, v2}, Le/a0;->i(Landroid/content/Context;ILI/o;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    iget-boolean v9, v1, Le/a0;->f0:Z

    .line 62
    .line 63
    iget-object v10, v1, Le/a0;->s:Ljava/lang/Object;

    .line 64
    .line 65
    const/16 v11, 0x18

    .line 66
    .line 67
    const/4 v12, 0x1

    .line 68
    if-nez v9, :cond_7

    .line 69
    .line 70
    instance-of v9, v10, Landroid/app/Activity;

    .line 71
    .line 72
    if-eqz v9, :cond_7

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    if-nez v9, :cond_4

    .line 79
    .line 80
    move v0, v2

    .line 81
    goto :goto_5

    .line 82
    :cond_4
    const/16 v13, 0x1d

    .line 83
    .line 84
    if-lt v0, v13, :cond_5

    .line 85
    .line 86
    const/high16 v0, 0x100c0000

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    if-lt v0, v11, :cond_6

    .line 90
    .line 91
    const/high16 v0, 0xc0000

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move v0, v2

    .line 95
    :goto_3
    :try_start_0
    new-instance v13, Landroid/content/ComponentName;

    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    invoke-direct {v13, v4, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v13, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 111
    .line 112
    iput v0, v1, Le/a0;->e0:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v9, "AppCompatDelegate"

    .line 117
    .line 118
    const-string v13, "Exception while getting ActivityInfo"

    .line 119
    .line 120
    invoke-static {v9, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    iput v2, v1, Le/a0;->e0:I

    .line 124
    .line 125
    :cond_7
    :goto_4
    iput-boolean v12, v1, Le/a0;->f0:Z

    .line 126
    .line 127
    iget v0, v1, Le/a0;->e0:I

    .line 128
    .line 129
    :goto_5
    iget-object v9, v1, Le/a0;->b0:Landroid/content/res/Configuration;

    .line 130
    .line 131
    if-nez v9, :cond_8

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    :cond_8
    iget v13, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 142
    .line 143
    and-int/lit8 v13, v13, 0x30

    .line 144
    .line 145
    iget v14, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 146
    .line 147
    and-int/lit8 v14, v14, 0x30

    .line 148
    .line 149
    invoke-static {v9}, Le/a0;->o(Landroid/content/res/Configuration;)LI/o;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    if-nez v6, :cond_9

    .line 154
    .line 155
    move-object v8, v7

    .line 156
    goto :goto_6

    .line 157
    :cond_9
    invoke-static {v8}, Le/a0;->o(Landroid/content/res/Configuration;)LI/o;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    :goto_6
    if-eq v13, v14, :cond_a

    .line 162
    .line 163
    const/16 v13, 0x200

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_a
    move v13, v2

    .line 167
    :goto_7
    if-eqz v8, :cond_b

    .line 168
    .line 169
    invoke-virtual {v9, v8}, LI/o;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-nez v9, :cond_b

    .line 174
    .line 175
    or-int/lit16 v13, v13, 0x2004

    .line 176
    .line 177
    :cond_b
    not-int v9, v0

    .line 178
    and-int/2addr v9, v13

    .line 179
    if-eqz v9, :cond_d

    .line 180
    .line 181
    if-eqz p1, :cond_d

    .line 182
    .line 183
    iget-boolean v9, v1, Le/a0;->Y:Z

    .line 184
    .line 185
    if-eqz v9, :cond_d

    .line 186
    .line 187
    sget-boolean v9, Le/a0;->t0:Z

    .line 188
    .line 189
    if-nez v9, :cond_c

    .line 190
    .line 191
    iget-boolean v9, v1, Le/a0;->Z:Z

    .line 192
    .line 193
    if-eqz v9, :cond_d

    .line 194
    .line 195
    :cond_c
    instance-of v9, v10, Landroid/app/Activity;

    .line 196
    .line 197
    if-eqz v9, :cond_d

    .line 198
    .line 199
    move-object v9, v10

    .line 200
    check-cast v9, Landroid/app/Activity;

    .line 201
    .line 202
    invoke-virtual {v9}, Landroid/app/Activity;->isChild()Z

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    if-nez v15, :cond_d

    .line 207
    .line 208
    invoke-static {v9}, Lz/d;->recreate(Landroid/app/Activity;)V

    .line 209
    .line 210
    .line 211
    move v9, v12

    .line 212
    goto :goto_8

    .line 213
    :cond_d
    move v9, v2

    .line 214
    :goto_8
    if-nez v9, :cond_1f

    .line 215
    .line 216
    if-eqz v13, :cond_1f

    .line 217
    .line 218
    and-int/2addr v0, v13

    .line 219
    if-ne v0, v13, :cond_e

    .line 220
    .line 221
    move v9, v12

    .line 222
    goto :goto_9

    .line 223
    :cond_e
    move v9, v2

    .line 224
    :goto_9
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object v15

    .line 228
    new-instance v12, Landroid/content/res/Configuration;

    .line 229
    .line 230
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-direct {v12, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 242
    .line 243
    and-int/lit8 v0, v0, -0x31

    .line 244
    .line 245
    or-int/2addr v0, v14

    .line 246
    iput v0, v12, Landroid/content/res/Configuration;->uiMode:I

    .line 247
    .line 248
    if-eqz v8, :cond_10

    .line 249
    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 251
    .line 252
    if-lt v0, v11, :cond_f

    .line 253
    .line 254
    invoke-static {v12, v8}, Le/O;->c(Landroid/content/res/Configuration;LI/o;)V

    .line 255
    .line 256
    .line 257
    goto :goto_a

    .line 258
    :cond_f
    invoke-virtual {v8, v2}, LI/o;->get(I)Ljava/util/Locale;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v12, v0}, Le/L;->b(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v2}, LI/o;->get(I)Ljava/util/Locale;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {v12, v0}, Le/L;->a(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 270
    .line 271
    .line 272
    :cond_10
    :goto_a
    invoke-virtual {v15, v12, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 273
    .line 274
    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 276
    .line 277
    const/16 v14, 0x1a

    .line 278
    .line 279
    if-ge v0, v14, :cond_1b

    .line 280
    .line 281
    const/16 v14, 0x1c

    .line 282
    .line 283
    if-lt v0, v14, :cond_11

    .line 284
    .line 285
    goto/16 :goto_14

    .line 286
    .line 287
    :cond_11
    const-string v14, "mDrawableCache"

    .line 288
    .line 289
    const-class v7, Landroid/content/res/Resources;

    .line 290
    .line 291
    const-string v2, "ResourcesFlusher"

    .line 292
    .line 293
    if-lt v0, v11, :cond_17

    .line 294
    .line 295
    sget-boolean v0, LV3/s;->h:Z

    .line 296
    .line 297
    if-nez v0, :cond_12

    .line 298
    .line 299
    :try_start_1
    const-string v0, "mResourcesImpl"

    .line 300
    .line 301
    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sput-object v0, LV3/s;->g:Ljava/lang/reflect/Field;

    .line 306
    .line 307
    const/4 v7, 0x1

    .line 308
    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    .line 310
    .line 311
    :goto_b
    const/4 v7, 0x1

    .line 312
    goto :goto_c

    .line 313
    :catch_1
    move-exception v0

    .line 314
    const-string v7, "Could not retrieve Resources#mResourcesImpl field"

    .line 315
    .line 316
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .line 318
    .line 319
    goto :goto_b

    .line 320
    :goto_c
    sput-boolean v7, LV3/s;->h:Z

    .line 321
    .line 322
    :cond_12
    sget-object v0, LV3/s;->g:Ljava/lang/reflect/Field;

    .line 323
    .line 324
    if-nez v0, :cond_13

    .line 325
    .line 326
    goto/16 :goto_14

    .line 327
    .line 328
    :cond_13
    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    move-object v7, v0

    .line 333
    goto :goto_d

    .line 334
    :catch_2
    move-exception v0

    .line 335
    const-string v7, "Could not retrieve value from Resources#mResourcesImpl"

    .line 336
    .line 337
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .line 339
    .line 340
    const/4 v7, 0x0

    .line 341
    :goto_d
    if-nez v7, :cond_14

    .line 342
    .line 343
    goto :goto_14

    .line 344
    :cond_14
    sget-boolean v0, LV3/s;->b:Z

    .line 345
    .line 346
    if-nez v0, :cond_15

    .line 347
    .line 348
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    sput-object v0, LV3/s;->a:Ljava/lang/reflect/Field;

    .line 357
    .line 358
    const/4 v14, 0x1

    .line 359
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 360
    .line 361
    .line 362
    :goto_e
    const/4 v14, 0x1

    .line 363
    goto :goto_f

    .line 364
    :catch_3
    move-exception v0

    .line 365
    const-string v14, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 366
    .line 367
    invoke-static {v2, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .line 369
    .line 370
    goto :goto_e

    .line 371
    :goto_f
    sput-boolean v14, LV3/s;->b:Z

    .line 372
    .line 373
    :cond_15
    sget-object v0, LV3/s;->a:Ljava/lang/reflect/Field;

    .line 374
    .line 375
    if-eqz v0, :cond_16

    .line 376
    .line 377
    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    .line 381
    goto :goto_10

    .line 382
    :catch_4
    move-exception v0

    .line 383
    const-string v7, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 384
    .line 385
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .line 387
    .line 388
    :cond_16
    const/4 v7, 0x0

    .line 389
    :goto_10
    if-eqz v7, :cond_1b

    .line 390
    .line 391
    invoke-static {v7}, LV3/s;->d(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    goto :goto_14

    .line 395
    :cond_17
    sget-boolean v0, LV3/s;->b:Z

    .line 396
    .line 397
    if-nez v0, :cond_18

    .line 398
    .line 399
    :try_start_5
    invoke-virtual {v7, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    sput-object v0, LV3/s;->a:Ljava/lang/reflect/Field;

    .line 404
    .line 405
    const/4 v14, 0x1

    .line 406
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    .line 407
    .line 408
    .line 409
    :goto_11
    const/4 v14, 0x1

    .line 410
    goto :goto_12

    .line 411
    :catch_5
    move-exception v0

    .line 412
    const-string v7, "Could not retrieve Resources#mDrawableCache field"

    .line 413
    .line 414
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .line 416
    .line 417
    goto :goto_11

    .line 418
    :goto_12
    sput-boolean v14, LV3/s;->b:Z

    .line 419
    .line 420
    :cond_18
    sget-object v0, LV3/s;->a:Ljava/lang/reflect/Field;

    .line 421
    .line 422
    if-eqz v0, :cond_19

    .line 423
    .line 424
    :try_start_6
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v7
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    .line 428
    goto :goto_13

    .line 429
    :catch_6
    move-exception v0

    .line 430
    const-string v7, "Could not retrieve value from Resources#mDrawableCache"

    .line 431
    .line 432
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .line 434
    .line 435
    :cond_19
    const/4 v7, 0x0

    .line 436
    :goto_13
    if-nez v7, :cond_1a

    .line 437
    .line 438
    goto :goto_14

    .line 439
    :cond_1a
    invoke-static {v7}, LV3/s;->d(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :cond_1b
    :goto_14
    iget v0, v1, Le/a0;->d0:I

    .line 443
    .line 444
    if-eqz v0, :cond_1c

    .line 445
    .line 446
    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iget v2, v1, Le/a0;->d0:I

    .line 454
    .line 455
    const/4 v14, 0x1

    .line 456
    invoke-virtual {v0, v2, v14}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 457
    .line 458
    .line 459
    goto :goto_15

    .line 460
    :cond_1c
    const/4 v14, 0x1

    .line 461
    :goto_15
    if-eqz v9, :cond_1e

    .line 462
    .line 463
    instance-of v0, v10, Landroid/app/Activity;

    .line 464
    .line 465
    if-eqz v0, :cond_1e

    .line 466
    .line 467
    move-object v0, v10

    .line 468
    check-cast v0, Landroid/app/Activity;

    .line 469
    .line 470
    instance-of v2, v0, Landroidx/lifecycle/t;

    .line 471
    .line 472
    if-eqz v2, :cond_1d

    .line 473
    .line 474
    move-object v2, v0

    .line 475
    check-cast v2, Landroidx/lifecycle/t;

    .line 476
    .line 477
    invoke-interface {v2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-virtual {v2}, Landroidx/lifecycle/o;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    .line 486
    .line 487
    invoke-virtual {v2, v7}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_1e

    .line 492
    .line 493
    invoke-virtual {v0, v12}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    .line 495
    .line 496
    goto :goto_16

    .line 497
    :cond_1d
    iget-boolean v2, v1, Le/a0;->Z:Z

    .line 498
    .line 499
    if-eqz v2, :cond_1e

    .line 500
    .line 501
    iget-boolean v2, v1, Le/a0;->a0:Z

    .line 502
    .line 503
    if-nez v2, :cond_1e

    .line 504
    .line 505
    invoke-virtual {v0, v12}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 506
    .line 507
    .line 508
    :cond_1e
    :goto_16
    move v12, v14

    .line 509
    goto :goto_17

    .line 510
    :cond_1f
    move v12, v9

    .line 511
    :goto_17
    if-eqz v12, :cond_21

    .line 512
    .line 513
    instance-of v0, v10, Le/v;

    .line 514
    .line 515
    if-eqz v0, :cond_21

    .line 516
    .line 517
    and-int/lit16 v0, v13, 0x200

    .line 518
    .line 519
    if-eqz v0, :cond_20

    .line 520
    .line 521
    move-object v0, v10

    .line 522
    check-cast v0, Le/v;

    .line 523
    .line 524
    invoke-virtual {v0, v5}, Le/v;->onNightModeChanged(I)V

    .line 525
    .line 526
    .line 527
    :cond_20
    and-int/lit8 v0, v13, 0x4

    .line 528
    .line 529
    if-eqz v0, :cond_21

    .line 530
    .line 531
    check-cast v10, Le/v;

    .line 532
    .line 533
    invoke-virtual {v10, v6}, Le/v;->onLocalesChanged(LI/o;)V

    .line 534
    .line 535
    .line 536
    :cond_21
    if-eqz v12, :cond_23

    .line 537
    .line 538
    if-eqz v8, :cond_23

    .line 539
    .line 540
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {v0}, Le/a0;->o(Landroid/content/res/Configuration;)LI/o;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 553
    .line 554
    if-lt v2, v11, :cond_22

    .line 555
    .line 556
    invoke-static {v0}, Le/O;->setDefaultLocales(LI/o;)V

    .line 557
    .line 558
    .line 559
    goto :goto_18

    .line 560
    :cond_22
    const/4 v2, 0x0

    .line 561
    invoke-virtual {v0, v2}, LI/o;->get(I)Ljava/util/Locale;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 566
    .line 567
    .line 568
    :cond_23
    :goto_18
    if-nez v3, :cond_24

    .line 569
    .line 570
    invoke-virtual {v1, v4}, Le/a0;->n(Landroid/content/Context;)Le/V;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-virtual {v0}, Le/V;->d()V

    .line 575
    .line 576
    .line 577
    goto :goto_19

    .line 578
    :cond_24
    iget-object v0, v1, Le/a0;->g0:Le/W;

    .line 579
    .line 580
    if-eqz v0, :cond_25

    .line 581
    .line 582
    invoke-virtual {v0}, Le/V;->a()V

    .line 583
    .line 584
    .line 585
    :cond_25
    :goto_19
    const/4 v0, 0x3

    .line 586
    if-ne v3, v0, :cond_27

    .line 587
    .line 588
    iget-object v0, v1, Le/a0;->h0:Le/T;

    .line 589
    .line 590
    if-nez v0, :cond_26

    .line 591
    .line 592
    new-instance v0, Le/T;

    .line 593
    .line 594
    invoke-direct {v0, v1, v4}, Le/T;-><init>(Le/a0;Landroid/content/Context;)V

    .line 595
    .line 596
    .line 597
    iput-object v0, v1, Le/a0;->h0:Le/T;

    .line 598
    .line 599
    :cond_26
    iget-object v0, v1, Le/a0;->h0:Le/T;

    .line 600
    .line 601
    invoke-virtual {v0}, Le/V;->d()V

    .line 602
    .line 603
    .line 604
    goto :goto_1a

    .line 605
    :cond_27
    iget-object v0, v1, Le/a0;->h0:Le/T;

    .line 606
    .line 607
    if-eqz v0, :cond_28

    .line 608
    .line 609
    invoke-virtual {v0}, Le/V;->a()V

    .line 610
    .line 611
    .line 612
    :cond_28
    :goto_1a
    return v12
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Le/a0;->o0:Le/e0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    .line 6
    .line 7
    iget-object v1, p0, Le/a0;->t:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v0, Le/e0;

    .line 22
    .line 23
    invoke-direct {v0}, Le/e0;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Le/a0;->o0:Le/e0;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    new-array v3, v1, [Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Le/e0;

    .line 51
    .line 52
    iput-object v0, p0, Le/a0;->o0:Le/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "Failed to instantiate custom view inflater "

    .line 59
    .line 60
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ". Falling back to default."

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "AppCompatDelegate"

    .line 76
    .line 77
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    new-instance v0, Le/e0;

    .line 81
    .line 82
    invoke-direct {v0}, Le/e0;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Le/a0;->o0:Le/e0;

    .line 86
    .line 87
    :cond_1
    :goto_0
    iget-object v1, p0, Le/a0;->o0:Le/e0;

    .line 88
    .line 89
    const/4 v8, 0x1

    .line 90
    invoke-static {}, Ll/x2;->shouldBeUsed()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    move-object v2, p1

    .line 97
    move-object v3, p2

    .line 98
    move-object v4, p3

    .line 99
    move-object v5, p4

    .line 100
    invoke-virtual/range {v1 .. v9}, Le/e0;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method public final d(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 2
    .line 3
    const-string v1, "AppCompat has already installed itself into the Window"

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Le/S;

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    new-instance v1, Le/S;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Le/S;-><init>(Le/a0;Landroid/view/Window$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Le/a0;->v:Le/S;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Le/a0;->t:Landroid/content/Context;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    sget-object v2, Le/a0;->s0:[I

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ll/e2;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2}, Ll/e2;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v0}, Ll/e2;->recycle()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Le/a0;->u:Landroid/view/Window;

    .line 48
    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v0, 0x21

    .line 52
    .line 53
    if-lt p1, v0, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Le/a0;->p0:Landroid/window/OnBackInvokedDispatcher;

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Le/a0;->setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final f(ILe/Y;Lk/p;)V
    .locals 2

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Le/a0;->V:[Le/Y;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    aget-object p2, v0, p1

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p3, p2, Le/Y;->h:Lk/p;

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p2, Le/Y;->m:Z

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean p2, p0, Le/a0;->a0:Z

    .line 26
    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Le/a0;->v:Le/S;

    .line 30
    .line 31
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0, p1, p3}, Le/S;->bypassOnPanelClosed(Landroid/view/Window$Callback;ILandroid/view/Menu;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a0;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final g(Lk/p;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a0;->U:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Le/a0;->U:Z

    .line 8
    .line 9
    iget-object v0, p0, Le/a0;->A:Ll/L0;

    .line 10
    .line 11
    invoke-interface {v0}, Ll/L0;->dismissPopups()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Le/a0;->a0:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x6c

    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Le/a0;->U:Z

    .line 33
    .line 34
    return-void
.end method

.method public getContextForDelegate()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a0;->t:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDrawerToggleDelegate()Le/d;
    .locals 1

    .line 1
    new-instance v0, Le/H;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le/H;-><init>(Le/a0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getLocalNightMode()I
    .locals 1

    .line 1
    iget v0, p0, Le/a0;->c0:I

    .line 2
    .line 3
    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a0;->y:Lj/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Le/a0;->p()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lj/l;

    .line 9
    .line 10
    iget-object v1, p0, Le/a0;->x:Le/b;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Le/b;->getThemedContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Le/a0;->t:Landroid/content/Context;

    .line 20
    .line 21
    :goto_0
    invoke-direct {v0, v1}, Lj/l;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Le/a0;->y:Lj/l;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Le/a0;->y:Lj/l;

    .line 27
    .line 28
    return-object v0
.end method

.method public getPanelState(IZ)Le/Y;
    .locals 3

    .line 1
    iget-object p2, p0, Le/a0;->V:[Le/Y;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    if-gt v1, p1, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    new-array v1, v1, [Le/Y;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    array-length v2, p2

    .line 16
    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Le/a0;->V:[Le/Y;

    .line 20
    .line 21
    move-object p2, v1

    .line 22
    :cond_2
    aget-object v1, p2, p1

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    new-instance v1, Le/Y;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput p1, v1, Le/Y;->a:I

    .line 32
    .line 33
    iput-boolean v0, v1, Le/Y;->n:Z

    .line 34
    .line 35
    aput-object v1, p2, p1

    .line 36
    .line 37
    :cond_3
    return-object v1
.end method

.method public getSupportActionBar()Le/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a0;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le/a0;->x:Le/b;

    .line 5
    .line 6
    return-object v0
.end method

.method public final h(Le/Y;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p1, Le/Y;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Le/a0;->A:Ll/L0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ll/L0;->isOverflowMenuShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Le/Y;->h:Lk/p;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Le/a0;->g(Lk/p;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Le/a0;->t:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "window"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/WindowManager;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-boolean v2, p1, Le/Y;->m:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v2, p1, Le/Y;->e:Le/X;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget p2, p1, Le/Y;->a:I

    .line 50
    .line 51
    invoke-virtual {p0, p2, p1, v1}, Le/a0;->f(ILe/Y;Lk/p;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p1, Le/Y;->k:Z

    .line 56
    .line 57
    iput-boolean p2, p1, Le/Y;->l:Z

    .line 58
    .line 59
    iput-boolean p2, p1, Le/Y;->m:Z

    .line 60
    .line 61
    iput-object v1, p1, Le/Y;->f:Landroid/view/View;

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p1, Le/Y;->n:Z

    .line 65
    .line 66
    iget-object p2, p0, Le/a0;->W:Le/Y;

    .line 67
    .line 68
    if-ne p2, p1, :cond_2

    .line 69
    .line 70
    iput-object v1, p0, Le/a0;->W:Le/Y;

    .line 71
    .line 72
    :cond_2
    iget p1, p1, Le/Y;->a:I

    .line 73
    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Le/a0;->w()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public installViewFactory()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a0;->t:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0, p0}, LM/v;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Le/a0;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "AppCompatDelegate"

    .line 26
    .line 27
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a0;->x:Le/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Le/b;->invalidateOptionsMenu()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Le/a0;->j0:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    or-int/2addr v0, v1

    .line 20
    iput v0, p0, Le/a0;->j0:I

    .line 21
    .line 22
    iget-boolean v0, p0, Le/a0;->i0:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Le/a0;->k0:Le/B;

    .line 33
    .line 34
    invoke-static {v0, v2}, LM/p0;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v1, p0, Le/a0;->i0:Z

    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a0;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, LM/t;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    instance-of v0, v0, Le/c0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0, p1}, LM/u;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x52

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Le/a0;->v:Le/S;

    .line 37
    .line 38
    iget-object v3, p0, Le/a0;->u:Landroid/view/Window;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3, p1}, Le/S;->bypassDispatchKeyEvent(Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x4

    .line 62
    if-nez v3, :cond_6

    .line 63
    .line 64
    if-eq v0, v5, :cond_4

    .line 65
    .line 66
    if-eq v0, v1, :cond_3

    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_11

    .line 75
    .line 76
    invoke-virtual {p0, v4, v2}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-boolean v1, v0, Le/Y;->m:Z

    .line 81
    .line 82
    if-nez v1, :cond_11

    .line 83
    .line 84
    invoke-virtual {p0, v0, p1}, Le/a0;->u(Le/Y;Landroid/view/KeyEvent;)Z

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    and-int/lit16 p1, p1, 0x80

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    move v2, v4

    .line 98
    :goto_0
    iput-boolean v2, p0, Le/a0;->X:Z

    .line 99
    .line 100
    return v4

    .line 101
    :cond_6
    if-eq v0, v5, :cond_10

    .line 102
    .line 103
    if-eq v0, v1, :cond_7

    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_7
    iget-object v0, p0, Le/a0;->D:Lj/c;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_8
    invoke-virtual {p0, v4, v2}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Le/a0;->A:Ll/L0;

    .line 118
    .line 119
    iget-object v3, p0, Le/a0;->t:Landroid/content/Context;

    .line 120
    .line 121
    if-eqz v1, :cond_a

    .line 122
    .line 123
    invoke-interface {v1}, Ll/L0;->canShowOverflowMenu()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_a

    .line 138
    .line 139
    iget-object v1, p0, Le/a0;->A:Ll/L0;

    .line 140
    .line 141
    invoke-interface {v1}, Ll/L0;->isOverflowMenuShowing()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_9

    .line 146
    .line 147
    iget-boolean v1, p0, Le/a0;->a0:Z

    .line 148
    .line 149
    if-nez v1, :cond_d

    .line 150
    .line 151
    invoke-virtual {p0, v0, p1}, Le/a0;->u(Le/Y;Landroid/view/KeyEvent;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_d

    .line 156
    .line 157
    iget-object p1, p0, Le/a0;->A:Ll/L0;

    .line 158
    .line 159
    invoke-interface {p1}, Ll/L0;->showOverflowMenu()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    goto :goto_3

    .line 164
    :cond_9
    iget-object p1, p0, Le/a0;->A:Ll/L0;

    .line 165
    .line 166
    invoke-interface {p1}, Ll/L0;->hideOverflowMenu()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    goto :goto_3

    .line 171
    :cond_a
    iget-boolean v1, v0, Le/Y;->m:Z

    .line 172
    .line 173
    if-nez v1, :cond_e

    .line 174
    .line 175
    iget-boolean v5, v0, Le/Y;->l:Z

    .line 176
    .line 177
    if-eqz v5, :cond_b

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_b
    iget-boolean v1, v0, Le/Y;->k:Z

    .line 181
    .line 182
    if-eqz v1, :cond_d

    .line 183
    .line 184
    iget-boolean v1, v0, Le/Y;->o:Z

    .line 185
    .line 186
    if-eqz v1, :cond_c

    .line 187
    .line 188
    iput-boolean v4, v0, Le/Y;->k:Z

    .line 189
    .line 190
    invoke-virtual {p0, v0, p1}, Le/a0;->u(Le/Y;Landroid/view/KeyEvent;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    goto :goto_1

    .line 195
    :cond_c
    move v1, v2

    .line 196
    :goto_1
    if-eqz v1, :cond_d

    .line 197
    .line 198
    invoke-virtual {p0, v0, p1}, Le/a0;->s(Le/Y;Landroid/view/KeyEvent;)V

    .line 199
    .line 200
    .line 201
    move p1, v2

    .line 202
    goto :goto_3

    .line 203
    :cond_d
    move p1, v4

    .line 204
    goto :goto_3

    .line 205
    :cond_e
    :goto_2
    invoke-virtual {p0, v0, v2}, Le/a0;->h(Le/Y;Z)V

    .line 206
    .line 207
    .line 208
    move p1, v1

    .line 209
    :goto_3
    if-eqz p1, :cond_11

    .line 210
    .line 211
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    const-string v0, "audio"

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Landroid/media/AudioManager;

    .line 222
    .line 223
    if-eqz p1, :cond_f

    .line 224
    .line 225
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 226
    .line 227
    .line 228
    return v2

    .line 229
    :cond_f
    const-string p1, "AppCompatDelegate"

    .line 230
    .line 231
    const-string v0, "Couldn\'t get audio manager"

    .line 232
    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    return v2

    .line 237
    :cond_10
    invoke-virtual {p0}, Le/a0;->r()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_12

    .line 242
    .line 243
    :cond_11
    :goto_4
    return v2

    .line 244
    :cond_12
    :goto_5
    return v4
.end method

.method public final k(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Le/Y;->h:Lk/p;

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, v1, Le/Y;->h:Lk/p;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lk/p;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-lez v3, :cond_0

    .line 25
    .line 26
    iput-object v2, v1, Le/Y;->p:Landroid/os/Bundle;

    .line 27
    .line 28
    :cond_0
    iget-object v2, v1, Le/Y;->h:Lk/p;

    .line 29
    .line 30
    invoke-virtual {v2}, Lk/p;->stopDispatchingItemsChanged()V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Le/Y;->h:Lk/p;

    .line 34
    .line 35
    invoke-virtual {v2}, Lk/p;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iput-boolean v0, v1, Le/Y;->o:Z

    .line 39
    .line 40
    iput-boolean v0, v1, Le/Y;->n:Z

    .line 41
    .line 42
    const/16 v0, 0x6c

    .line 43
    .line 44
    if-eq p1, v0, :cond_2

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Le/a0;->A:Ll/L0;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1, p1}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iput-boolean p1, v0, Le/Y;->k:Z

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, v0, p1}, Le/a0;->u(Le/Y;Landroid/view/KeyEvent;)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public final l()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Le/a0;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_1a

    .line 4
    .line 5
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    .line 6
    .line 7
    iget-object v1, p0, Le/a0;->t:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_19

    .line 20
    .line 21
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v4}, Le/a0;->requestWindowFeature(I)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const/16 v2, 0x6c

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Le/a0;->requestWindowFeature(I)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v5, 0x6d

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v5}, Le/a0;->requestWindowFeature(I)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    const/16 v2, 0xa

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Le/a0;->requestWindowFeature(I)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iput-boolean v2, p0, Le/a0;->S:Z

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Le/a0;->m()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-boolean v2, p0, Le/a0;->T:Z

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    if-nez v2, :cond_9

    .line 101
    .line 102
    iget-boolean v2, p0, Le/a0;->S:Z

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    sget v2, Landroidx/appcompat/R$layout;->abc_dialog_title_material:I

    .line 107
    .line 108
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    .line 114
    iput-boolean v3, p0, Le/a0;->Q:Z

    .line 115
    .line 116
    iput-boolean v3, p0, Le/a0;->P:Z

    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :cond_4
    iget-boolean v0, p0, Le/a0;->P:Z

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    new-instance v0, Landroid/util/TypedValue;

    .line 125
    .line 126
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    sget v7, Landroidx/appcompat/R$attr;->actionBarTheme:I

    .line 134
    .line 135
    invoke-virtual {v2, v7, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 136
    .line 137
    .line 138
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    new-instance v2, Lj/f;

    .line 143
    .line 144
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 145
    .line 146
    invoke-direct {v2, v1, v0}, Lj/f;-><init>(Landroid/content/Context;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    move-object v2, v1

    .line 151
    :goto_1
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sget v2, Landroidx/appcompat/R$layout;->abc_screen_toolbar:I

    .line 156
    .line 157
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/view/ViewGroup;

    .line 162
    .line 163
    sget v2, Landroidx/appcompat/R$id;->decor_content_parent:I

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Ll/L0;

    .line 170
    .line 171
    iput-object v2, p0, Le/a0;->A:Ll/L0;

    .line 172
    .line 173
    iget-object v7, p0, Le/a0;->u:Landroid/view/Window;

    .line 174
    .line 175
    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-interface {v2, v7}, Ll/L0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v2, p0, Le/a0;->Q:Z

    .line 183
    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    iget-object v2, p0, Le/a0;->A:Ll/L0;

    .line 187
    .line 188
    invoke-interface {v2, v5}, Ll/L0;->initFeature(I)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-boolean v2, p0, Le/a0;->N:Z

    .line 192
    .line 193
    if-eqz v2, :cond_7

    .line 194
    .line 195
    iget-object v2, p0, Le/a0;->A:Ll/L0;

    .line 196
    .line 197
    const/4 v5, 0x2

    .line 198
    invoke-interface {v2, v5}, Ll/L0;->initFeature(I)V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget-boolean v2, p0, Le/a0;->O:Z

    .line 202
    .line 203
    if-eqz v2, :cond_b

    .line 204
    .line 205
    iget-object v2, p0, Le/a0;->A:Ll/L0;

    .line 206
    .line 207
    const/4 v5, 0x5

    .line 208
    invoke-interface {v2, v5}, Ll/L0;->initFeature(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    move-object v0, v6

    .line 213
    goto :goto_2

    .line 214
    :cond_9
    iget-boolean v2, p0, Le/a0;->R:Z

    .line 215
    .line 216
    if-eqz v2, :cond_a

    .line 217
    .line 218
    sget v2, Landroidx/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    .line 219
    .line 220
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Landroid/view/ViewGroup;

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_a
    sget v2, Landroidx/appcompat/R$layout;->abc_screen_simple:I

    .line 228
    .line 229
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/view/ViewGroup;

    .line 234
    .line 235
    :cond_b
    :goto_2
    if-eqz v0, :cond_18

    .line 236
    .line 237
    new-instance v2, Le/C;

    .line 238
    .line 239
    invoke-direct {v2, p0}, Le/C;-><init>(Le/a0;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v0, v2}, LM/p0;->setOnApplyWindowInsetsListener(Landroid/view/View;LM/L;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, p0, Le/a0;->A:Ll/L0;

    .line 246
    .line 247
    if-nez v2, :cond_c

    .line 248
    .line 249
    sget v2, Landroidx/appcompat/R$id;->title:I

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Landroid/widget/TextView;

    .line 256
    .line 257
    iput-object v2, p0, Le/a0;->L:Landroid/widget/TextView;

    .line 258
    .line 259
    :cond_c
    invoke-static {v0}, Ll/z2;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 260
    .line 261
    .line 262
    sget v2, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 269
    .line 270
    iget-object v5, p0, Le/a0;->u:Landroid/view/Window;

    .line 271
    .line 272
    const v7, 0x1020002

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    check-cast v5, Landroid/view/ViewGroup;

    .line 280
    .line 281
    if-eqz v5, :cond_e

    .line 282
    .line 283
    :goto_3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-lez v8, :cond_d

    .line 288
    .line 289
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_d
    const/4 v8, -0x1

    .line 301
    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 305
    .line 306
    .line 307
    instance-of v8, v5, Landroid/widget/FrameLayout;

    .line 308
    .line 309
    if-eqz v8, :cond_e

    .line 310
    .line 311
    check-cast v5, Landroid/widget/FrameLayout;

    .line 312
    .line 313
    invoke-virtual {v5, v6}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    .line 315
    .line 316
    :cond_e
    iget-object v5, p0, Le/a0;->u:Landroid/view/Window;

    .line 317
    .line 318
    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 319
    .line 320
    .line 321
    new-instance v5, Le/D;

    .line 322
    .line 323
    invoke-direct {v5, p0}, Le/D;-><init>(Le/a0;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Ll/K0;)V

    .line 327
    .line 328
    .line 329
    iput-object v0, p0, Le/a0;->K:Landroid/view/ViewGroup;

    .line 330
    .line 331
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 332
    .line 333
    instance-of v2, v0, Landroid/app/Activity;

    .line 334
    .line 335
    if-eqz v2, :cond_f

    .line 336
    .line 337
    check-cast v0, Landroid/app/Activity;

    .line 338
    .line 339
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    goto :goto_4

    .line 344
    :cond_f
    iget-object v0, p0, Le/a0;->z:Ljava/lang/CharSequence;

    .line 345
    .line 346
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-nez v2, :cond_12

    .line 351
    .line 352
    iget-object v2, p0, Le/a0;->A:Ll/L0;

    .line 353
    .line 354
    if-eqz v2, :cond_10

    .line 355
    .line 356
    invoke-interface {v2, v0}, Ll/L0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_10
    iget-object v2, p0, Le/a0;->x:Le/b;

    .line 361
    .line 362
    if-eqz v2, :cond_11

    .line 363
    .line 364
    invoke-virtual {v2, v0}, Le/b;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_11
    iget-object v2, p0, Le/a0;->L:Landroid/widget/TextView;

    .line 369
    .line 370
    if-eqz v2, :cond_12

    .line 371
    .line 372
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    :cond_12
    :goto_5
    iget-object v0, p0, Le/a0;->K:Landroid/view/ViewGroup;

    .line 376
    .line 377
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 382
    .line 383
    iget-object v2, p0, Le/a0;->u:Landroid/view/Window;

    .line 384
    .line 385
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-virtual {v0, v5, v6, v7, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 406
    .line 407
    .line 408
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    .line 415
    .line 416
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 421
    .line 422
    .line 423
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    .line 424
    .line 425
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 430
    .line 431
    .line 432
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 433
    .line 434
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_13

    .line 439
    .line 440
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 441
    .line 442
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 447
    .line 448
    .line 449
    :cond_13
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 450
    .line 451
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-eqz v2, :cond_14

    .line 456
    .line 457
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 458
    .line 459
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 464
    .line 465
    .line 466
    :cond_14
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 467
    .line 468
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-eqz v2, :cond_15

    .line 473
    .line 474
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 475
    .line 476
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 481
    .line 482
    .line 483
    :cond_15
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 484
    .line 485
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    if-eqz v2, :cond_16

    .line 490
    .line 491
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 492
    .line 493
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 498
    .line 499
    .line 500
    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 504
    .line 505
    .line 506
    iput-boolean v4, p0, Le/a0;->J:Z

    .line 507
    .line 508
    invoke-virtual {p0, v3, v3}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    iget-boolean v1, p0, Le/a0;->a0:Z

    .line 513
    .line 514
    if-nez v1, :cond_1a

    .line 515
    .line 516
    if-eqz v0, :cond_17

    .line 517
    .line 518
    iget-object v0, v0, Le/Y;->h:Lk/p;

    .line 519
    .line 520
    if-nez v0, :cond_1a

    .line 521
    .line 522
    :cond_17
    iget v0, p0, Le/a0;->j0:I

    .line 523
    .line 524
    or-int/lit16 v0, v0, 0x1000

    .line 525
    .line 526
    iput v0, p0, Le/a0;->j0:I

    .line 527
    .line 528
    iget-boolean v0, p0, Le/a0;->i0:Z

    .line 529
    .line 530
    if-nez v0, :cond_1a

    .line 531
    .line 532
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 533
    .line 534
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    iget-object v1, p0, Le/a0;->k0:Le/B;

    .line 539
    .line 540
    invoke-static {v0, v1}, LM/p0;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 541
    .line 542
    .line 543
    iput-boolean v4, p0, Le/a0;->i0:Z

    .line 544
    .line 545
    return-void

    .line 546
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 547
    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 551
    .line 552
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-boolean v2, p0, Le/a0;->P:Z

    .line 556
    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v2, ", windowActionBarOverlay: "

    .line 561
    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget-boolean v2, p0, Le/a0;->Q:Z

    .line 566
    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v2, ", android:windowIsFloating: "

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    iget-boolean v2, p0, Le/a0;->S:Z

    .line 576
    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v2, ", windowActionModeOverlay: "

    .line 581
    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    iget-boolean v2, p0, Le/a0;->R:Z

    .line 586
    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v2, ", windowNoTitle: "

    .line 591
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    iget-boolean v2, p0, Le/a0;->T:Z

    .line 596
    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v2, " }"

    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    throw v0

    .line 613
    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 614
    .line 615
    .line 616
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 617
    .line 618
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 619
    .line 620
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v0

    .line 624
    :cond_1a
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Le/a0;->d(Landroid/view/Window;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "We have not been given a Window"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final n(Landroid/content/Context;)Le/V;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a0;->g0:Le/W;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Le/W;

    .line 6
    .line 7
    sget-object v1, Le/s0;->d:Le/s0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Le/s0;

    .line 16
    .line 17
    const-string v2, "location"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationManager;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Le/r0;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v3, v1, Le/s0;->c:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p1, v1, Le/s0;->a:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v2, v1, Le/s0;->b:Ljava/lang/Object;

    .line 38
    .line 39
    sput-object v1, Le/s0;->d:Le/s0;

    .line 40
    .line 41
    :cond_0
    sget-object p1, Le/s0;->d:Le/s0;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Le/W;-><init>(Le/a0;Le/s0;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Le/a0;->g0:Le/W;

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Le/a0;->g0:Le/W;

    .line 49
    .line 50
    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a0;->P:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Le/a0;->J:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Le/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Ll/I;->get()Ll/I;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Le/a0;->t:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ll/I;->onConfigurationChanged(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/content/res/Configuration;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Le/a0;->b0:Landroid/content/res/Configuration;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1, p1}, Le/a0;->c(ZZ)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a0;->Y:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Le/a0;->c(ZZ)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Le/a0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 18
    .line 19
    invoke-static {v0}, Lz/v;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Le/a0;->x:Le/b;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iput-boolean p1, p0, Le/a0;->l0:Z

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Le/b;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_1
    sget-object v0, Le/A;->q:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_1
    invoke-static {p0}, Le/A;->b(Le/a0;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Le/A;->p:Lp/i;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lp/i;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1

    .line 58
    :cond_2
    :goto_2
    new-instance v0, Landroid/content/res/Configuration;

    .line 59
    .line 60
    iget-object v1, p0, Le/a0;->t:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Le/a0;->b0:Landroid/content/res/Configuration;

    .line 74
    .line 75
    iput-boolean p1, p0, Le/a0;->Z:Z

    .line 76
    .line 77
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a0;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Le/a0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Le/A;->q:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {p0}, Le/A;->b(Le/a0;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1

    .line 18
    :cond_0
    :goto_0
    iget-boolean v0, p0, Le/a0;->i0:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Le/a0;->k0:Le/B;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Le/a0;->a0:Z

    .line 35
    .line 36
    iget v0, p0, Le/a0;->c0:I

    .line 37
    .line 38
    const/16 v1, -0x64

    .line 39
    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v1, v0, Landroid/app/Activity;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast v0, Landroid/app/Activity;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Le/a0;->r0:Lp/q;

    .line 57
    .line 58
    iget-object v1, p0, Le/a0;->s:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Le/a0;->c0:I

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v0, Le/a0;->r0:Lp/q;

    .line 79
    .line 80
    iget-object v1, p0, Le/a0;->s:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lp/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object v0, p0, Le/a0;->x:Le/b;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Le/b;->a()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Le/a0;->g0:Le/W;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Le/V;->a()V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v0, p0, Le/a0;->h0:Le/T;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Le/V;->a()V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public onMenuItemSelected(Lk/p;Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v2, p0, Le/a0;->a0:Z

    .line 11
    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lk/p;->getRootMenu()Lk/p;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v2, p0, Le/a0;->V:[Le/Y;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v1

    .line 25
    :goto_0
    move v4, v1

    .line 26
    :goto_1
    if-ge v4, v3, :cond_2

    .line 27
    .line 28
    aget-object v5, v2, v4

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object v6, v5, Le/Y;->h:Lk/p;

    .line 33
    .line 34
    if-ne v6, p1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v5, 0x0

    .line 41
    :goto_2
    if-eqz v5, :cond_3

    .line 42
    .line 43
    iget p1, v5, Le/Y;->a:I

    .line 44
    .line 45
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_3
    return v1
.end method

.method public onMenuModeChange(Lk/p;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a0;->A:Ll/L0;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    invoke-interface {p1}, Ll/L0;->canShowOverflowMenu()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    iget-object p1, p0, Le/a0;->t:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Le/a0;->A:Ll/L0;

    .line 26
    .line 27
    invoke-interface {p1}, Ll/L0;->isOverflowMenuShowPending()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Le/a0;->u:Landroid/view/Window;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v2, p0, Le/a0;->A:Ll/L0;

    .line 40
    .line 41
    invoke-interface {v2}, Ll/L0;->isOverflowMenuShowing()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/16 v3, 0x6c

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Le/a0;->A:Ll/L0;

    .line 50
    .line 51
    invoke-interface {v2}, Ll/L0;->hideOverflowMenu()Z

    .line 52
    .line 53
    .line 54
    iget-boolean v2, p0, Le/a0;->a0:Z

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Le/Y;->h:Lk/p;

    .line 63
    .line 64
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-boolean v2, p0, Le/a0;->a0:Z

    .line 71
    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    iget-boolean v2, p0, Le/a0;->i0:Z

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    iget v2, p0, Le/a0;->j0:I

    .line 79
    .line 80
    and-int/2addr v2, v0

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Le/a0;->u:Landroid/view/Window;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v4, p0, Le/a0;->k0:Le/B;

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {p0, v1, v0}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v2, v0, Le/Y;->h:Lk/p;

    .line 102
    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    iget-boolean v4, v0, Le/Y;->o:Z

    .line 106
    .line 107
    if-nez v4, :cond_3

    .line 108
    .line 109
    iget-object v4, v0, Le/Y;->g:Landroid/view/View;

    .line 110
    .line 111
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    iget-object v0, v0, Le/Y;->h:Lk/p;

    .line 118
    .line 119
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Le/a0;->A:Ll/L0;

    .line 123
    .line 124
    invoke-interface {p1}, Ll/L0;->showOverflowMenu()Z

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void

    .line 128
    :cond_4
    invoke-virtual {p0, v1, v0}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-boolean v0, p1, Le/Y;->n:Z

    .line 133
    .line 134
    invoke-virtual {p0, p1, v1}, Le/a0;->h(Le/Y;Z)V

    .line 135
    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Le/a0;->s(Le/Y;Landroid/view/KeyEvent;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a0;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Le/b;->setShowHideAnimationEnabled(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Le/a0;->c(ZZ)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

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
    invoke-virtual {v0, v1}, Le/b;->setShowHideAnimationEnabled(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a0;->l()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Le/a0;->P:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Le/a0;->x:Le/b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Le/x0;

    .line 20
    .line 21
    check-cast v0, Landroid/app/Activity;

    .line 22
    .line 23
    iget-boolean v2, p0, Le/a0;->Q:Z

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Le/x0;-><init>(Landroid/app/Activity;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Le/a0;->x:Le/b;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Le/x0;

    .line 36
    .line 37
    check-cast v0, Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Le/x0;-><init>(Landroid/app/Dialog;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Le/a0;->x:Le/b;

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a0;->x:Le/b;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-boolean v1, p0, Le/a0;->l0:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Le/b;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method public final q(Landroid/content/Context;I)I
    .locals 2

    .line 1
    const/16 v0, -0x64

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_5

    .line 5
    .line 6
    if-eq p2, v1, :cond_4

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Le/a0;->h0:Le/T;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Le/T;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Le/T;-><init>(Le/a0;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Le/a0;->h0:Le/T;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Le/a0;->h0:Le/T;

    .line 31
    .line 32
    invoke-virtual {p1}, Le/T;->getApplyableNightMode()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v0, "uimode"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/app/UiModeManager;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0, p1}, Le/a0;->n(Landroid/content/Context;)Le/V;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Le/V;->getApplyableNightMode()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_4
    return p2

    .line 74
    :cond_5
    :goto_0
    return v1
.end method

.method public final r()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/a0;->X:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Le/a0;->X:Z

    .line 5
    .line 6
    invoke-virtual {p0, v1, v1}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-boolean v4, v2, Le/Y;->m:Z

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v2, v3}, Le/a0;->h(Le/Y;Z)V

    .line 20
    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    iget-object v0, p0, Le/a0;->D:Lj/c;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lj/c;->finish()V

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Le/b;->collapseActionView()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    :cond_2
    return v3

    .line 44
    :cond_3
    return v1
.end method

.method public requestWindowFeature(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x6d

    .line 2
    .line 3
    const/16 v1, 0x6c

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const-string v3, "AppCompatDelegate"

    .line 8
    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 12
    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move p1, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x9

    .line 19
    .line 20
    if-ne p1, v2, :cond_1

    .line 21
    .line 22
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 23
    .line 24
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move p1, v0

    .line 28
    :cond_1
    :goto_0
    iget-boolean v2, p0, Le/a0;->T:Z

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    if-ne p1, v1, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    iget-boolean v2, p0, Le/a0;->P:Z

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    if-ne p1, v4, :cond_3

    .line 42
    .line 43
    iput-boolean v3, p0, Le/a0;->P:Z

    .line 44
    .line 45
    :cond_3
    if-eq p1, v4, :cond_9

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    if-eq p1, v2, :cond_8

    .line 49
    .line 50
    const/4 v2, 0x5

    .line 51
    if-eq p1, v2, :cond_7

    .line 52
    .line 53
    const/16 v2, 0xa

    .line 54
    .line 55
    if-eq p1, v2, :cond_6

    .line 56
    .line 57
    if-eq p1, v1, :cond_5

    .line 58
    .line 59
    if-eq p1, v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_4
    invoke-virtual {p0}, Le/a0;->v()V

    .line 69
    .line 70
    .line 71
    iput-boolean v4, p0, Le/a0;->Q:Z

    .line 72
    .line 73
    return v4

    .line 74
    :cond_5
    invoke-virtual {p0}, Le/a0;->v()V

    .line 75
    .line 76
    .line 77
    iput-boolean v4, p0, Le/a0;->P:Z

    .line 78
    .line 79
    return v4

    .line 80
    :cond_6
    invoke-virtual {p0}, Le/a0;->v()V

    .line 81
    .line 82
    .line 83
    iput-boolean v4, p0, Le/a0;->R:Z

    .line 84
    .line 85
    return v4

    .line 86
    :cond_7
    invoke-virtual {p0}, Le/a0;->v()V

    .line 87
    .line 88
    .line 89
    iput-boolean v4, p0, Le/a0;->O:Z

    .line 90
    .line 91
    return v4

    .line 92
    :cond_8
    invoke-virtual {p0}, Le/a0;->v()V

    .line 93
    .line 94
    .line 95
    iput-boolean v4, p0, Le/a0;->N:Z

    .line 96
    .line 97
    return v4

    .line 98
    :cond_9
    invoke-virtual {p0}, Le/a0;->v()V

    .line 99
    .line 100
    .line 101
    iput-boolean v4, p0, Le/a0;->T:Z

    .line 102
    .line 103
    return v4
.end method

.method public final s(Le/Y;Landroid/view/KeyEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Le/Y;->m:Z

    .line 6
    .line 7
    if-nez v2, :cond_16

    .line 8
    .line 9
    iget-boolean v2, v0, Le/a0;->a0:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    iget v2, v1, Le/Y;->a:I

    .line 16
    .line 17
    iget-object v3, v0, Le/a0;->t:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    .line 31
    and-int/lit8 v4, v4, 0xf

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_1
    iget-object v4, v0, Le/a0;->u:Landroid/view/Window;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x1

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    iget-object v6, v1, Le/Y;->h:Lk/p;

    .line 48
    .line 49
    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v1, v5}, Le/a0;->h(Le/Y;Z)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string v4, "window"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/view/WindowManager;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :cond_3
    invoke-virtual/range {p0 .. p2}, Le/a0;->u(Le/Y;Landroid/view/KeyEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    goto/16 :goto_8

    .line 78
    .line 79
    :cond_4
    iget-object v6, v1, Le/Y;->e:Le/X;

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, -0x2

    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    iget-boolean v9, v1, Le/Y;->n:Z

    .line 86
    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-object v3, v1, Le/Y;->g:Landroid/view/View;

    .line 91
    .line 92
    if-eqz v3, :cond_14

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_14

    .line 99
    .line 100
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    .line 102
    const/4 v6, -0x1

    .line 103
    if-ne v3, v6, :cond_14

    .line 104
    .line 105
    move v10, v6

    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_6
    :goto_0
    if-nez v6, :cond_b

    .line 109
    .line 110
    invoke-virtual {v0}, Le/a0;->getSupportActionBar()Le/b;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-eqz v6, :cond_7

    .line 115
    .line 116
    invoke-virtual {v6}, Le/b;->getThemedContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    goto :goto_1

    .line 121
    :cond_7
    const/4 v6, 0x0

    .line 122
    :goto_1
    if-nez v6, :cond_8

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    move-object v3, v6

    .line 126
    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    .line 127
    .line 128
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 144
    .line 145
    .line 146
    sget v10, Landroidx/appcompat/R$attr;->actionBarPopupTheme:I

    .line 147
    .line 148
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 149
    .line 150
    .line 151
    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    .line 152
    .line 153
    if-eqz v10, :cond_9

    .line 154
    .line 155
    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 156
    .line 157
    .line 158
    :cond_9
    sget v10, Landroidx/appcompat/R$attr;->panelMenuListTheme:I

    .line 159
    .line 160
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 161
    .line 162
    .line 163
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    .line 164
    .line 165
    if-eqz v6, :cond_a

    .line 166
    .line 167
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_a
    sget v6, Landroidx/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    .line 172
    .line 173
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 174
    .line 175
    .line 176
    :goto_3
    new-instance v6, Lj/f;

    .line 177
    .line 178
    invoke-direct {v6, v3, v7}, Lj/f;-><init>(Landroid/content/Context;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Lj/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 186
    .line 187
    .line 188
    iput-object v6, v1, Le/Y;->j:Lj/f;

    .line 189
    .line 190
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    .line 191
    .line 192
    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    .line 197
    .line 198
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    iput v6, v1, Le/Y;->b:I

    .line 203
    .line 204
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    .line 205
    .line 206
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    iput v6, v1, Le/Y;->d:I

    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    .line 214
    .line 215
    new-instance v3, Le/X;

    .line 216
    .line 217
    iget-object v6, v1, Le/Y;->j:Lj/f;

    .line 218
    .line 219
    invoke-direct {v3, v0, v6}, Le/X;-><init>(Le/a0;Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    iput-object v3, v1, Le/Y;->e:Le/X;

    .line 223
    .line 224
    const/16 v3, 0x51

    .line 225
    .line 226
    iput v3, v1, Le/Y;->c:I

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_b
    iget-boolean v3, v1, Le/Y;->n:Z

    .line 230
    .line 231
    if-eqz v3, :cond_c

    .line 232
    .line 233
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-lez v3, :cond_c

    .line 238
    .line 239
    iget-object v3, v1, Le/Y;->e:Le/X;

    .line 240
    .line 241
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    .line 243
    .line 244
    :cond_c
    :goto_4
    iget-object v3, v1, Le/Y;->g:Landroid/view/View;

    .line 245
    .line 246
    if-eqz v3, :cond_d

    .line 247
    .line 248
    iput-object v3, v1, Le/Y;->f:Landroid/view/View;

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_d
    iget-object v3, v1, Le/Y;->h:Lk/p;

    .line 252
    .line 253
    if-nez v3, :cond_e

    .line 254
    .line 255
    goto/16 :goto_7

    .line 256
    .line 257
    :cond_e
    iget-object v3, v0, Le/a0;->C:Le/Z;

    .line 258
    .line 259
    if-nez v3, :cond_f

    .line 260
    .line 261
    new-instance v3, Le/Z;

    .line 262
    .line 263
    invoke-direct {v3, v0}, Le/Z;-><init>(Le/a0;)V

    .line 264
    .line 265
    .line 266
    iput-object v3, v0, Le/a0;->C:Le/Z;

    .line 267
    .line 268
    :cond_f
    iget-object v3, v0, Le/a0;->C:Le/Z;

    .line 269
    .line 270
    iget-object v6, v1, Le/Y;->i:Lk/l;

    .line 271
    .line 272
    if-nez v6, :cond_10

    .line 273
    .line 274
    new-instance v6, Lk/l;

    .line 275
    .line 276
    iget-object v9, v1, Le/Y;->j:Lj/f;

    .line 277
    .line 278
    sget v10, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    .line 279
    .line 280
    invoke-direct {v6, v9, v10}, Lk/l;-><init>(Landroid/content/Context;I)V

    .line 281
    .line 282
    .line 283
    iput-object v6, v1, Le/Y;->i:Lk/l;

    .line 284
    .line 285
    invoke-virtual {v6, v3}, Lk/l;->setCallback(Lk/D;)V

    .line 286
    .line 287
    .line 288
    iget-object v3, v1, Le/Y;->h:Lk/p;

    .line 289
    .line 290
    iget-object v6, v1, Le/Y;->i:Lk/l;

    .line 291
    .line 292
    invoke-virtual {v3, v6}, Lk/p;->addMenuPresenter(Lk/E;)V

    .line 293
    .line 294
    .line 295
    :cond_10
    iget-object v3, v1, Le/Y;->i:Lk/l;

    .line 296
    .line 297
    iget-object v6, v1, Le/Y;->e:Le/X;

    .line 298
    .line 299
    invoke-virtual {v3, v6}, Lk/l;->getMenuView(Landroid/view/ViewGroup;)Lk/G;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Landroid/view/View;

    .line 304
    .line 305
    iput-object v3, v1, Le/Y;->f:Landroid/view/View;

    .line 306
    .line 307
    if-eqz v3, :cond_15

    .line 308
    .line 309
    :goto_5
    invoke-virtual {v1}, Le/Y;->hasPanelItems()Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-nez v3, :cond_11

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_11
    iget-object v3, v1, Le/Y;->f:Landroid/view/View;

    .line 317
    .line 318
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    if-nez v3, :cond_12

    .line 323
    .line 324
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 325
    .line 326
    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 327
    .line 328
    .line 329
    :cond_12
    iget v6, v1, Le/Y;->b:I

    .line 330
    .line 331
    iget-object v9, v1, Le/Y;->e:Le/X;

    .line 332
    .line 333
    invoke-virtual {v9, v6}, Le/X;->setBackgroundResource(I)V

    .line 334
    .line 335
    .line 336
    iget-object v6, v1, Le/Y;->f:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    instance-of v9, v6, Landroid/view/ViewGroup;

    .line 343
    .line 344
    if-eqz v9, :cond_13

    .line 345
    .line 346
    check-cast v6, Landroid/view/ViewGroup;

    .line 347
    .line 348
    iget-object v9, v1, Le/Y;->f:Landroid/view/View;

    .line 349
    .line 350
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    :cond_13
    iget-object v6, v1, Le/Y;->e:Le/X;

    .line 354
    .line 355
    iget-object v9, v1, Le/Y;->f:Landroid/view/View;

    .line 356
    .line 357
    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    .line 359
    .line 360
    iget-object v3, v1, Le/Y;->f:Landroid/view/View;

    .line 361
    .line 362
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-nez v3, :cond_14

    .line 367
    .line 368
    iget-object v3, v1, Le/Y;->f:Landroid/view/View;

    .line 369
    .line 370
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 371
    .line 372
    .line 373
    :cond_14
    move v10, v8

    .line 374
    :goto_6
    iput-boolean v7, v1, Le/Y;->l:Z

    .line 375
    .line 376
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 377
    .line 378
    const/4 v13, 0x0

    .line 379
    const/16 v14, 0x3ea

    .line 380
    .line 381
    const/4 v11, -0x2

    .line 382
    const/4 v12, 0x0

    .line 383
    const/high16 v15, 0x820000

    .line 384
    .line 385
    const/16 v16, -0x3

    .line 386
    .line 387
    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 388
    .line 389
    .line 390
    iget v3, v1, Le/Y;->c:I

    .line 391
    .line 392
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 393
    .line 394
    iget v3, v1, Le/Y;->d:I

    .line 395
    .line 396
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 397
    .line 398
    iget-object v3, v1, Le/Y;->e:Le/X;

    .line 399
    .line 400
    invoke-interface {v4, v3, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .line 402
    .line 403
    iput-boolean v5, v1, Le/Y;->m:Z

    .line 404
    .line 405
    if-nez v2, :cond_16

    .line 406
    .line 407
    invoke-virtual {v0}, Le/a0;->w()V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_15
    :goto_7
    iput-boolean v5, v1, Le/Y;->n:Z

    .line 412
    .line 413
    :cond_16
    :goto_8
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Le/a0;->l()V

    .line 7
    iget-object v0, p0, Le/a0;->K:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v1, p0, Le/a0;->t:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    iget-object p1, p0, Le/a0;->v:Le/S;

    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/S;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a0;->l()V

    .line 2
    iget-object v0, p0, Le/a0;->K:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Le/a0;->v:Le/S;

    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/S;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Le/a0;->l()V

    .line 12
    iget-object v0, p0, Le/a0;->K:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p1, p0, Le/a0;->v:Le/S;

    iget-object p2, p0, Le/a0;->u:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/S;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Le/A;->setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le/a0;->p0:Landroid/window/OnBackInvokedDispatcher;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Le/a0;->q0:Landroid/window/OnBackInvokedCallback;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Le/Q;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Le/a0;->q0:Landroid/window/OnBackInvokedCallback;

    .line 17
    .line 18
    :cond_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 21
    .line 22
    instance-of v1, v0, Landroid/app/Activity;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Landroid/app/Activity;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    check-cast v0, Landroid/app/Activity;

    .line 36
    .line 37
    invoke-static {v0}, Le/Q;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Le/a0;->p0:Landroid/window/OnBackInvokedDispatcher;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput-object p1, p0, Le/a0;->p0:Landroid/window/OnBackInvokedDispatcher;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Le/a0;->w()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a0;->s:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Le/x0;

    .line 13
    .line 14
    if-nez v2, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Le/a0;->y:Lj/l;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Le/b;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object v2, p0, Le/a0;->x:Le/b;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    new-instance v1, Le/p0;

    .line 29
    .line 30
    instance-of v2, v0, Landroid/app/Activity;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    check-cast v0, Landroid/app/Activity;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Le/a0;->z:Ljava/lang/CharSequence;

    .line 42
    .line 43
    :goto_0
    iget-object v2, p0, Le/a0;->v:Le/S;

    .line 44
    .line 45
    invoke-direct {v1, p1, v0, v2}, Le/p0;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Le/a0;->x:Le/b;

    .line 49
    .line 50
    iget-object v0, p0, Le/a0;->v:Le/S;

    .line 51
    .line 52
    iget-object v1, v1, Le/p0;->c:Le/o0;

    .line 53
    .line 54
    iput-object v1, v0, Le/S;->e:Le/o0;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object p1, p0, Le/a0;->v:Le/S;

    .line 62
    .line 63
    iput-object v2, p1, Le/S;->e:Le/o0;

    .line 64
    .line 65
    :goto_1
    invoke-virtual {p0}, Le/a0;->invalidateOptionsMenu()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public setTheme(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a0;->d0:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a0;->z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Le/a0;->A:Ll/L0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ll/L0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Le/a0;->x:Le/b;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Le/b;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Le/a0;->L:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public startSupportActionMode(Lj/b;)Lj/c;
    .locals 8

    .line 1
    if-eqz p1, :cond_14

    .line 2
    .line 3
    iget-object v0, p0, Le/a0;->D:Lj/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lj/c;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Le/K;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Le/K;-><init>(Le/a0;Lj/b;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v1, p0, Le/a0;->w:Le/w;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Le/b;->startActionMode(Lj/b;)Lj/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Le/a0;->D:Lj/c;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v1, p1}, Le/w;->onSupportActionModeStarted(Lj/c;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Le/a0;->D:Lj/c;

    .line 37
    .line 38
    if-nez p1, :cond_13

    .line 39
    .line 40
    iget-object p1, p0, Le/a0;->H:LM/C0;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, LM/C0;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Le/a0;->D:Lj/c;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Lj/c;->finish()V

    .line 52
    .line 53
    .line 54
    :cond_3
    const/4 p1, 0x0

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    iget-boolean v2, p0, Le/a0;->a0:Z

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    :try_start_0
    invoke-interface {v1, v0}, Le/w;->onWindowStartingSupportActionMode(Lj/b;)Lj/c;

    .line 62
    .line 63
    .line 64
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    :cond_4
    move-object v2, p1

    .line 67
    :goto_0
    if-eqz v2, :cond_5

    .line 68
    .line 69
    iput-object v2, p0, Le/a0;->D:Lj/c;

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_5
    iget-object v2, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    const/4 v4, 0x0

    .line 77
    if-nez v2, :cond_a

    .line 78
    .line 79
    iget-boolean v2, p0, Le/a0;->S:Z

    .line 80
    .line 81
    iget-object v5, p0, Le/a0;->t:Landroid/content/Context;

    .line 82
    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    new-instance v2, Landroid/util/TypedValue;

    .line 86
    .line 87
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    sget v7, Landroidx/appcompat/R$attr;->actionBarTheme:I

    .line 95
    .line 96
    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    .line 98
    .line 99
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    .line 100
    .line 101
    if-eqz v7, :cond_6

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 112
    .line 113
    .line 114
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 115
    .line 116
    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 117
    .line 118
    .line 119
    new-instance v6, Lj/f;

    .line 120
    .line 121
    invoke-direct {v6, v5, v4}, Lj/f;-><init>(Landroid/content/Context;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Lj/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 129
    .line 130
    .line 131
    move-object v5, v6

    .line 132
    :cond_6
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 133
    .line 134
    invoke-direct {v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    iput-object v6, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 138
    .line 139
    new-instance v6, Landroid/widget/PopupWindow;

    .line 140
    .line 141
    sget v7, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    .line 142
    .line 143
    invoke-direct {v6, v5, p1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    .line 145
    .line 146
    iput-object v6, p0, Le/a0;->F:Landroid/widget/PopupWindow;

    .line 147
    .line 148
    const/4 v7, 0x2

    .line 149
    invoke-static {v6, v7}, LS/v;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 150
    .line 151
    .line 152
    iget-object v6, p0, Le/a0;->F:Landroid/widget/PopupWindow;

    .line 153
    .line 154
    iget-object v7, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    iget-object v6, p0, Le/a0;->F:Landroid/widget/PopupWindow;

    .line 160
    .line 161
    const/4 v7, -0x1

    .line 162
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    sget v7, Landroidx/appcompat/R$attr;->actionBarSize:I

    .line 170
    .line 171
    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 172
    .line 173
    .line 174
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v2, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    iget-object v5, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 189
    .line 190
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Le/a0;->F:Landroid/widget/PopupWindow;

    .line 194
    .line 195
    const/4 v5, -0x2

    .line 196
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Le/F;

    .line 200
    .line 201
    invoke-direct {v2, p0}, Le/F;-><init>(Le/a0;)V

    .line 202
    .line 203
    .line 204
    iput-object v2, p0, Le/a0;->G:Le/F;

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    iget-object v2, p0, Le/a0;->K:Landroid/view/ViewGroup;

    .line 208
    .line 209
    sget v6, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    .line 210
    .line 211
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    .line 216
    .line 217
    if-eqz v2, :cond_a

    .line 218
    .line 219
    invoke-virtual {p0}, Le/a0;->getSupportActionBar()Le/b;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    if-eqz v6, :cond_8

    .line 224
    .line 225
    invoke-virtual {v6}, Le/b;->getThemedContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    goto :goto_1

    .line 230
    :cond_8
    move-object v6, p1

    .line 231
    :goto_1
    if-nez v6, :cond_9

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_9
    move-object v5, v6

    .line 235
    :goto_2
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 247
    .line 248
    iput-object v2, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 249
    .line 250
    :cond_a
    :goto_3
    iget-object v2, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 251
    .line 252
    if-eqz v2, :cond_11

    .line 253
    .line 254
    iget-object v2, p0, Le/a0;->H:LM/C0;

    .line 255
    .line 256
    if-eqz v2, :cond_b

    .line 257
    .line 258
    invoke-virtual {v2}, LM/C0;->cancel()V

    .line 259
    .line 260
    .line 261
    :cond_b
    iget-object v2, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 262
    .line 263
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 264
    .line 265
    .line 266
    new-instance v2, Lj/g;

    .line 267
    .line 268
    iget-object v5, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 269
    .line 270
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    iget-object v6, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 275
    .line 276
    iget-object v7, p0, Le/a0;->F:Landroid/widget/PopupWindow;

    .line 277
    .line 278
    if-nez v7, :cond_c

    .line 279
    .line 280
    move v7, v3

    .line 281
    goto :goto_4

    .line 282
    :cond_c
    move v7, v4

    .line 283
    :goto_4
    invoke-direct {v2, v5, v6, v0, v7}, Lj/g;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lj/b;Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Lj/g;->getMenu()Landroid/view/Menu;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-interface {v0, v2, v5}, Lj/b;->onCreateActionMode(Lj/c;Landroid/view/Menu;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_10

    .line 295
    .line 296
    invoke-virtual {v2}, Lj/g;->invalidate()V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 300
    .line 301
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Lj/c;)V

    .line 302
    .line 303
    .line 304
    iput-object v2, p0, Le/a0;->D:Lj/c;

    .line 305
    .line 306
    iget-boolean p1, p0, Le/a0;->J:Z

    .line 307
    .line 308
    if-eqz p1, :cond_d

    .line 309
    .line 310
    iget-object p1, p0, Le/a0;->K:Landroid/view/ViewGroup;

    .line 311
    .line 312
    if-eqz p1, :cond_d

    .line 313
    .line 314
    invoke-static {p1}, LM/p0;->isLaidOut(Landroid/view/View;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_d

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_d
    move v3, v4

    .line 322
    :goto_5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 323
    .line 324
    if-eqz v3, :cond_e

    .line 325
    .line 326
    iget-object v0, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 327
    .line 328
    const/4 v2, 0x0

    .line 329
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 333
    .line 334
    invoke-static {v0}, LM/p0;->animate(Landroid/view/View;)LM/C0;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0, p1}, LM/C0;->alpha(F)LM/C0;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    iput-object p1, p0, Le/a0;->H:LM/C0;

    .line 343
    .line 344
    new-instance v0, Le/G;

    .line 345
    .line 346
    invoke-direct {v0, p0}, Le/G;-><init>(Le/a0;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v0}, LM/C0;->setListener(LM/D0;)LM/C0;

    .line 350
    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_e
    iget-object v0, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 354
    .line 355
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 359
    .line 360
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 364
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    instance-of p1, p1, Landroid/view/View;

    .line 370
    .line 371
    if-eqz p1, :cond_f

    .line 372
    .line 373
    iget-object p1, p0, Le/a0;->E:Landroidx/appcompat/widget/ActionBarContextView;

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Landroid/view/View;

    .line 380
    .line 381
    invoke-static {p1}, LM/p0;->requestApplyInsets(Landroid/view/View;)V

    .line 382
    .line 383
    .line 384
    :cond_f
    :goto_6
    iget-object p1, p0, Le/a0;->F:Landroid/widget/PopupWindow;

    .line 385
    .line 386
    if-eqz p1, :cond_11

    .line 387
    .line 388
    iget-object p1, p0, Le/a0;->u:Landroid/view/Window;

    .line 389
    .line 390
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    iget-object v0, p0, Le/a0;->G:Le/F;

    .line 395
    .line 396
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_10
    iput-object p1, p0, Le/a0;->D:Lj/c;

    .line 401
    .line 402
    :cond_11
    :goto_7
    iget-object p1, p0, Le/a0;->D:Lj/c;

    .line 403
    .line 404
    if-eqz p1, :cond_12

    .line 405
    .line 406
    if-eqz v1, :cond_12

    .line 407
    .line 408
    invoke-interface {v1, p1}, Le/w;->onSupportActionModeStarted(Lj/c;)V

    .line 409
    .line 410
    .line 411
    :cond_12
    invoke-virtual {p0}, Le/a0;->w()V

    .line 412
    .line 413
    .line 414
    iget-object p1, p0, Le/a0;->D:Lj/c;

    .line 415
    .line 416
    iput-object p1, p0, Le/a0;->D:Lj/c;

    .line 417
    .line 418
    :cond_13
    invoke-virtual {p0}, Le/a0;->w()V

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Le/a0;->D:Lj/c;

    .line 422
    .line 423
    return-object p1

    .line 424
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 425
    .line 426
    const-string v0, "ActionMode callback can not be null."

    .line 427
    .line 428
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    throw p1
.end method

.method public final t(Le/Y;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p1, Le/Y;->k:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Le/a0;->u(Le/Y;Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object p1, p1, Le/Y;->h:Lk/p;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p2, p3, v0}, Lk/p;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    return v1
.end method

.method public final u(Le/Y;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Le/a0;->a0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p1, Le/Y;->k:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v2

    .line 14
    :cond_1
    iget-object v0, p0, Le/a0;->W:Le/Y;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    if-eq v0, p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Le/a0;->h(Le/Y;Z)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Le/a0;->u:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v3, p1, Le/Y;->a:I

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, p1, Le/Y;->g:Landroid/view/View;

    .line 38
    .line 39
    :cond_3
    const/16 v4, 0x6c

    .line 40
    .line 41
    if-eqz v3, :cond_5

    .line 42
    .line 43
    if-ne v3, v4, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v5, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_5
    :goto_0
    move v5, v2

    .line 49
    :goto_1
    if-eqz v5, :cond_6

    .line 50
    .line 51
    iget-object v6, p0, Le/a0;->A:Ll/L0;

    .line 52
    .line 53
    if-eqz v6, :cond_6

    .line 54
    .line 55
    invoke-interface {v6}, Ll/L0;->setMenuPrepared()V

    .line 56
    .line 57
    .line 58
    :cond_6
    iget-object v6, p1, Le/Y;->g:Landroid/view/View;

    .line 59
    .line 60
    if-nez v6, :cond_1e

    .line 61
    .line 62
    if-eqz v5, :cond_7

    .line 63
    .line 64
    iget-object v6, p0, Le/a0;->x:Le/b;

    .line 65
    .line 66
    instance-of v6, v6, Le/p0;

    .line 67
    .line 68
    if-nez v6, :cond_1e

    .line 69
    .line 70
    :cond_7
    iget-object v6, p1, Le/Y;->h:Lk/p;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    if-eqz v6, :cond_8

    .line 74
    .line 75
    iget-boolean v8, p1, Le/Y;->o:Z

    .line 76
    .line 77
    if-eqz v8, :cond_18

    .line 78
    .line 79
    :cond_8
    if-nez v6, :cond_11

    .line 80
    .line 81
    iget-object v6, p0, Le/a0;->t:Landroid/content/Context;

    .line 82
    .line 83
    if-eqz v3, :cond_9

    .line 84
    .line 85
    if-ne v3, v4, :cond_d

    .line 86
    .line 87
    :cond_9
    iget-object v4, p0, Le/a0;->A:Ll/L0;

    .line 88
    .line 89
    if-eqz v4, :cond_d

    .line 90
    .line 91
    new-instance v4, Landroid/util/TypedValue;

    .line 92
    .line 93
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    sget v9, Landroidx/appcompat/R$attr;->actionBarTheme:I

    .line 101
    .line 102
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 103
    .line 104
    .line 105
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 106
    .line 107
    if-eqz v9, :cond_a

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 118
    .line 119
    .line 120
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 121
    .line 122
    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 123
    .line 124
    .line 125
    sget v10, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    .line 126
    .line 127
    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_a
    sget v9, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    .line 132
    .line 133
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    .line 135
    .line 136
    move-object v9, v7

    .line 137
    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 138
    .line 139
    if-eqz v10, :cond_c

    .line 140
    .line 141
    if-nez v9, :cond_b

    .line 142
    .line 143
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 152
    .line 153
    .line 154
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 155
    .line 156
    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 157
    .line 158
    .line 159
    :cond_c
    if-eqz v9, :cond_d

    .line 160
    .line 161
    new-instance v4, Lj/f;

    .line 162
    .line 163
    invoke-direct {v4, v6, v1}, Lj/f;-><init>(Landroid/content/Context;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Lj/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 171
    .line 172
    .line 173
    move-object v6, v4

    .line 174
    :cond_d
    new-instance v4, Lk/p;

    .line 175
    .line 176
    invoke-direct {v4, v6}, Lk/p;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, p0}, Lk/p;->setCallback(Lk/n;)V

    .line 180
    .line 181
    .line 182
    iget-object v6, p1, Le/Y;->h:Lk/p;

    .line 183
    .line 184
    if-ne v4, v6, :cond_e

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_e
    if-eqz v6, :cond_f

    .line 188
    .line 189
    iget-object v8, p1, Le/Y;->i:Lk/l;

    .line 190
    .line 191
    invoke-virtual {v6, v8}, Lk/p;->removeMenuPresenter(Lk/E;)V

    .line 192
    .line 193
    .line 194
    :cond_f
    iput-object v4, p1, Le/Y;->h:Lk/p;

    .line 195
    .line 196
    iget-object v6, p1, Le/Y;->i:Lk/l;

    .line 197
    .line 198
    if-eqz v6, :cond_10

    .line 199
    .line 200
    invoke-virtual {v4, v6}, Lk/p;->addMenuPresenter(Lk/E;)V

    .line 201
    .line 202
    .line 203
    :cond_10
    :goto_3
    iget-object v4, p1, Le/Y;->h:Lk/p;

    .line 204
    .line 205
    if-nez v4, :cond_11

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_11
    if-eqz v5, :cond_13

    .line 209
    .line 210
    iget-object v4, p0, Le/a0;->A:Ll/L0;

    .line 211
    .line 212
    if-eqz v4, :cond_13

    .line 213
    .line 214
    iget-object v6, p0, Le/a0;->B:Le/I;

    .line 215
    .line 216
    if-nez v6, :cond_12

    .line 217
    .line 218
    new-instance v6, Le/I;

    .line 219
    .line 220
    invoke-direct {v6, p0}, Le/I;-><init>(Le/a0;)V

    .line 221
    .line 222
    .line 223
    iput-object v6, p0, Le/a0;->B:Le/I;

    .line 224
    .line 225
    :cond_12
    iget-object v6, p1, Le/Y;->h:Lk/p;

    .line 226
    .line 227
    iget-object v8, p0, Le/a0;->B:Le/I;

    .line 228
    .line 229
    invoke-interface {v4, v6, v8}, Ll/L0;->setMenu(Landroid/view/Menu;Lk/D;)V

    .line 230
    .line 231
    .line 232
    :cond_13
    iget-object v4, p1, Le/Y;->h:Lk/p;

    .line 233
    .line 234
    invoke-virtual {v4}, Lk/p;->stopDispatchingItemsChanged()V

    .line 235
    .line 236
    .line 237
    iget-object v4, p1, Le/Y;->h:Lk/p;

    .line 238
    .line 239
    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_17

    .line 244
    .line 245
    iget-object p2, p1, Le/Y;->h:Lk/p;

    .line 246
    .line 247
    if-nez p2, :cond_14

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_14
    if-eqz p2, :cond_15

    .line 251
    .line 252
    iget-object v0, p1, Le/Y;->i:Lk/l;

    .line 253
    .line 254
    invoke-virtual {p2, v0}, Lk/p;->removeMenuPresenter(Lk/E;)V

    .line 255
    .line 256
    .line 257
    :cond_15
    iput-object v7, p1, Le/Y;->h:Lk/p;

    .line 258
    .line 259
    :goto_4
    if-eqz v5, :cond_16

    .line 260
    .line 261
    iget-object p1, p0, Le/a0;->A:Ll/L0;

    .line 262
    .line 263
    if-eqz p1, :cond_16

    .line 264
    .line 265
    iget-object p2, p0, Le/a0;->B:Le/I;

    .line 266
    .line 267
    invoke-interface {p1, v7, p2}, Ll/L0;->setMenu(Landroid/view/Menu;Lk/D;)V

    .line 268
    .line 269
    .line 270
    :cond_16
    :goto_5
    return v1

    .line 271
    :cond_17
    iput-boolean v1, p1, Le/Y;->o:Z

    .line 272
    .line 273
    :cond_18
    iget-object v3, p1, Le/Y;->h:Lk/p;

    .line 274
    .line 275
    invoke-virtual {v3}, Lk/p;->stopDispatchingItemsChanged()V

    .line 276
    .line 277
    .line 278
    iget-object v3, p1, Le/Y;->p:Landroid/os/Bundle;

    .line 279
    .line 280
    if-eqz v3, :cond_19

    .line 281
    .line 282
    iget-object v4, p1, Le/Y;->h:Lk/p;

    .line 283
    .line 284
    invoke-virtual {v4, v3}, Lk/p;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 285
    .line 286
    .line 287
    iput-object v7, p1, Le/Y;->p:Landroid/os/Bundle;

    .line 288
    .line 289
    :cond_19
    iget-object v3, p1, Le/Y;->g:Landroid/view/View;

    .line 290
    .line 291
    iget-object v4, p1, Le/Y;->h:Lk/p;

    .line 292
    .line 293
    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_1b

    .line 298
    .line 299
    if-eqz v5, :cond_1a

    .line 300
    .line 301
    iget-object p2, p0, Le/a0;->A:Ll/L0;

    .line 302
    .line 303
    if-eqz p2, :cond_1a

    .line 304
    .line 305
    iget-object v0, p0, Le/a0;->B:Le/I;

    .line 306
    .line 307
    invoke-interface {p2, v7, v0}, Ll/L0;->setMenu(Landroid/view/Menu;Lk/D;)V

    .line 308
    .line 309
    .line 310
    :cond_1a
    iget-object p1, p1, Le/Y;->h:Lk/p;

    .line 311
    .line 312
    invoke-virtual {p1}, Lk/p;->startDispatchingItemsChanged()V

    .line 313
    .line 314
    .line 315
    return v1

    .line 316
    :cond_1b
    if-eqz p2, :cond_1c

    .line 317
    .line 318
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 319
    .line 320
    .line 321
    move-result p2

    .line 322
    goto :goto_6

    .line 323
    :cond_1c
    const/4 p2, -0x1

    .line 324
    :goto_6
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    if-eq p2, v2, :cond_1d

    .line 333
    .line 334
    move p2, v2

    .line 335
    goto :goto_7

    .line 336
    :cond_1d
    move p2, v1

    .line 337
    :goto_7
    iget-object v0, p1, Le/Y;->h:Lk/p;

    .line 338
    .line 339
    invoke-virtual {v0, p2}, Lk/p;->setQwertyMode(Z)V

    .line 340
    .line 341
    .line 342
    iget-object p2, p1, Le/Y;->h:Lk/p;

    .line 343
    .line 344
    invoke-virtual {p2}, Lk/p;->startDispatchingItemsChanged()V

    .line 345
    .line 346
    .line 347
    :cond_1e
    iput-boolean v2, p1, Le/Y;->k:Z

    .line 348
    .line 349
    iput-boolean v1, p1, Le/Y;->l:Z

    .line 350
    .line 351
    iput-object p1, p0, Le/a0;->W:Le/Y;

    .line 352
    .line 353
    return v2
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a0;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 7
    .line 8
    const-string v1, "Window feature must be requested before adding content"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final w()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Le/a0;->p0:Landroid/window/OnBackInvokedDispatcher;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1, v1}, Le/a0;->getPanelState(IZ)Le/Y;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-boolean v0, v0, Le/Y;->m:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :goto_0
    move v1, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Le/a0;->D:Lj/c;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Le/a0;->q0:Landroid/window/OnBackInvokedCallback;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Le/a0;->p0:Landroid/window/OnBackInvokedDispatcher;

    .line 38
    .line 39
    invoke-static {v0, p0}, Le/Q;->b(Ljava/lang/Object;Le/a0;)Landroid/window/OnBackInvokedCallback;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Le/a0;->q0:Landroid/window/OnBackInvokedCallback;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    if-nez v1, :cond_4

    .line 47
    .line 48
    iget-object v0, p0, Le/a0;->q0:Landroid/window/OnBackInvokedCallback;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Le/a0;->p0:Landroid/window/OnBackInvokedDispatcher;

    .line 53
    .line 54
    invoke-static {v1, v0}, Le/Q;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-void
.end method
