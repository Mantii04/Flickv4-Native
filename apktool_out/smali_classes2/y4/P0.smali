.class public final synthetic Ly4/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SearchResultsActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SearchResultsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/P0;->b:I

    iput-object p1, p0, Ly4/P0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Ly4/P0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly4/P0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    .line 7
    .line 8
    iget-object v0, p1, Lflix/com/vision/activities/SearchResultsActivity;->v:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lflix/com/vision/activities/SearchResultsActivity;->G:LC4/r;

    .line 30
    .line 31
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1, v1}, Lflix/com/vision/activities/SearchResultsActivity;->f(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const/4 p1, 0x1

    .line 40
    iget-object v0, p0, Ly4/P0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    .line 41
    .line 42
    iput p1, v0, Lflix/com/vision/activities/SearchResultsActivity;->s:I

    .line 43
    .line 44
    iget-object p1, v0, Lflix/com/vision/activities/SearchResultsActivity;->w:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-lez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    const/16 v3, 0x8

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->u:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 74
    .line 75
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0, v2}, Lflix/com/vision/activities/SearchResultsActivity;->g(I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void

    .line 83
    :pswitch_1
    iget-object p1, p0, Ly4/P0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput v0, p1, Lflix/com/vision/activities/SearchResultsActivity;->s:I

    .line 87
    .line 88
    iget-object v1, p1, Lflix/com/vision/activities/SearchResultsActivity;->t:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-lez v2, :cond_2

    .line 95
    .line 96
    iget-object v2, p1, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    const/16 v3, 0x8

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p1, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p1, Lflix/com/vision/activities/SearchResultsActivity;->u:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 117
    .line 118
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/SearchResultsActivity;->e(I)V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
