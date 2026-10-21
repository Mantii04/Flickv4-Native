.class public final synthetic Ly4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/CastMoviesActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/CastMoviesActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/s;->b:I

    iput-object p1, p0, Ly4/s;->e:Lflix/com/vision/activities/CastMoviesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Ly4/s;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly4/s;->e:Lflix/com/vision/activities/CastMoviesActivity;

    .line 7
    .line 8
    iget-boolean v0, p1, Lflix/com/vision/activities/CastMoviesActivity;->C:Z

    .line 9
    .line 10
    iget-object v1, p1, Lflix/com/vision/activities/CastMoviesActivity;->j:Ljava/util/ArrayList;

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
    iput-boolean v0, p1, Lflix/com/vision/activities/CastMoviesActivity;->C:Z

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
    iget-object p1, p1, Lflix/com/vision/activities/CastMoviesActivity;->A:LC4/P;

    .line 33
    .line 34
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object p1, p0, Ly4/s;->e:Lflix/com/vision/activities/CastMoviesActivity;

    .line 39
    .line 40
    iget-object v0, p1, Lflix/com/vision/activities/CastMoviesActivity;->f:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p1, Lflix/com/vision/activities/CastMoviesActivity;->j:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p1, Lflix/com/vision/activities/CastMoviesActivity;->A:LC4/P;

    .line 57
    .line 58
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lflix/com/vision/activities/CastMoviesActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Lm1/i0;->scrollToPosition(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lflix/com/vision/activities/CastMoviesActivity;->e()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :pswitch_1
    iget-object p1, p0, Ly4/s;->e:Lflix/com/vision/activities/CastMoviesActivity;

    .line 77
    .line 78
    iget-object v0, p1, Lflix/com/vision/activities/CastMoviesActivity;->m:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-lez v1, :cond_2

    .line 85
    .line 86
    iget-object v1, p1, Lflix/com/vision/activities/CastMoviesActivity;->j:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lflix/com/vision/activities/CastMoviesActivity;->A:LC4/P;

    .line 95
    .line 96
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 97
    .line 98
    .line 99
    iget-object p1, p1, Lflix/com/vision/activities/CastMoviesActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0}, Lm1/i0;->scrollToPosition(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p1}, Lflix/com/vision/activities/CastMoviesActivity;->e()V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
