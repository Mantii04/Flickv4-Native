.class public Lflix/com/vision/tv/MyImportActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public e:LC4/e0;

.field public f:Landroid/widget/RelativeLayout;

.field public final j:Ljava/util/ArrayList;

.field public m:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/tv/MyImportActivity;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public editItem(Lflix/com/vision/models/HistoryTVLink;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "3"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "local files cannot be edited"

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "2"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "Our playlist cannot be edited"

    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v1, Lflix/com/vision/tv/M3UImportActivity;

    .line 53
    .line 54
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "url"

    .line 58
    .line 59
    iget-object v2, p1, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string v1, "label"

    .line 65
    .line 66
    iget-object p1, p1, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3039

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    const-string p1, "file_extra_data"

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lflix/com/vision/models/HistoryTVLink;

    .line 18
    .line 19
    invoke-direct {p2}, Lflix/com/vision/models/HistoryTVLink;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    :try_start_0
    const-string v0, "/"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v1, v0

    .line 30
    sub-int/2addr v1, p3

    .line 31
    aget-object v0, v0, v1

    .line 32
    .line 33
    iput-object v0, p2, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    iput-object p1, p2, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 37
    .line 38
    :goto_0
    iput-object p1, p2, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "3"

    .line 41
    .line 42
    iput-object v0, p2, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 49
    .line 50
    invoke-virtual {v0, p2}, LP4/e;->addHistoryIPTV(Lflix/com/vision/models/HistoryTVLink;)Z

    .line 51
    .line 52
    .line 53
    new-instance p2, Landroid/content/Intent;

    .line 54
    .line 55
    const-class v0, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 56
    .line 57
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "is_file"

    .line 61
    .line 62
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string p3, "url"

    .line 66
    .line 67
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_tv_history:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 14
    .line 15
    invoke-virtual {p1}, LP4/e;->getHistoryIPTVFromDb()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lflix/com/vision/tv/MyImportActivity;->j:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lflix/com/vision/models/HistoryTVLink;

    .line 36
    .line 37
    iget-object v2, v0, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const-string v3, "1"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    sget p1, Lflix/com/vision/R$id;->image_plus_button:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->m:Landroid/widget/ImageView;

    .line 65
    .line 66
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    sget p1, Lflix/com/vision/R$id;->recyclerview:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .line 82
    iput-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    sget p1, Lflix/com/vision/R$id;->add_button:I

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    iput-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->f:Landroid/widget/RelativeLayout;

    .line 93
    .line 94
    new-instance p1, LC4/e0;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p1, v0, v1, p0}, LC4/e0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->e:LC4/e0;

    .line 104
    .line 105
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lflix/com/vision/tv/MyImportActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    iget-object v0, p0, Lflix/com/vision/tv/MyImportActivity;->e:LC4/e0;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->f:Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    new-instance v0, Lf5/o;

    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-direct {v0, p0, v1}, Lf5/o;-><init>(Lflix/com/vision/tv/MyImportActivity;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->f:Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    new-instance v0, LA4/g;

    .line 141
    .line 142
    const/4 v1, 0x7

    .line 143
    invoke-direct {v0, p0, v1}, LA4/g;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/tv/MyImportActivity;->j:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 14
    .line 15
    invoke-virtual {v1}, LP4/e;->getHistoryIPTVFromDb()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lflix/com/vision/models/HistoryTVLink;

    .line 34
    .line 35
    iget-object v3, v2, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const-string v4, "1"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lflix/com/vision/tv/MyImportActivity;->e:LC4/e0;

    .line 52
    .line 53
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public openItem(Lflix/com/vision/models/HistoryTVLink;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v2, "3"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    const-string v2, "is_file"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "url"

    .line 29
    .line 30
    iget-object v2, p1, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v1, "name"

    .line 36
    .line 37
    iget-object p1, p1, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public removeItem(Lflix/com/vision/models/HistoryTVLink;)V
    .locals 1

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, LP4/e;->deleteHistoryIptvItem(Lflix/com/vision/models/HistoryTVLink;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/tv/MyImportActivity;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lflix/com/vision/tv/MyImportActivity;->e:LC4/e0;

    .line 16
    .line 17
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
