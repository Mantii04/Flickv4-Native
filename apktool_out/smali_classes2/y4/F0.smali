.class public final synthetic Ly4/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SearchActivityTV;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SearchActivityTV;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/F0;->b:I

    iput-object p1, p0, Ly4/F0;->e:Lflix/com/vision/activities/SearchActivityTV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    iget-object v2, p0, Ly4/F0;->e:Lflix/com/vision/activities/SearchActivityTV;

    .line 4
    .line 5
    iget v3, p0, Ly4/F0;->b:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 19
    .line 20
    iget v3, v2, Lflix/com/vision/activities/SearchActivityTV;->F:I

    .line 21
    .line 22
    invoke-static {p1, v3}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-lez v3, :cond_0

    .line 31
    .line 32
    iget-object v3, v2, Lflix/com/vision/activities/SearchActivityTV;->s:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean v3, v2, Lflix/com/vision/activities/SearchActivityTV;->G:Z

    .line 38
    .line 39
    iget-object v4, v2, Lflix/com/vision/activities/SearchActivityTV;->e:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v5, v2, Lflix/com/vision/activities/SearchActivityTV;->f:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    iget-boolean p1, v2, Lflix/com/vision/activities/SearchActivityTV;->G:Z

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iput-boolean v0, v2, Lflix/com/vision/activities/SearchActivityTV;->G:Z

    .line 78
    .line 79
    iget p1, v2, Lflix/com/vision/activities/SearchActivityTV;->F:I

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    :cond_2
    iput v0, v2, Lflix/com/vision/activities/SearchActivityTV;->F:I

    .line 85
    .line 86
    invoke-virtual {v2}, Lflix/com/vision/activities/SearchActivityTV;->e()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->j:LC4/P;

    .line 94
    .line 95
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 96
    .line 97
    .line 98
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :pswitch_1
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 110
    .line 111
    sget v3, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseSearchMulti(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget-object v4, v2, Lflix/com/vision/activities/SearchActivityTV;->f:Ljava/util/ArrayList;

    .line 125
    .line 126
    if-lez v3, :cond_4

    .line 127
    .line 128
    iget-object v3, v2, Lflix/com/vision/activities/SearchActivityTV;->s:Landroid/widget/TextView;

    .line 129
    .line 130
    const/16 v5, 0x8

    .line 131
    .line 132
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->j:LC4/P;

    .line 142
    .line 143
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 144
    .line 145
    .line 146
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 154
    .line 155
    .line 156
    iget-object p1, v2, Lflix/com/vision/activities/SearchActivityTV;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
