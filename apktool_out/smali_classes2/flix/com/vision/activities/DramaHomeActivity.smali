.class public Lflix/com/vision/activities/DramaHomeActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;
    }
.end annotation


# static fields
.field public static final synthetic W:I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Ljava/util/ArrayList;

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/util/ArrayList;

.field public F:LC4/z;

.field public G:LC4/z;

.field public H:LC4/z;

.field public I:LC4/z;

.field public J:LC4/z;

.field public K:LC4/z;

.field public L:Landroidx/recyclerview/widget/RecyclerView;

.field public M:Landroidx/recyclerview/widget/RecyclerView;

.field public N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:Landroidx/recyclerview/widget/RecyclerView;

.field public P:Landroidx/recyclerview/widget/RecyclerView;

.field public Q:Landroidx/recyclerview/widget/RecyclerView;

.field public R:Landroidx/recyclerview/widget/RecyclerView;

.field public S:LC4/B;

.field public T:LQ4/d;

.field public U:Z

.field public V:Ljava/lang/String;

.field public b:Landroid/widget/ScrollView;

.field public e:Lflix/com/vision/materialsearchview/MaterialSearchView;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroid/widget/RelativeLayout;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:Ljava/util/ArrayList;

.field public z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->T:LQ4/d;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->U:Z

    .line 9
    .line 10
    const-string v0, "https://kissasiantv.to"

    .line 11
    .line 12
    iput-object v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final e(Lj6/h;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "div.list-drama div.item"

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lorg/jsoup/nodes/b;

    .line 31
    .line 32
    :try_start_0
    new-instance v4, Lflix/com/vision/models/Drama;

    .line 33
    .line 34
    invoke-direct {v4}, Lflix/com/vision/models/Drama;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v5, "IMG"

    .line 38
    .line 39
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    const-string v6, "alt"

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v8, "https://"

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v8, "src"

    .line 66
    .line 67
    invoke-virtual {v5, v8}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iput-object v6, v4, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v5, v4, Lflix/com/vision/models/Drama;->image_url:Ljava/lang/String;

    .line 81
    .line 82
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v6, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v6, "A"

    .line 93
    .line 94
    invoke-virtual {v3, v6}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v6, "href"

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    iput-object v3, v4, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    :try_start_1
    iget-object v3, v4, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_2

    .line 128
    .line 129
    iget-object v3, v4, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    add-int/lit8 v5, v5, -0x6

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget-object v5, v4, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    iput-object v5, v4, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 152
    .line 153
    const-string v5, "("

    .line 154
    .line 155
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iput-object v3, v4, Lflix/com/vision/models/Drama;->year:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    :catch_1
    :cond_2
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_0

    .line 170
    .line 171
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_3
    return-object v2
.end method

.method public final f()V
    .locals 3

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
    invoke-virtual {v0}, LP4/e;->getDramaContinue()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->L:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->t:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->y:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->y:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->S:LC4/B;

    .line 41
    .line 42
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->L:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->t:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final g(Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lflix/com/vision/activities/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p2, v0, p1}, Lflix/com/vision/activities/c;-><init>(Lflix/com/vision/activities/DramaHomeActivity;Ljava/lang/String;Ljava/util/ArrayList;Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    new-array p2, p2, [Ljava/lang/Void;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onBackPressed()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->U:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->U:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->b:Landroid/widget/ScrollView;

    .line 13
    .line 14
    const/16 v2, 0x21

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "Press again to Exit"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->U:Z

    .line 34
    .line 35
    new-instance v0, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ly4/y;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {v1, p0, v2}, Ly4/y;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v2, 0x640

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onContinueLongPress(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/DramaHomeActivity;->y:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lflix/com/vision/models/Drama;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, v0, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "What would you like to Do?"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, LC4/l;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-direct {v3, p0, v0, p1, v4}, LC4/l;-><init>(Lflix/com/vision/activities/base/a;Ljava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    const-string p1, "MARK AS WATCHED"

    .line 35
    .line 36
    invoke-virtual {v2, p1, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, LA4/m;

    .line 40
    .line 41
    const/16 v3, 0x11

    .line 42
    .line 43
    invoke-direct {p1, v3, p0, v0}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "ADD TO FAVORITES"

    .line 47
    .line 48
    invoke-virtual {v2, v0, p1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    const-string p1, ""

    .line 52
    .line 53
    invoke-virtual {v2, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    sget-object v4, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v4, "pref_drama_host"

    .line 17
    .line 18
    const-string v5, "https://kissasiantv.to"

    .line 19
    .line 20
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 25
    .line 26
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    sget p1, Lflix/com/vision/R$layout;->activity_drama_home:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget p1, Lflix/com/vision/R$layout;->activity_drama_home_light:I

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->T:LQ4/d;

    .line 47
    .line 48
    invoke-virtual {v4}, LQ4/d;->setloading()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->T:LQ4/d;

    .line 52
    .line 53
    const-string v5, ""

    .line 54
    .line 55
    invoke-virtual {v4, p1, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_1
    new-instance p1, Landroid/os/Handler;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v4, Ly4/y;

    .line 69
    .line 70
    invoke-direct {v4, p0, v3}, Ly4/y;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v5, 0x1388

    .line 74
    .line 75
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    sget p1, Lflix/com/vision/R$id;->scrollview_drama_home:I

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroid/widget/ScrollView;

    .line 93
    .line 94
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->b:Landroid/widget/ScrollView;

    .line 95
    .line 96
    sget p1, Lflix/com/vision/R$id;->search_view:I

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 103
    .line 104
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 105
    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setShouldKeepHistory(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 112
    .line 113
    invoke-virtual {p1, v3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintAlpha(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 117
    .line 118
    new-instance v4, Ly4/C;

    .line 119
    .line 120
    invoke-direct {v4, p0}, Ly4/C;-><init>(Lflix/com/vision/activities/DramaHomeActivity;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v4}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 127
    .line 128
    new-instance v4, Ly4/l;

    .line 129
    .line 130
    invoke-direct {v4, p0, v3}, Ly4/l;-><init>(Lflix/com/vision/activities/base/a;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v4}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    .line 135
    .line 136
    :cond_1
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 143
    .line 144
    if-eqz p1, :cond_2

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    sget v4, Lflix/com/vision/R$string;->anime_label:I

    .line 154
    .line 155
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {p1, v4}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1, v3}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 167
    .line 168
    .line 169
    :cond_2
    sget p1, Lflix/com/vision/R$id;->continue_label:I

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/TextView;

    .line 176
    .line 177
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->t:Landroid/widget/TextView;

    .line 178
    .line 179
    sget p1, Lflix/com/vision/R$id;->filter_anime_button_imageview:I

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Landroid/widget/ImageView;

    .line 186
    .line 187
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->x:Landroid/widget/ImageView;

    .line 188
    .line 189
    sget p1, Lflix/com/vision/R$id;->search_anime_button_imageview:I

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Landroid/widget/ImageView;

    .line 196
    .line 197
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->w:Landroid/widget/ImageView;

    .line 198
    .line 199
    sget p1, Lflix/com/vision/R$id;->progress_anime_button_image:I

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/ImageView;

    .line 206
    .line 207
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->v:Landroid/widget/ImageView;

    .line 208
    .line 209
    sget p1, Lflix/com/vision/R$id;->anime_fav_textview_button_imageview:I

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/widget/ImageView;

    .line 216
    .line 217
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->u:Landroid/widget/ImageView;

    .line 218
    .line 219
    sget p1, Lflix/com/vision/R$id;->anime_fav_textview:I

    .line 220
    .line 221
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Landroid/widget/TextView;

    .line 226
    .line 227
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->s:Landroid/widget/TextView;

    .line 228
    .line 229
    sget p1, Lflix/com/vision/R$id;->progress_anime_textview:I

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Landroid/widget/TextView;

    .line 236
    .line 237
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->r:Landroid/widget/TextView;

    .line 238
    .line 239
    sget p1, Lflix/com/vision/R$id;->filter_anime__textview:I

    .line 240
    .line 241
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Landroid/widget/TextView;

    .line 246
    .line 247
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->p:Landroid/widget/TextView;

    .line 248
    .line 249
    sget p1, Lflix/com/vision/R$id;->search_anime__textview:I

    .line 250
    .line 251
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Landroid/widget/TextView;

    .line 256
    .line 257
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->q:Landroid/widget/TextView;

    .line 258
    .line 259
    sget p1, Lflix/com/vision/R$id;->filter_anime_button:I

    .line 260
    .line 261
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 266
    .line 267
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->n:Landroid/widget/RelativeLayout;

    .line 268
    .line 269
    sget p1, Lflix/com/vision/R$id;->search_anime_button:I

    .line 270
    .line 271
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 276
    .line 277
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->m:Landroid/widget/RelativeLayout;

    .line 278
    .line 279
    sget p1, Lflix/com/vision/R$id;->anime_history_button:I

    .line 280
    .line 281
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 286
    .line 287
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->j:Landroid/widget/RelativeLayout;

    .line 288
    .line 289
    sget p1, Lflix/com/vision/R$id;->anime_favorites:I

    .line 290
    .line 291
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 296
    .line 297
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->f:Landroid/widget/RelativeLayout;

    .line 298
    .line 299
    sget p1, Lflix/com/vision/R$id;->recyclerview_continue:I

    .line 300
    .line 301
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 306
    .line 307
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->L:Landroidx/recyclerview/widget/RecyclerView;

    .line 308
    .line 309
    sget p1, Lflix/com/vision/R$id;->recyclerview_dramma_ongoing:I

    .line 310
    .line 311
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 316
    .line 317
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 318
    .line 319
    sget p1, Lflix/com/vision/R$id;->recyclerview_dramma_completed:I

    .line 320
    .line 321
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 326
    .line 327
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 328
    .line 329
    sget p1, Lflix/com/vision/R$id;->recyclerview_romance:I

    .line 330
    .line 331
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 336
    .line 337
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    .line 338
    .line 339
    sget p1, Lflix/com/vision/R$id;->recyclerview_action:I

    .line 340
    .line 341
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 346
    .line 347
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    .line 348
    .line 349
    sget p1, Lflix/com/vision/R$id;->recyclerview_mystery:I

    .line 350
    .line 351
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 356
    .line 357
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 358
    .line 359
    sget p1, Lflix/com/vision/R$id;->recyclerview_action:I

    .line 360
    .line 361
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 366
    .line 367
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    .line 368
    .line 369
    sget p1, Lflix/com/vision/R$id;->recyclerview_variety_show:I

    .line 370
    .line 371
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 376
    .line 377
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    .line 378
    .line 379
    new-instance p1, Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .line 383
    .line 384
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->y:Ljava/util/ArrayList;

    .line 385
    .line 386
    new-instance p1, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .line 390
    .line 391
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->C:Ljava/util/ArrayList;

    .line 392
    .line 393
    new-instance p1, Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .line 397
    .line 398
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->B:Ljava/util/ArrayList;

    .line 399
    .line 400
    new-instance p1, Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .line 404
    .line 405
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->D:Ljava/util/ArrayList;

    .line 406
    .line 407
    new-instance p1, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->A:Ljava/util/ArrayList;

    .line 413
    .line 414
    new-instance p1, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .line 418
    .line 419
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->z:Ljava/util/ArrayList;

    .line 420
    .line 421
    new-instance p1, Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .line 425
    .line 426
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->E:Ljava/util/ArrayList;

    .line 427
    .line 428
    new-instance p1, LC4/B;

    .line 429
    .line 430
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->y:Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-direct {p1, v4, p0, p0}, LC4/B;-><init>(Ljava/util/ArrayList;Lflix/com/vision/activities/DramaHomeActivity;LU4/e;)V

    .line 433
    .line 434
    .line 435
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->S:LC4/B;

    .line 436
    .line 437
    new-instance p1, LC4/z;

    .line 438
    .line 439
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->C:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {p1, v4, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 442
    .line 443
    .line 444
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->I:LC4/z;

    .line 445
    .line 446
    new-instance p1, LC4/z;

    .line 447
    .line 448
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->B:Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-direct {p1, v4, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 451
    .line 452
    .line 453
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->H:LC4/z;

    .line 454
    .line 455
    new-instance p1, LC4/z;

    .line 456
    .line 457
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->D:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-direct {p1, v4, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 460
    .line 461
    .line 462
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->J:LC4/z;

    .line 463
    .line 464
    new-instance p1, LC4/z;

    .line 465
    .line 466
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->z:Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-direct {p1, v4, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 469
    .line 470
    .line 471
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->F:LC4/z;

    .line 472
    .line 473
    new-instance p1, LC4/z;

    .line 474
    .line 475
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->E:Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-direct {p1, v4, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 478
    .line 479
    .line 480
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->K:LC4/z;

    .line 481
    .line 482
    new-instance p1, LC4/z;

    .line 483
    .line 484
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->A:Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-direct {p1, v4, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 487
    .line 488
    .line 489
    iput-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->G:LC4/z;

    .line 490
    .line 491
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    .line 492
    .line 493
    new-instance v4, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 494
    .line 495
    invoke-direct {v4, p0, v2, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 499
    .line 500
    .line 501
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    .line 502
    .line 503
    iget-object v4, p0, Lflix/com/vision/activities/DramaHomeActivity;->K:LC4/z;

    .line 504
    .line 505
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 506
    .line 507
    .line 508
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    .line 509
    .line 510
    const/16 v4, 0xf

    .line 511
    .line 512
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 513
    .line 514
    .line 515
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 516
    .line 517
    new-instance v5, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 518
    .line 519
    invoke-direct {v5, p0, v2, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 523
    .line 524
    .line 525
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 526
    .line 527
    iget-object v5, p0, Lflix/com/vision/activities/DramaHomeActivity;->J:LC4/z;

    .line 528
    .line 529
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 530
    .line 531
    .line 532
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 533
    .line 534
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 535
    .line 536
    .line 537
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 538
    .line 539
    new-instance v5, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 540
    .line 541
    invoke-direct {v5, p0, v2, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 545
    .line 546
    .line 547
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 548
    .line 549
    iget-object v5, p0, Lflix/com/vision/activities/DramaHomeActivity;->G:LC4/z;

    .line 550
    .line 551
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 552
    .line 553
    .line 554
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 555
    .line 556
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 557
    .line 558
    .line 559
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    .line 560
    .line 561
    new-instance v5, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 562
    .line 563
    invoke-direct {v5, p0, v2, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 567
    .line 568
    .line 569
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    .line 570
    .line 571
    iget-object v5, p0, Lflix/com/vision/activities/DramaHomeActivity;->H:LC4/z;

    .line 572
    .line 573
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 574
    .line 575
    .line 576
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    .line 577
    .line 578
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 579
    .line 580
    .line 581
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->L:Landroidx/recyclerview/widget/RecyclerView;

    .line 582
    .line 583
    new-instance v5, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 584
    .line 585
    invoke-direct {v5, p0, v2, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 589
    .line 590
    .line 591
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->L:Landroidx/recyclerview/widget/RecyclerView;

    .line 592
    .line 593
    iget-object v5, p0, Lflix/com/vision/activities/DramaHomeActivity;->S:LC4/B;

    .line 594
    .line 595
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 596
    .line 597
    .line 598
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->L:Landroidx/recyclerview/widget/RecyclerView;

    .line 599
    .line 600
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 601
    .line 602
    .line 603
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 604
    .line 605
    new-instance v5, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 606
    .line 607
    invoke-direct {v5, p0, v2, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 611
    .line 612
    .line 613
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 614
    .line 615
    iget-object v5, p0, Lflix/com/vision/activities/DramaHomeActivity;->F:LC4/z;

    .line 616
    .line 617
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 618
    .line 619
    .line 620
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 621
    .line 622
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 623
    .line 624
    .line 625
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    .line 626
    .line 627
    new-instance v5, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 628
    .line 629
    invoke-direct {v5, p0, v2, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 633
    .line 634
    .line 635
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    .line 636
    .line 637
    iget-object v5, p0, Lflix/com/vision/activities/DramaHomeActivity;->I:LC4/z;

    .line 638
    .line 639
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 640
    .line 641
    .line 642
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    .line 643
    .line 644
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 645
    .line 646
    .line 647
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->n:Landroid/widget/RelativeLayout;

    .line 648
    .line 649
    if-eqz p1, :cond_3

    .line 650
    .line 651
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->m:Landroid/widget/RelativeLayout;

    .line 652
    .line 653
    new-instance v4, Ly4/B;

    .line 654
    .line 655
    invoke-direct {v4, p0, v2}, Ly4/B;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    .line 660
    .line 661
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->f:Landroid/widget/RelativeLayout;

    .line 662
    .line 663
    new-instance v4, Ly4/B;

    .line 664
    .line 665
    invoke-direct {v4, p0, v3}, Ly4/B;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    .line 670
    .line 671
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->j:Landroid/widget/RelativeLayout;

    .line 672
    .line 673
    new-instance v4, Ly4/B;

    .line 674
    .line 675
    invoke-direct {v4, p0, v1}, Ly4/B;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    .line 680
    .line 681
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->n:Landroid/widget/RelativeLayout;

    .line 682
    .line 683
    new-instance v4, Ly4/B;

    .line 684
    .line 685
    invoke-direct {v4, p0, v0}, Ly4/B;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    .line 690
    .line 691
    :cond_3
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->n:Landroid/widget/RelativeLayout;

    .line 692
    .line 693
    if-eqz p1, :cond_4

    .line 694
    .line 695
    new-instance v4, Ly4/z;

    .line 696
    .line 697
    invoke-direct {v4, p0, v0}, Ly4/z;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 701
    .line 702
    .line 703
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->f:Landroid/widget/RelativeLayout;

    .line 704
    .line 705
    if-eqz p1, :cond_5

    .line 706
    .line 707
    new-instance v0, Ly4/z;

    .line 708
    .line 709
    invoke-direct {v0, p0, v2}, Ly4/z;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 713
    .line 714
    .line 715
    :cond_5
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->j:Landroid/widget/RelativeLayout;

    .line 716
    .line 717
    if-eqz p1, :cond_6

    .line 718
    .line 719
    new-instance v0, Ly4/z;

    .line 720
    .line 721
    invoke-direct {v0, p0, v3}, Ly4/z;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 725
    .line 726
    .line 727
    :cond_6
    iget-object p1, p0, Lflix/com/vision/activities/DramaHomeActivity;->m:Landroid/widget/RelativeLayout;

    .line 728
    .line 729
    if-eqz p1, :cond_7

    .line 730
    .line 731
    new-instance v0, Ly4/z;

    .line 732
    .line 733
    invoke-direct {v0, p0, v1}, Ly4/z;-><init>(Lflix/com/vision/activities/DramaHomeActivity;I)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 737
    .line 738
    .line 739
    :cond_7
    invoke-virtual {p0}, Lflix/com/vision/activities/DramaHomeActivity;->f()V

    .line 740
    .line 741
    .line 742
    sget-object p1, Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;->b:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    .line 743
    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 747
    .line 748
    .line 749
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    const-string v1, "/drama-list/ongoing.html"

    .line 755
    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/DramaHomeActivity;->g(Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    sget-object p1, Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;->n:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    .line 767
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .line 772
    .line 773
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    const-string v1, "/drama-list/completed.html"

    .line 779
    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/DramaHomeActivity;->g(Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    sget-object p1, Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;->e:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    .line 791
    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    .line 793
    .line 794
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .line 796
    .line 797
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    const-string v1, "/genre/action/"

    .line 803
    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/DramaHomeActivity;->g(Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    sget-object p1, Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;->f:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    .line 815
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .line 820
    .line 821
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 822
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    const-string v1, "/genre/mystery/"

    .line 827
    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/DramaHomeActivity;->g(Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    sget-object p1, Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;->m:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    .line 839
    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 846
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    const-string v1, "/genre/romance/"

    .line 851
    .line 852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/DramaHomeActivity;->g(Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    sget-object p1, Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;->j:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    .line 863
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    .line 865
    .line 866
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .line 868
    .line 869
    iget-object v1, p0, Lflix/com/vision/activities/DramaHomeActivity;->V:Ljava/lang/String;

    .line 870
    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    const-string v1, "/genre/variety-show/"

    .line 875
    .line 876
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/DramaHomeActivity;->g(Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lflix/com/vision/activities/DramaHomeActivity;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public openDrama(Lflix/com/vision/models/Drama;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/DramaDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "drama"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public removeDramaFromFavorites(Lflix/com/vision/models/Drama;)V
    .locals 0

    return-void
.end method
