.class public final synthetic Ly4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/AnimeSearchResultActivty;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/AnimeSearchResultActivty;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/j;->b:I

    iput-object p1, p0, Ly4/j;->e:Lflix/com/vision/activities/AnimeSearchResultActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    iget-object v0, p0, Ly4/j;->e:Lflix/com/vision/activities/AnimeSearchResultActivty;

    .line 4
    .line 5
    iget v1, p0, Ly4/j;->b:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0}, Lflix/com/vision/activities/AnimeSearchResultActivty;->e()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Lflix/com/vision/activities/AnimeSearchResultActivty;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0}, Lflix/com/vision/activities/AnimeSearchResultActivty;->e()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    sget p1, Lflix/com/vision/activities/AnimeSearchResultActivty;->z:I

    .line 38
    .line 39
    const-string p1, " "

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/AnimeSearchResultActivty;->onLetterClicked(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    iget-object v1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v4, v2, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    iget-object v2, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->r:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    const-string v2, "\'"

    .line 70
    .line 71
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->s:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v2, v2, Lflix/com/vision/App;->r:LP4/e;

    .line 82
    .line 83
    invoke-virtual {v2, p1}, LP4/e;->searchGoAnime(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->r:Landroid/widget/ProgressBar;

    .line 91
    .line 92
    const/16 v1, 0x8

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->s:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/4 v2, 0x1

    .line 104
    if-ge p1, v2, :cond_2

    .line 105
    .line 106
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->v:Landroid/widget/TextView;

    .line 107
    .line 108
    const-string v2, "No anime found"

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->v:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->v:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_1
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->s:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 136
    .line 137
    .line 138
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 141
    .line 142
    .line 143
    iget-object p1, v0, Lflix/com/vision/activities/AnimeSearchResultActivty;->r:Landroid/widget/ProgressBar;

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-ge p1, v2, :cond_4

    .line 156
    .line 157
    const-string p1, "enter at least 3 characters"

    .line 158
    .line 159
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_3
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
