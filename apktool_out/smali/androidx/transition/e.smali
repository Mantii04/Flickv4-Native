.class public abstract Landroidx/transition/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final G:[Landroid/animation/Animator;

.field public static final H:[I

.field public static final I:Lx1/q;

.field public static final J:Ljava/lang/ThreadLocal;


# instance fields
.field public A:Z

.field public B:Landroidx/transition/e;

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Lx1/u;

.field public F:Lx1/p;

.field public final b:Ljava/lang/String;

.field public e:J

.field public f:J

.field public j:Landroid/animation/TimeInterpolator;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public p:Landroidx/fragment/app/t0;

.field public q:Landroidx/fragment/app/t0;

.field public r:Lx1/F;

.field public final s:[I

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public v:[Lx1/w;

.field public final w:Ljava/util/ArrayList;

.field public x:[Landroid/animation/Animator;

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/animation/Animator;

    .line 3
    .line 4
    sput-object v0, Landroidx/transition/e;->G:[Landroid/animation/Animator;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x4

    .line 10
    filled-new-array {v0, v1, v2, v3}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/transition/e;->H:[I

    .line 15
    .line 16
    new-instance v0, Lx1/q;

    .line 17
    .line 18
    invoke-direct {v0}, Lx1/p;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/transition/e;->I:Lx1/q;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/transition/e;->J:Ljava/lang/ThreadLocal;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/transition/e;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/transition/e;->e:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/transition/e;->f:J

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/transition/e;->j:Landroid/animation/TimeInterpolator;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/transition/e;->m:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Landroidx/transition/e;->n:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v1, Landroidx/fragment/app/t0;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v2}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 44
    .line 45
    new-instance v1, Landroidx/fragment/app/t0;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/transition/e;->r:Lx1/F;

    .line 53
    .line 54
    sget-object v1, Landroidx/transition/e;->H:[I

    .line 55
    .line 56
    iput-object v1, p0, Landroidx/transition/e;->s:[I

    .line 57
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Landroidx/transition/e;->w:Ljava/util/ArrayList;

    .line 64
    .line 65
    sget-object v1, Landroidx/transition/e;->G:[Landroid/animation/Animator;

    .line 66
    .line 67
    iput-object v1, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    iput v1, p0, Landroidx/transition/e;->y:I

    .line 71
    .line 72
    iput-boolean v1, p0, Landroidx/transition/e;->z:Z

    .line 73
    .line 74
    iput-boolean v1, p0, Landroidx/transition/e;->A:Z

    .line 75
    .line 76
    iput-object v0, p0, Landroidx/transition/e;->B:Landroidx/transition/e;

    .line 77
    .line 78
    iput-object v0, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Landroidx/transition/e;->D:Ljava/util/ArrayList;

    .line 86
    .line 87
    sget-object v0, Landroidx/transition/e;->I:Lx1/q;

    .line 88
    .line 89
    iput-object v0, p0, Landroidx/transition/e;->F:Lx1/p;

    .line 90
    .line 91
    return-void
.end method

.method public static a(Landroidx/fragment/app/t0;Landroid/view/View;Lx1/I;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/g;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x0

    .line 13
    if-ltz p2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 16
    .line 17
    check-cast v1, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ltz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-static {p1}, LM/p0;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lp/g;

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, p2, v0}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v1, p2, p1}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    instance-of p2, p2, Landroid/widget/ListView;

    .line 60
    .line 61
    if-eqz p2, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/widget/ListView;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    iget-object p0, p0, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 88
    .line 89
    check-cast p0, Lp/n;

    .line 90
    .line 91
    invoke-virtual {p0, v1, v2}, Lp/n;->indexOfKey(J)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-ltz p2, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, v1, v2}, Lp/n;->get(J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/view/View;

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    const/4 p2, 0x0

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1, v2, v0}, Lp/n;->put(JLjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    const/4 p2, 0x1

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1, v2, p1}, Lp/n;->put(JLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void
.end method

.method public static h()Lp/g;
    .locals 2

    .line 1
    sget-object v0, Landroidx/transition/e;->J:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lp/g;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lp/g;

    .line 12
    .line 13
    invoke-direct {v1}, Lp/g;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v1
.end method

.method public static j(Lx1/I;Lx1/I;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lx1/I;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p1, p1, Lx1/I;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p2, 0x1

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    xor-int/2addr p0, p2

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public addListener(Lx1/w;)Landroidx/transition/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public animate(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/transition/e;->end()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/e;->getDuration()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/transition/e;->getDuration()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/e;->getStartDelay()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-ltz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/transition/e;->getStartDelay()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    add-long/2addr v2, v0

    .line 41
    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/e;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/transition/e;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    new-instance v0, Lx1/s;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lx1/s;-><init>(Landroidx/transition/e;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    new-instance v0, Lx1/I;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lx1/I;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/transition/e;->captureStartValues(Lx1/I;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/transition/e;->captureEndValues(Lx1/I;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v0, Lx1/I;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/transition/e;->c(Lx1/I;)V

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 40
    .line 41
    invoke-static {v1, p1, v0}, Landroidx/transition/e;->a(Landroidx/fragment/app/t0;Landroid/view/View;Lx1/I;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v1, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 46
    .line 47
    invoke-static {v1, p1, v0}, Landroidx/transition/e;->a(Landroidx/fragment/app/t0;Landroid/view/View;Lx1/I;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    check-cast p1, Landroid/view/ViewGroup;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v0, v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0, v1, p2}, Landroidx/transition/e;->b(Landroid/view/View;Z)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :goto_3
    return-void
.end method

.method public c(Lx1/I;)V
    .locals 0

    .line 1
    return-void
.end method

.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->w:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Landroid/animation/Animator;

    .line 14
    .line 15
    sget-object v2, Landroidx/transition/e;->G:[Landroid/animation/Animator;

    .line 16
    .line 17
    iput-object v2, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v1, :cond_0

    .line 22
    .line 23
    aget-object v2, v0, v1

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v0, v1

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-object v0, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 35
    .line 36
    sget-object v0, Lx1/x;->k:Landroidx/media3/exoplayer/source/chunk/a;

    .line 37
    .line 38
    invoke-virtual {p0, p0, v0}, Landroidx/transition/e;->k(Landroidx/transition/e;Lx1/x;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public abstract captureEndValues(Lx1/I;)V
.end method

.method public abstract captureStartValues(Lx1/I;)V
.end method

.method public clone()Landroidx/transition/e;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/e;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/e;->D:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Landroidx/fragment/app/t0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/fragment/app/t0;-><init>(I)V

    iput-object v1, v0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 5
    new-instance v1, Landroidx/fragment/app/t0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/fragment/app/t0;-><init>(I)V

    iput-object v1, v0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 7
    iput-object v1, v0, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 8
    iput-object p0, v0, Landroidx/transition/e;->B:Landroidx/transition/e;

    .line 9
    iput-object v1, v0, Landroidx/transition/e;->C:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/transition/e;->clone()Landroidx/transition/e;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lx1/I;Lx1/I;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final d(Landroid/view/ViewGroup;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Landroidx/transition/e;->e(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/transition/e;->m:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Landroidx/transition/e;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-gtz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/transition/e;->b(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 26
    move v3, v1

    .line 27
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v3, v4, :cond_5

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    new-instance v5, Lx1/I;

    .line 50
    .line 51
    invoke-direct {v5, v4}, Lx1/I;-><init>(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v5}, Landroidx/transition/e;->captureStartValues(Lx1/I;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p0, v5}, Landroidx/transition/e;->captureEndValues(Lx1/I;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    iget-object v6, v5, Lx1/I;->c:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v5}, Landroidx/transition/e;->c(Lx1/I;)V

    .line 69
    .line 70
    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    iget-object v6, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 74
    .line 75
    invoke-static {v6, v4, v5}, Landroidx/transition/e;->a(Landroidx/fragment/app/t0;Landroid/view/View;Lx1/I;)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    iget-object v6, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 80
    .line 81
    invoke-static {v6, v4, v5}, Landroidx/transition/e;->a(Landroidx/fragment/app/t0;Landroid/view/View;Lx1/I;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ge v1, p1, :cond_8

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/view/View;

    .line 98
    .line 99
    new-instance v0, Lx1/I;

    .line 100
    .line 101
    invoke-direct {v0, p1}, Lx1/I;-><init>(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    if-eqz p2, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroidx/transition/e;->captureStartValues(Lx1/I;)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/transition/e;->captureEndValues(Lx1/I;)V

    .line 111
    .line 112
    .line 113
    :goto_5
    iget-object v3, v0, Lx1/I;->c:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroidx/transition/e;->c(Lx1/I;)V

    .line 119
    .line 120
    .line 121
    if-eqz p2, :cond_7

    .line 122
    .line 123
    iget-object v3, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 124
    .line 125
    invoke-static {v3, p1, v0}, Landroidx/transition/e;->a(Landroidx/fragment/app/t0;Landroid/view/View;Lx1/I;)V

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_7
    iget-object v3, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 130
    .line 131
    invoke-static {v3, p1, v0}, Landroidx/transition/e;->a(Landroidx/fragment/app/t0;Landroid/view/View;Lx1/I;)V

    .line 132
    .line 133
    .line 134
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lp/g;

    .line 8
    .line 9
    invoke-virtual {p1}, Lp/q;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 15
    .line 16
    check-cast p1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 24
    .line 25
    check-cast p1, Lp/n;

    .line 26
    .line 27
    invoke-virtual {p1}, Lp/n;->clear()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lp/g;

    .line 36
    .line 37
    invoke-virtual {p1}, Lp/q;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/fragment/app/t0;->b:Ljava/lang/Cloneable;

    .line 43
    .line 44
    check-cast p1, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 50
    .line 51
    iget-object p1, p1, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 52
    .line 53
    check-cast p1, Lp/n;

    .line 54
    .line 55
    invoke-virtual {p1}, Lp/n;->clear()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public end()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/transition/e;->y:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/transition/e;->y:I

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    sget-object v0, Lx1/x;->i:Landroidx/media3/exoplayer/source/chunk/a;

    .line 10
    .line 11
    invoke-virtual {p0, p0, v0}, Landroidx/transition/e;->k(Landroidx/transition/e;Lx1/x;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v2, v0

    .line 16
    :goto_0
    iget-object v3, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 17
    .line 18
    iget-object v3, v3, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 19
    .line 20
    check-cast v3, Lp/n;

    .line 21
    .line 22
    invoke-virtual {v3}, Lp/n;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v2, v3, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 29
    .line 30
    iget-object v3, v3, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 31
    .line 32
    check-cast v3, Lp/n;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lp/n;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/view/View;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v2, v0

    .line 49
    :goto_1
    iget-object v3, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 50
    .line 51
    iget-object v3, v3, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 52
    .line 53
    check-cast v3, Lp/n;

    .line 54
    .line 55
    invoke-virtual {v3}, Lp/n;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ge v2, v3, :cond_3

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 62
    .line 63
    iget-object v3, v3, Landroidx/fragment/app/t0;->c:Ljava/lang/Cloneable;

    .line 64
    .line 65
    check-cast v3, Lp/n;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Lp/n;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/view/View;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 76
    .line 77
    .line 78
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iput-boolean v1, p0, Landroidx/transition/e;->A:Z

    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public f(Landroid/view/ViewGroup;Landroidx/fragment/app/t0;Landroidx/fragment/app/t0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroidx/transition/e;->h()Lp/g;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroid/util/SparseIntArray;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v0}, Landroidx/transition/e;->getRootTransition()Landroidx/transition/e;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    if-ge v5, v3, :cond_c

    .line 25
    .line 26
    move-object/from16 v6, p4

    .line 27
    .line 28
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Lx1/I;

    .line 33
    .line 34
    move-object/from16 v8, p5

    .line 35
    .line 36
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Lx1/I;

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    iget-object v11, v7, Lx1/I;->c:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_0

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    :cond_0
    if-eqz v9, :cond_1

    .line 54
    .line 55
    iget-object v11, v9, Lx1/I;->c:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-nez v11, :cond_1

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    :cond_1
    if-nez v7, :cond_4

    .line 65
    .line 66
    if-nez v9, :cond_4

    .line 67
    .line 68
    :cond_2
    move-object/from16 v11, p1

    .line 69
    .line 70
    :cond_3
    move-object/from16 v14, p3

    .line 71
    .line 72
    move/from16 v16, v3

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_4
    if-eqz v7, :cond_5

    .line 77
    .line 78
    if-eqz v9, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0, v7, v9}, Landroidx/transition/e;->isTransitionRequired(Lx1/I;Lx1/I;)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_2

    .line 85
    .line 86
    :cond_5
    move-object/from16 v11, p1

    .line 87
    .line 88
    invoke-virtual {v0, v11, v7, v9}, Landroidx/transition/e;->createAnimator(Landroid/view/ViewGroup;Lx1/I;Lx1/I;)Landroid/animation/Animator;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    if-eqz v12, :cond_3

    .line 93
    .line 94
    if-eqz v9, :cond_a

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/transition/e;->getTransitionProperties()[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iget-object v9, v9, Lx1/I;->b:Landroid/view/View;

    .line 101
    .line 102
    if-eqz v7, :cond_9

    .line 103
    .line 104
    array-length v13, v7

    .line 105
    if-lez v13, :cond_9

    .line 106
    .line 107
    new-instance v13, Lx1/I;

    .line 108
    .line 109
    invoke-direct {v13, v9}, Lx1/I;-><init>(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    move-object/from16 v14, p3

    .line 113
    .line 114
    iget-object v15, v14, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v15, Lp/g;

    .line 117
    .line 118
    invoke-virtual {v15, v9}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v15

    .line 122
    check-cast v15, Lx1/I;

    .line 123
    .line 124
    if-eqz v15, :cond_6

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    :goto_1
    array-length v10, v7

    .line 128
    if-ge v4, v10, :cond_6

    .line 129
    .line 130
    iget-object v10, v13, Lx1/I;->a:Ljava/util/HashMap;

    .line 131
    .line 132
    move/from16 v16, v3

    .line 133
    .line 134
    aget-object v3, v7, v4

    .line 135
    .line 136
    move/from16 v17, v4

    .line 137
    .line 138
    iget-object v4, v15, Lx1/I;->a:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v4, v17, 0x1

    .line 148
    .line 149
    move/from16 v3, v16

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    move/from16 v16, v3

    .line 153
    .line 154
    invoke-virtual {v1}, Lp/q;->size()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const/4 v4, 0x0

    .line 159
    :goto_2
    if-ge v4, v3, :cond_8

    .line 160
    .line 161
    invoke-virtual {v1, v4}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Landroid/animation/Animator;

    .line 166
    .line 167
    invoke-virtual {v1, v7}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Lx1/t;

    .line 172
    .line 173
    iget-object v10, v7, Lx1/t;->c:Lx1/I;

    .line 174
    .line 175
    if-eqz v10, :cond_7

    .line 176
    .line 177
    iget-object v10, v7, Lx1/t;->a:Landroid/view/View;

    .line 178
    .line 179
    if-ne v10, v9, :cond_7

    .line 180
    .line 181
    iget-object v10, v7, Lx1/t;->b:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/transition/e;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_7

    .line 192
    .line 193
    iget-object v7, v7, Lx1/t;->c:Lx1/I;

    .line 194
    .line 195
    invoke-virtual {v7, v13}, Lx1/I;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_7

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    goto :goto_3

    .line 203
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_8
    move-object v10, v12

    .line 207
    goto :goto_3

    .line 208
    :cond_9
    move-object/from16 v14, p3

    .line 209
    .line 210
    move/from16 v16, v3

    .line 211
    .line 212
    move-object v10, v12

    .line 213
    const/4 v13, 0x0

    .line 214
    :goto_3
    move-object v12, v10

    .line 215
    move-object v10, v13

    .line 216
    goto :goto_4

    .line 217
    :cond_a
    move-object/from16 v14, p3

    .line 218
    .line 219
    move/from16 v16, v3

    .line 220
    .line 221
    iget-object v9, v7, Lx1/I;->b:Landroid/view/View;

    .line 222
    .line 223
    const/4 v10, 0x0

    .line 224
    :goto_4
    if-eqz v12, :cond_b

    .line 225
    .line 226
    new-instance v3, Lx1/t;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/transition/e;->getName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v11}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 237
    .line 238
    .line 239
    iput-object v9, v3, Lx1/t;->a:Landroid/view/View;

    .line 240
    .line 241
    iput-object v4, v3, Lx1/t;->b:Ljava/lang/String;

    .line 242
    .line 243
    iput-object v10, v3, Lx1/t;->c:Lx1/I;

    .line 244
    .line 245
    iput-object v7, v3, Lx1/t;->d:Landroid/view/WindowId;

    .line 246
    .line 247
    iput-object v0, v3, Lx1/t;->e:Landroidx/transition/e;

    .line 248
    .line 249
    iput-object v12, v3, Lx1/t;->f:Landroid/animation/Animator;

    .line 250
    .line 251
    invoke-virtual {v1, v12, v3}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    iget-object v3, v0, Landroidx/transition/e;->D:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 260
    .line 261
    move/from16 v3, v16

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_c
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_d

    .line 270
    .line 271
    const/4 v4, 0x0

    .line 272
    :goto_6
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-ge v4, v3, :cond_d

    .line 277
    .line 278
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    iget-object v5, v0, Landroidx/transition/e;->D:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Landroid/animation/Animator;

    .line 289
    .line 290
    invoke-virtual {v1, v3}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Lx1/t;

    .line 295
    .line 296
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    int-to-long v5, v5

    .line 301
    const-wide v7, 0x7fffffffffffffffL

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    sub-long/2addr v5, v7

    .line 307
    iget-object v7, v3, Lx1/t;->f:Landroid/animation/Animator;

    .line 308
    .line 309
    invoke-virtual {v7}, Landroid/animation/Animator;->getStartDelay()J

    .line 310
    .line 311
    .line 312
    move-result-wide v7

    .line 313
    add-long/2addr v7, v5

    .line 314
    iget-object v3, v3, Lx1/t;->f:Landroid/animation/Animator;

    .line 315
    .line 316
    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 317
    .line 318
    .line 319
    add-int/lit8 v4, v4, 0x1

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_d
    return-void
.end method

.method public final g(Landroid/view/View;Z)Lx1/I;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->r:Lx1/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/transition/e;->g(Landroid/view/View;Z)Lx1/I;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 16
    .line 17
    :goto_0
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_4

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_1
    if-ge v2, v1, :cond_5

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lx1/I;

    .line 32
    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_3
    iget-object v3, v3, Lx1/I;->b:Landroid/view/View;

    .line 37
    .line 38
    if-ne v3, p1, :cond_4

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    const/4 v2, -0x1

    .line 45
    :goto_2
    if-ltz v2, :cond_7

    .line 46
    .line 47
    if-eqz p2, :cond_6

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/transition/e;->u:Ljava/util/ArrayList;

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_6
    iget-object p1, p0, Landroidx/transition/e;->t:Ljava/util/ArrayList;

    .line 53
    .line 54
    :goto_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lx1/I;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_7
    :goto_4
    const/4 p1, 0x0

    .line 62
    return-object p1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/e;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEpicenterCallback()Lx1/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->E:Lx1/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->j:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPathMotion()Lx1/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->F:Lx1/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropagation()Lx1/C;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getRootTransition()Landroidx/transition/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->r:Lx1/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/transition/e;->getRootTransition()Landroidx/transition/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    return-object p0
.end method

.method public getStartDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/e;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lx1/I;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->r:Lx1/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/transition/e;->getTransitionValues(Landroid/view/View;Z)Lx1/I;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/transition/e;->p:Landroidx/fragment/app/t0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Landroidx/transition/e;->q:Landroidx/fragment/app/t0;

    .line 16
    .line 17
    :goto_0
    iget-object p2, p2, Landroidx/fragment/app/t0;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Lp/g;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lx1/I;

    .line 26
    .line 27
    return-object p1
.end method

.method public final i(Landroid/view/View;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/transition/e;->m:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    iget-object v4, p0, Landroidx/transition/e;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    :cond_2
    :goto_0
    return v3
.end method

.method public isTransitionRequired(Lx1/I;Lx1/I;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/transition/e;->getTransitionProperties()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    move v3, v0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_3

    .line 15
    .line 16
    aget-object v4, v1, v3

    .line 17
    .line 18
    invoke-static {p1, p2, v4}, Landroidx/transition/e;->j(Lx1/I;Lx1/I;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p1, Lx1/I;->a:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1, p2, v2}, Landroidx/transition/e;->j(Lx1/I;Lx1/I;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    :goto_1
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_3
    return v0
.end method

.method public final k(Landroidx/transition/e;Lx1/x;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->B:Landroidx/transition/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/transition/e;->k(Landroidx/transition/e;Lx1/x;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Landroidx/transition/e;->v:[Lx1/w;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-array v1, v0, [Lx1/w;

    .line 29
    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Landroidx/transition/e;->v:[Lx1/w;

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, [Lx1/w;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :goto_0
    if-ge v4, v0, :cond_2

    .line 44
    .line 45
    aget-object v5, v1, v4

    .line 46
    .line 47
    invoke-interface {p2, v5, p1, v3}, Lx1/x;->notifyListener(Lx1/w;Landroidx/transition/e;Z)V

    .line 48
    .line 49
    .line 50
    aput-object v2, v1, v4

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput-object v1, p0, Landroidx/transition/e;->v:[Lx1/w;

    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, "@"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ": "

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Landroidx/transition/e;->f:J

    .line 39
    .line 40
    const-wide/16 v3, -0x1

    .line 41
    .line 42
    cmp-long p1, v1, v3

    .line 43
    .line 44
    const-string v1, ") "

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const-string p1, "dur("

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-wide v5, p0, Landroidx/transition/e;->f:J

    .line 54
    .line 55
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-wide v5, p0, Landroidx/transition/e;->e:J

    .line 62
    .line 63
    cmp-long p1, v5, v3

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const-string p1, "dly("

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-wide v2, p0, Landroidx/transition/e;->e:J

    .line 73
    .line 74
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object p1, p0, Landroidx/transition/e;->j:Landroid/animation/TimeInterpolator;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    const-string p1, "interp("

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/transition/e;->j:Landroid/animation/TimeInterpolator;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object p1, p0, Landroidx/transition/e;->m:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget-object v2, p0, Landroidx/transition/e;->n:Ljava/util/ArrayList;

    .line 104
    .line 105
    if-gtz v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-lez v1, :cond_8

    .line 112
    .line 113
    :cond_3
    const-string v1, "tgts("

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const-string v3, ", "

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    if-lez v1, :cond_5

    .line 126
    .line 127
    move v1, v4

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-ge v1, v5, :cond_5

    .line 133
    .line 134
    if-lez v1, :cond_4

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-lez p1, :cond_7

    .line 154
    .line 155
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-ge v4, p1, :cond_7

    .line 160
    .line 161
    if-lez v4, :cond_6

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_7
    const-string p1, ")"

    .line 177
    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    return-object p1
.end method

.method public pause(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Landroidx/transition/e;->A:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/transition/e;->w:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [Landroid/animation/Animator;

    .line 18
    .line 19
    sget-object v1, Landroidx/transition/e;->G:[Landroid/animation/Animator;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    aget-object v2, p1, v0

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v3, p1, v0

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 39
    .line 40
    sget-object p1, Lx1/x;->l:Landroidx/media3/exoplayer/source/chunk/a;

    .line 41
    .line 42
    invoke-virtual {p0, p0, p1}, Landroidx/transition/e;->k(Landroidx/transition/e;Lx1/x;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p0, Landroidx/transition/e;->z:Z

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public removeListener(Lx1/w;)Landroidx/transition/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/transition/e;->B:Landroidx/transition/e;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/transition/e;->removeListener(Lx1/w;)Landroidx/transition/e;

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroidx/transition/e;->C:Ljava/util/ArrayList;

    .line 29
    .line 30
    :cond_2
    :goto_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/e;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Landroidx/transition/e;->z:Z

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/transition/e;->A:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/transition/e;->w:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Landroid/animation/Animator;

    .line 22
    .line 23
    sget-object v1, Landroidx/transition/e;->G:[Landroid/animation/Animator;

    .line 24
    .line 25
    iput-object v1, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz v0, :cond_0

    .line 30
    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object v2, p1, v0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput-object p1, p0, Landroidx/transition/e;->x:[Landroid/animation/Animator;

    .line 43
    .line 44
    sget-object p1, Lx1/x;->o:Landroidx/media3/exoplayer/source/chunk/a;

    .line 45
    .line 46
    invoke-virtual {p0, p0, p1}, Landroidx/transition/e;->k(Landroidx/transition/e;Lx1/x;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Landroidx/transition/e;->z:Z

    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public runAnimators()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/transition/e;->start()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/transition/e;->h()Lp/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/transition/e;->D:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/transition/e;->start()V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    new-instance v3, Lx1/r;

    .line 38
    .line 39
    invoke-direct {v3, p0, v0}, Lx1/r;-><init>(Landroidx/transition/e;Lp/g;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroidx/transition/e;->animate(Landroid/animation/Animator;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Landroidx/transition/e;->D:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/transition/e;->end()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setDuration(J)Landroidx/transition/e;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/transition/e;->f:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setEpicenterCallback(Lx1/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/e;->E:Lx1/u;

    .line 2
    .line 3
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/e;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/e;->j:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPathMotion(Lx1/p;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Landroidx/transition/e;->I:Lx1/q;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/transition/e;->F:Lx1/p;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Landroidx/transition/e;->F:Lx1/p;

    .line 9
    .line 10
    return-void
.end method

.method public setPropagation(Lx1/C;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setStartDelay(J)Landroidx/transition/e;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/transition/e;->e:J

    .line 2
    .line 3
    return-object p0
.end method

.method public start()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/transition/e;->y:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lx1/x;->h:Landroidx/media3/exoplayer/source/chunk/a;

    .line 6
    .line 7
    invoke-virtual {p0, p0, v0}, Landroidx/transition/e;->k(Landroidx/transition/e;Lx1/x;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/transition/e;->A:Z

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/transition/e;->y:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Landroidx/transition/e;->y:I

    .line 18
    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/transition/e;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
