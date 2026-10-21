.class public final synthetic Ly4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/n;
.implements Ld4/a;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/AnimesListActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/AnimesListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly4/n;->b:Lflix/com/vision/activities/AnimesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoreAsked(III)V
    .locals 7

    .line 1
    iget-object p1, p0, Ly4/n;->b:Lflix/com/vision/activities/AnimesListActivity;

    .line 2
    .line 3
    iget p2, p1, Lflix/com/vision/activities/AnimesListActivity;->w:I

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    add-int/2addr p2, p3

    .line 7
    iput p2, p1, Lflix/com/vision/activities/AnimesListActivity;->w:I

    .line 8
    .line 9
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v1, "genre_anime"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    const-string v3, "year_anime"

    .line 30
    .line 31
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    const-string v4, "type_anime"

    .line 42
    .line 43
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    const-string v5, "lang_anime"

    .line 54
    .line 55
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "All"

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    move-object v0, v2

    .line 68
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    move-object v1, v2

    .line 78
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    move-object v4, v2

    .line 85
    :cond_2
    iget-object v3, p1, Lflix/com/vision/activities/AnimesListActivity;->z:Ljava/lang/String;

    .line 86
    .line 87
    const-string v5, "2"

    .line 88
    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move-object v2, v4

    .line 97
    :goto_0
    iget-object v3, p1, Lflix/com/vision/activities/AnimesListActivity;->A:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 104
    .line 105
    invoke-virtual {v4, v0, v1, v2, p2}, LP4/e;->getGoAnime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->A:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-ge p2, p3, :cond_4

    .line 119
    .line 120
    sget p2, Lflix/com/vision/R$id;->activity_player:I

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    sget p3, Lflix/com/vision/R$string;->no_more_content:I

    .line 127
    .line 128
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-static {p2, p3, v0}, LI3/w;->make(Landroid/view/View;Ljava/lang/CharSequence;I)LI3/w;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2}, LI3/w;->show()V

    .line 138
    .line 139
    .line 140
    :cond_4
    iget-object p2, p1, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getAdapter()Lm1/V;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p2}, Lm1/V;->notifyDataSetChanged()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p1, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ly4/n;->b:Lflix/com/vision/activities/AnimesListActivity;

    .line 3
    .line 4
    iput v0, v1, Lflix/com/vision/activities/AnimesListActivity;->w:I

    .line 5
    .line 6
    iget-object v0, v1, Lflix/com/vision/activities/AnimesListActivity;->A:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget v0, v1, Lflix/com/vision/activities/AnimesListActivity;->w:I

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lflix/com/vision/activities/AnimesListActivity;->e(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
