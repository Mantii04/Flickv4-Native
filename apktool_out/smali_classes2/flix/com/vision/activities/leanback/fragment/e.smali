.class public final synthetic Lflix/com/vision/activities/leanback/fragment/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V
    .locals 0

    .line 1
    iput p2, p0, Lflix/com/vision/activities/leanback/fragment/e;->b:I

    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lflix/com/vision/activities/leanback/fragment/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/leanback/app/h;->setSelectedPosition(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/leanback/app/c;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroidx/leanback/app/h;->setSelectedPosition(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 34
    .line 35
    iget-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->o(Lflix/com/vision/models/tmdb/Network;)LW4/d;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 42
    .line 43
    iget-object v0, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, v2}, LW4/e;->setReorderState(LW4/d;Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 51
    .line 52
    iget-object v0, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/fragment/d;->finished()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :pswitch_3
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 61
    .line 62
    iget-object v0, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/fragment/d;->finished()V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void

    .line 70
    :pswitch_4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 71
    .line 72
    iget-object v0, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/fragment/d;->finished()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void

    .line 80
    :pswitch_5
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/e;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 81
    .line 82
    iget-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->F0:Lflix/com/vision/models/tmdb/Network;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->o(Lflix/com/vision/models/tmdb/Network;)LW4/d;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->I0:LW4/d;

    .line 89
    .line 90
    iget-object v0, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->H0:LW4/e;

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v1, v2}, LW4/e;->setReorderState(LW4/d;Z)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
