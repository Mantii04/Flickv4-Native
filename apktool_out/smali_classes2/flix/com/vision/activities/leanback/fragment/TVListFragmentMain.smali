.class public Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;
.super Landroidx/leanback/app/h;
.source "SourceFile"

# interfaces
.implements LW4/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;,
        Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;,
        Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;
    }
.end annotation


# instance fields
.field public A0:Lflix/com/vision/activities/leanback/fragment/f;

.field public B0:Lio/reactivex/disposables/Disposable;

.field public C0:Lflix/com/vision/models/tmdb/Network;

.field public D0:Z

.field public E0:Z

.field public F0:Lflix/com/vision/models/tmdb/Network;

.field public G0:Landroidx/leanback/widget/a;

.field public H0:LW4/e;

.field public I0:LW4/d;

.field public J0:Ljava/util/ArrayList;

.field public K0:Ljava/util/ArrayList;

.field public L0:Ljava/util/ArrayList;

.field public M0:Ljava/util/ArrayList;

.field public N0:Ljava/util/ArrayList;

.field public O0:Ljava/util/ArrayList;

.field public P0:Ljava/util/ArrayList;

.field public Q0:Ljava/util/ArrayList;

.field public R0:Ljava/util/ArrayList;

.field public S0:Ljava/util/ArrayList;

.field public T0:Ljava/util/ArrayList;

.field public U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

.field public V0:Lflix/com/vision/activities/leanback/fragment/d;

.field public final W0:Lflix/com/vision/activities/leanback/fragment/j;

.field public final X0:Landroidx/leanback/widget/a;

.field public Y0:Z

.field public Z0:Landroidx/leanback/widget/a;

.field public a1:Z

.field public final y0:Ljava/util/HashMap;

.field public final z0:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Landroidx/leanback/app/h;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->y0:Ljava/util/HashMap;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->z0:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->C0:Lflix/com/vision/models/tmdb/Network;

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->D0:Z

    .line 24
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 25
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 26
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 27
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 28
    sget-object v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 29
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 30
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->a1:Z

    .line 31
    new-instance v0, Lflix/com/vision/activities/leanback/fragment/j;

    const/4 v2, 0x2

    .line 32
    invoke-direct {v0, v2}, Landroidx/leanback/widget/m0;-><init>(I)V

    .line 33
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->W0:Lflix/com/vision/activities/leanback/fragment/j;

    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/m0;->enableChildRoundedCorners(Z)V

    .line 35
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->W0:Lflix/com/vision/activities/leanback/fragment/j;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/m0;->setShadowEnabled(Z)V

    .line 36
    new-instance v0, Landroidx/leanback/widget/a;

    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->W0:Lflix/com/vision/activities/leanback/fragment/j;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/C0;)V

    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    return-void
.end method

.method public constructor <init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/app/h;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->y0:Ljava/util/HashMap;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->z0:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->C0:Lflix/com/vision/models/tmdb/Network;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->D0:Z

    .line 6
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 7
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 8
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 10
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 11
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->a1:Z

    .line 12
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 13
    new-instance p1, Lflix/com/vision/activities/leanback/fragment/j;

    const/4 v0, 0x2

    .line 14
    invoke-direct {p1, v0}, Landroidx/leanback/widget/m0;-><init>(I)V

    .line 15
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->W0:Lflix/com/vision/activities/leanback/fragment/j;

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/m0;->enableChildRoundedCorners(Z)V

    .line 17
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->W0:Lflix/com/vision/activities/leanback/fragment/j;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/m0;->setShadowEnabled(Z)V

    .line 18
    new-instance p1, Landroidx/leanback/widget/a;

    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->W0:Lflix/com/vision/activities/leanback/fragment/j;

    invoke-direct {p1, v0}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/C0;)V

    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    return-void
.end method


# virtual methods
.method public dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_4

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, p2, :cond_3

    .line 15
    .line 16
    const-wide/16 v2, 0xc8

    .line 17
    .line 18
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :pswitch_0
    iget-boolean p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/a;->indexOf(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroidx/leanback/widget/a;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    sub-int/2addr p2, v0

    .line 46
    if-ge p1, p2, :cond_2

    .line 47
    .line 48
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 49
    .line 50
    iget-object v4, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 51
    .line 52
    invoke-virtual {p2, v4, v1}, LW4/e;->setReorderState(LW4/d;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 56
    .line 57
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 58
    .line 59
    invoke-virtual {p2, v1}, Landroidx/leanback/widget/a;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    add-int/2addr p1, v0

    .line 63
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 64
    .line 65
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 66
    .line 67
    invoke-virtual {p2, p1, v1}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-boolean p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 71
    .line 72
    new-instance v1, Landroidx/leanback/widget/k0;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Landroidx/leanback/widget/k0;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2, v0, v1}, Landroidx/leanback/app/h;->setSelectedPosition(IZLandroidx/leanback/widget/B0;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroid/os/Handler;

    .line 81
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    .line 88
    .line 89
    new-instance p2, Lflix/com/vision/activities/leanback/fragment/e;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-direct {p2, p0, v1}, Lflix/com/vision/activities/leanback/fragment/e;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    .line 97
    .line 98
    return v0

    .line 99
    :pswitch_1
    iget-boolean p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 104
    .line 105
    if-nez p1, :cond_1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/a;->indexOf(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-lez p1, :cond_2

    .line 115
    .line 116
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 117
    .line 118
    iget-object v4, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 119
    .line 120
    invoke-virtual {p2, v4, v1}, LW4/e;->setReorderState(LW4/d;Z)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 124
    .line 125
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 126
    .line 127
    invoke-virtual {p2, v1}, Landroidx/leanback/widget/a;->remove(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    sub-int/2addr p1, v0

    .line 131
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 132
    .line 133
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 134
    .line 135
    invoke-virtual {p2, p1, v1}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-boolean p2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 139
    .line 140
    new-instance v1, Landroidx/leanback/widget/k0;

    .line 141
    .line 142
    invoke-direct {v1, p1}, Landroidx/leanback/widget/k0;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2, v0, v1}, Landroidx/leanback/app/h;->setSelectedPosition(IZLandroidx/leanback/widget/B0;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Landroid/os/Handler;

    .line 149
    .line 150
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    .line 156
    .line 157
    new-instance p2, Lflix/com/vision/activities/leanback/fragment/e;

    .line 158
    .line 159
    const/4 v1, 0x4

    .line 160
    invoke-direct {p2, p0, v1}, Lflix/com/vision/activities/leanback/fragment/e;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    .line 165
    .line 166
    :cond_2
    :goto_0
    :pswitch_2
    return v0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->k()V

    .line 168
    .line 169
    .line 170
    return v0

    .line 171
    :cond_4
    :goto_1
    return v1

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getContinueContent()V
    .locals 5

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "pref_hide_continue"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 28
    .line 29
    invoke-virtual {v0}, LP4/e;->getWatchingMoviesFromDb()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 44
    .line 45
    new-instance v1, Landroidx/leanback/widget/a;

    .line 46
    .line 47
    new-instance v3, LW4/b;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getActivity()Landroidx/fragment/app/H;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-direct {v3, v0, v4, p0}, LW4/b;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v3}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/C0;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lflix/com/vision/models/Movie;

    .line 76
    .line 77
    iget-object v3, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Landroidx/leanback/widget/a;->add(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    new-instance v0, Landroidx/leanback/widget/P;

    .line 84
    .line 85
    const-string v1, "Continue Watching"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Landroidx/leanback/widget/P;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Landroidx/leanback/widget/f0;

    .line 91
    .line 92
    iget-object v3, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 93
    .line 94
    invoke-direct {v1, v0, v3}, Landroidx/leanback/widget/f0;-><init>(Landroidx/leanback/widget/P;Landroidx/leanback/widget/r0;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v3, 0x3e7

    .line 98
    .line 99
    invoke-virtual {v1, v3, v4}, Landroidx/leanback/widget/H0;->setId(J)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 103
    .line 104
    sget-object v3, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 105
    .line 106
    if-ne v0, v3, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/a;->add(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    new-instance v0, Landroid/os/Handler;

    .line 120
    .line 121
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lflix/com/vision/activities/leanback/fragment/e;

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    invoke-direct {v1, p0, v2}, Lflix/com/vision/activities/leanback/fragment/e;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V

    .line 128
    .line 129
    .line 130
    const-wide/16 v2, 0x3e8

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    move v2, v1

    .line 18
    :goto_0
    iget-object v3, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/leanback/widget/a;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_2

    .line 25
    .line 26
    iget-object v3, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroidx/leanback/widget/a;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lflix/com/vision/models/tmdb/Network;

    .line 33
    .line 34
    iget v3, v3, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "LeanbackNavOrder"

    .line 51
    .line 52
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lcom/google/gson/Gson;

    .line 61
    .line 62
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v3, "networkOrder"

    .line 70
    .line 71
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2, v0, v1}, LW4/e;->setReorderState(LW4/d;Z)V

    .line 86
    .line 87
    .line 88
    :cond_3
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 92
    .line 93
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 94
    .line 95
    return-void
.end method

.method public final l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x1

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    const-string p1, "movie"

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const-string p1, "tv"

    .line 23
    .line 24
    :goto_1
    invoke-static {v2, p4, p1, p3}, LD4/a;->gettabbedList(Landroid/content/Context;ILjava/lang/String;I)Lio/reactivex/Observable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p4, Lflix/com/vision/activities/leanback/fragment/i;

    .line 45
    .line 46
    invoke-direct {p4, p0, v1, p3, p2}, Lflix/com/vision/activities/leanback/fragment/i;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, LA4/c;

    .line 50
    .line 51
    const/16 p3, 0x16

    .line 52
    .line 53
    invoke-direct {p2, p3}, LA4/c;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p4, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v5, "popularity.desc"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move v3, p3

    .line 32
    invoke-static/range {v1 .. v6}, LD4/a;->getItemsByGenresLeanBack(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)Lio/reactivex/Observable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p3, Lflix/com/vision/activities/leanback/fragment/h;

    .line 53
    .line 54
    invoke-direct {p3, p0, p4, p2}, Lflix/com/vision/activities/leanback/fragment/h;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, LA4/c;

    .line 58
    .line 59
    const/16 p4, 0x16

    .line 60
    .line 61
    invoke-direct {p2, p4}, LA4/c;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public markAsWatched(Lflix/com/vision/models/Movie;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->reloadWatchedHistory()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, v0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v4, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroidx/leanback/widget/a;->size()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-ge v2, v4, :cond_1

    .line 15
    .line 16
    iget-object v4, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Landroidx/leanback/widget/a;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lflix/com/vision/models/Movie;

    .line 23
    .line 24
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    cmp-long v4, v4, v6

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    move v3, v2

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-le v3, v0, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/a;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v1, v0}, Landroidx/leanback/widget/r0;->notifyItemRangeChanged(II)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/leanback/widget/a;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v1, v0}, Landroidx/leanback/widget/a;->notifyArrayItemRangeChanged(II)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Z0:Landroidx/leanback/widget/a;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/leanback/widget/a;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p1, v1, v0}, Landroidx/leanback/widget/r0;->notifyItemRangeChanged(II)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    invoke-static {}, LT4/f;->getNetworks()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "LeanbackNavOrder"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "networkOrder"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    .line 35
    .line 36
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$2;

    .line 40
    .line 41
    invoke-direct {v4}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v4, v1

    .line 53
    check-cast v4, Ljava/util/ArrayList;

    .line 54
    .line 55
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Lflix/com/vision/activities/leanback/fragment/g;

    .line 69
    .line 70
    invoke-direct {v0, v4}, Lflix/com/vision/activities/leanback/fragment/g;-><init>(Ljava/util/ArrayList;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :try_start_0
    new-instance v0, LW4/e;

    .line 77
    .line 78
    invoke-direct {v0}, LW4/e;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, LW4/e;->setOnNetworkActionListener(LW4/c;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Landroidx/leanback/widget/a;

    .line 87
    .line 88
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/C0;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lflix/com/vision/models/tmdb/Network;

    .line 110
    .line 111
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/a;->add(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    new-instance v0, Landroidx/leanback/widget/P;

    .line 118
    .line 119
    const-string v1, "Popular Services"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Landroidx/leanback/widget/P;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Landroidx/leanback/widget/f0;

    .line 125
    .line 126
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 127
    .line 128
    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/f0;-><init>(Landroidx/leanback/widget/P;Landroidx/leanback/widget/r0;)V

    .line 129
    .line 130
    .line 131
    const-wide/16 v4, 0x378

    .line 132
    .line 133
    invoke-virtual {v1, v4, v5}, Landroidx/leanback/widget/H0;->setId(J)V

    .line 134
    .line 135
    .line 136
    iget-boolean v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 137
    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    new-instance v0, Landroid/os/Handler;

    .line 145
    .line 146
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v2, Lflix/com/vision/activities/leanback/fragment/a;

    .line 150
    .line 151
    const/4 v3, 0x2

    .line 152
    invoke-direct {v2, v3, p0, v1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    const-wide/16 v3, 0x3e8

    .line 156
    .line 157
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 162
    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    invoke-virtual {v0, v3, v1}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method public final o(Lflix/com/vision/models/tmdb/Network;)LW4/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/leanback/app/h;->getRowViewHolder(I)Landroidx/leanback/widget/M0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Landroidx/leanback/widget/l0;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Landroidx/leanback/widget/l0;

    .line 25
    .line 26
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->G0:Landroidx/leanback/widget/a;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/a;->indexOf(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ltz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/leanback/widget/l0;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lm1/B0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    instance-of v0, p1, Landroidx/leanback/widget/b0;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    instance-of v0, p1, LW4/d;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    check-cast p1, LW4/d;

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 60
    return-object p1
.end method

.method public onNetworkLongClicked(Lflix/com/vision/models/tmdb/Network;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lflix/com/vision/activities/leanback/fragment/f;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, p1, v2}, Lflix/com/vision/activities/leanback/fragment/f;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;Lflix/com/vision/models/tmdb/Network;I)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x64

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/leanback/app/c;->setAdapter(Landroidx/leanback/widget/r0;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lflix/com/vision/activities/leanback/fragment/k;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lflix/com/vision/activities/leanback/fragment/k;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/leanback/app/h;->setOnItemViewSelectedListener(Landroidx/leanback/widget/v;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Ld6/a;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Ld6/a;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/leanback/app/h;->setOnItemViewClickedListener(Landroidx/leanback/widget/u;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    sget-object p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 51
    .line 52
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sget-object v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;

    .line 61
    .line 62
    sget-object v1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    const/4 v3, 0x2

    .line 66
    const/4 v4, 0x4

    .line 67
    const-string v5, "Upcoming"

    .line 68
    .line 69
    const-string v6, "Top Rated"

    .line 70
    .line 71
    const-string v7, "Popular"

    .line 72
    .line 73
    const-string v8, "Now Playing"

    .line 74
    .line 75
    const-string v9, "Trending"

    .line 76
    .line 77
    const/4 v10, 0x3

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    if-eq p1, v2, :cond_4

    .line 81
    .line 82
    if-eq p1, v3, :cond_3

    .line 83
    .line 84
    if-eq p1, v10, :cond_2

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_2
    sget-object p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;->n:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    .line 89
    .line 90
    const/16 p2, 0x1b

    .line 91
    .line 92
    const-string v0, "Horror"

    .line 93
    .line 94
    invoke-virtual {p0, p2, v0, v2, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p2, v0, v3, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;->j:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    .line 101
    .line 102
    const/16 p2, 0x1c

    .line 103
    .line 104
    const-string v0, "Action"

    .line 105
    .line 106
    invoke-virtual {p0, p2, v0, v2, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p2, v0, v3, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;->f:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    .line 113
    .line 114
    const/16 p2, 0x50

    .line 115
    .line 116
    const-string v0, "Crime"

    .line 117
    .line 118
    invoke-virtual {p0, p2, v0, v2, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p2, v0, v3, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;->m:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    .line 125
    .line 126
    const/16 p2, 0x29fd

    .line 127
    .line 128
    const-string v0, "Romance"

    .line 129
    .line 130
    invoke-virtual {p0, p2, v0, v2, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2, v0, v3, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    .line 137
    .line 138
    const/16 p2, 0x23

    .line 139
    .line 140
    const-string v0, "Comedy"

    .line 141
    .line 142
    invoke-virtual {p0, p2, v0, v2, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2, v0, v3, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    .line 149
    .line 150
    const/16 p2, 0x10

    .line 151
    .line 152
    const-string v0, "Animation"

    .line 153
    .line 154
    invoke-virtual {p0, p2, v0, v2, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p2, v0, v3, p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->m(ILjava/lang/String;ILflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->n()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0, v9, p2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0, v9, p2, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0, v8, v2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0, v8, v2, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0, v7, v3, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0, v7, v3, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0, v6, v10, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0, v6, v10, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_4
    invoke-virtual {p0, v1, v9, p2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v1, v9, p2, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v1, v8, v2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v1, v8, v2, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v1, v7, v3, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v1, v7, v3, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v1, v6, v10, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v1, v6, v10, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1, v5, v4, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v1, v5, v4, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->getContinueContent()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->n()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v1, v9, p2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0, v9, p2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v1, v8, v2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0, v8, v2, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v1, v7, v3, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0, v7, v3, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v1, v6, v10, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v0, v6, v10, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v1, v5, v4, v2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v1, v5, v4, v3}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->l(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$RequestType;Ljava/lang/String;II)V

    .line 254
    .line 255
    .line 256
    :goto_0
    new-instance p1, Landroid/os/Handler;

    .line 257
    .line 258
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 259
    .line 260
    .line 261
    new-instance p2, Lflix/com/vision/activities/leanback/fragment/e;

    .line 262
    .line 263
    const/4 v0, 0x5

    .line 264
    invoke-direct {p2, p0, v0}, Lflix/com/vision/activities/leanback/fragment/e;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V

    .line 265
    .line 266
    .line 267
    const-wide/16 v0, 0x3e8

    .line 268
    .line 269
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public reloadWatchedHistory()V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 2
    .line 3
    sget-object v1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/leanback/widget/a;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/a;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/leanback/widget/f0;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/leanback/widget/H0;->getId()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    const-wide/16 v3, 0x3e7

    .line 31
    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/a;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->getContinueContent()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lflix/com/vision/activities/leanback/fragment/e;

    .line 50
    .line 51
    const/4 v2, 0x6

    .line 52
    invoke-direct {v1, p0, v2}, Lflix/com/vision/activities/leanback/fragment/e;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v2, 0x1f4

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public setOnContentSelectedListener(Lflix/com/vision/activities/leanback/fragment/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    .line 2
    .line 3
    return-void
.end method
