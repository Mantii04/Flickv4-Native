.class public final Landroidx/mediarouter/app/Q;
.super Le/c0;
.source "SourceFile"


# instance fields
.field public final n:Lf1/X;

.field public final p:Landroidx/mediarouter/app/J;

.field public final q:Landroid/content/Context;

.field public r:Lf1/L;

.field public s:Ljava/util/ArrayList;

.field public t:Landroidx/mediarouter/app/O;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Z

.field public w:Lf1/U;

.field public final x:J

.field public y:J

.field public final z:Landroidx/mediarouter/app/H;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/Q;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/o0;->a(Landroid/content/Context;IZ)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    .line 3
    sget p2, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p1, p2}, Landroidx/mediarouter/app/o0;->g(Landroid/content/Context;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/mediarouter/app/o0;->e(Landroid/content/Context;)I

    move-result p2

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Le/c0;-><init>(Landroid/content/Context;I)V

    .line 6
    sget-object p1, Lf1/L;->c:Lf1/L;

    iput-object p1, p0, Landroidx/mediarouter/app/Q;->r:Lf1/L;

    .line 7
    new-instance p1, Landroidx/mediarouter/app/H;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/H;-><init>(Landroidx/mediarouter/app/Q;)V

    iput-object p1, p0, Landroidx/mediarouter/app/Q;->z:Landroidx/mediarouter/app/H;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lf1/X;->getInstance(Landroid/content/Context;)Lf1/X;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/Q;->n:Lf1/X;

    .line 10
    new-instance p2, Landroidx/mediarouter/app/J;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/J;-><init>(Landroidx/mediarouter/app/Q;)V

    iput-object p2, p0, Landroidx/mediarouter/app/Q;->p:Landroidx/mediarouter/app/J;

    .line 11
    iput-object p1, p0, Landroidx/mediarouter/app/Q;->q:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/mediarouter/R$integer;->mr_update_routes_delay_ms:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroidx/mediarouter/app/Q;->x:J

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/Q;->v:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->r:Lf1/L;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/mediarouter/app/Q;->p:Landroidx/mediarouter/app/J;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/mediarouter/app/Q;->n:Lf1/X;

    .line 12
    .line 13
    invoke-virtual {v3, v1, v2, v0}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/app/Q;->refreshRoutes()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Le/c0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroidx/mediarouter/R$layout;->mr_picker_dialog:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/c0;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/mediarouter/app/Q;->q:Landroid/content/Context;

    .line 10
    .line 11
    sget v0, Landroidx/mediarouter/app/o0;->a:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Landroidx/mediarouter/app/o0;->h(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget v1, Landroidx/mediarouter/R$color;->mr_dynamic_dialog_background_light:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v1, Landroidx/mediarouter/R$color;->mr_dynamic_dialog_background_dark:I

    .line 31
    .line 32
    :goto_0
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/mediarouter/app/Q;->s:Ljava/util/ArrayList;

    .line 45
    .line 46
    sget v0, Landroidx/mediarouter/R$id;->mr_picker_close_button:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageButton;

    .line 53
    .line 54
    new-instance v1, Landroidx/mediarouter/app/I;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Landroidx/mediarouter/app/I;-><init>(Landroidx/mediarouter/app/Q;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroidx/mediarouter/app/O;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/O;-><init>(Landroidx/mediarouter/app/Q;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Landroidx/mediarouter/app/Q;->t:Landroidx/mediarouter/app/O;

    .line 68
    .line 69
    sget v0, Landroidx/mediarouter/R$id;->mr_picker_list:I

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    iput-object v0, p0, Landroidx/mediarouter/app/Q;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->t:Landroidx/mediarouter/app/O;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 87
    .line 88
    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroidx/mediarouter/app/G;->getDialogWidthForDynamicGroup(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {p1}, Landroidx/mediarouter/app/G;->getDialogHeight(Landroid/content/Context;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v0, p1}, Landroid/view/Window;->setLayout(II)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/Q;->v:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->n:Lf1/X;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->p:Landroidx/mediarouter/app/J;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->z:Landroidx/mediarouter/app/H;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onFilterRoute(Lf1/U;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lf1/U;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->r:Lf1/L;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lf1/U;->matchesSelector(Lf1/L;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf1/U;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lf1/U;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/Q;->onFilterRoute(Lf1/U;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public refreshRoutes()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->w:Lf1/U;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/Q;->v:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->n:Lf1/X;

    .line 13
    .line 14
    invoke-virtual {v1}, Lf1/X;->getRoutes()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/Q;->onFilterRoutes(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Landroidx/mediarouter/app/P;->b:Landroidx/mediarouter/app/P;

    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-wide v3, p0, Landroidx/mediarouter/app/Q;->y:J

    .line 34
    .line 35
    sub-long/2addr v1, v3

    .line 36
    iget-wide v3, p0, Landroidx/mediarouter/app/Q;->x:J

    .line 37
    .line 38
    cmp-long v1, v1, v3

    .line 39
    .line 40
    if-ltz v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    iput-wide v1, p0, Landroidx/mediarouter/app/Q;->y:J

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->s:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->s:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->t:Landroidx/mediarouter/app/O;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/mediarouter/app/O;->a()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->z:Landroidx/mediarouter/app/H;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-wide v5, p0, Landroidx/mediarouter/app/Q;->y:J

    .line 75
    .line 76
    add-long/2addr v5, v3

    .line 77
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public setRouteSelector(Lf1/L;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->r:Lf1/L;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lf1/L;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/app/Q;->r:Lf1/L;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/mediarouter/app/Q;->v:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/Q;->n:Lf1/X;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/mediarouter/app/Q;->p:Landroidx/mediarouter/app/J;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/Q;->refreshRoutes()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "selector must not be null"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method
