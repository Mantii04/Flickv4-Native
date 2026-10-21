.class public final synthetic LA4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/a;->b:I

    iput-object p1, p0, LA4/a;->e:Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, LA4/a;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LA4/a;->e:Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;

    .line 7
    .line 8
    iget-boolean v0, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->C:Z

    .line 9
    .line 10
    iget-object v1, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->C:Z

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "Sorted by Year: DESC"

    .line 25
    .line 26
    invoke-static {v2, v3, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->A:LC4/P;

    .line 33
    .line 34
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->v:Landroidx/leanback/widget/VerticalGridView;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/t;->setSelectedPosition(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    iget-object p1, p0, LA4/a;->e:Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;

    .line 45
    .line 46
    iget-object v0, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->f:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-lez v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->j:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->A:LC4/P;

    .line 63
    .line 64
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->v:Landroidx/leanback/widget/VerticalGridView;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/t;->setSelectedPosition(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->e()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void

    .line 78
    :pswitch_1
    iget-object p1, p0, LA4/a;->e:Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;

    .line 79
    .line 80
    iget-object v0, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->m:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_2

    .line 87
    .line 88
    iget-object v1, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->j:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->A:LC4/P;

    .line 97
    .line 98
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 99
    .line 100
    .line 101
    iget-object p1, p1, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->v:Landroidx/leanback/widget/VerticalGridView;

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/t;->setSelectedPosition(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p1}, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->e()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
