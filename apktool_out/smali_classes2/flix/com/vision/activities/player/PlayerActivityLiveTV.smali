.class public Lflix/com/vision/activities/player/PlayerActivityLiveTV;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LK4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/activities/player/PlayerActivityLiveTV$RESULT_EVENT_PLAYER_CTIVITY_LIVE;
    }
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Z

.field public b:LC4/u;

.field public final e:I

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroid/view/animation/Animation;

.field public n:Landroid/view/animation/Animation;

.field public p:Landroid/view/animation/Animation;

.field public q:Landroid/view/animation/Animation;

.field public r:Landroid/view/animation/Animation;

.field public s:I

.field public t:Landroid/view/View;

.field public u:Lflix/com/vision/bvp/BetterVideoPlayer;

.field public final v:LT4/j;

.field public final w:Landroid/os/Handler;

.field public x:Ljava/lang/String;

.field public y:Landroid/view/animation/Animation;

.field public z:LB4/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x77f

    .line 5
    .line 6
    iput v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->e:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 10
    .line 11
    new-instance v1, LT4/j;

    .line 12
    .line 13
    invoke-direct {v1}, LT4/j;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->v:LT4/j;

    .line 17
    .line 18
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->w:Landroid/os/Handler;

    .line 24
    .line 25
    const-string v1, "-1"

    .line 26
    .line 27
    iput-object v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->x:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->A:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    iget-object v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->n:Landroid/view/animation/Animation;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->p:Landroid/view/animation/Animation;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 25
    .line 26
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 39
    .line 40
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 44
    .line 45
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 49
    .line 50
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onBuffering(I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 2

    .line 1
    iget v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 2
    .line 3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 29
    .line 30
    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_exo_media:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "type"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->x:Ljava/lang/String;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string p1, "1"

    .line 24
    .line 25
    iput-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->x:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 32
    .line 33
    const-string v0, "player_index"

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->x:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "3"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    move p1, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move p1, v1

    .line 56
    :goto_0
    iput-boolean p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->A:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v2, ""

    .line 63
    .line 64
    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget p1, Lflix/com/vision/R$id;->buffering_view:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 81
    .line 82
    sget p1, Lflix/com/vision/R$id;->listview:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    iput-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    sget p1, Lflix/com/vision/R$id;->video_view:I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 99
    .line 100
    iput-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setAutoPlay(Z)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsOnPlay(Z)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 111
    .line 112
    const/16 v2, 0x1388

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsDuration(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCallback(LK4/b;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->enableSwipeGestures(Landroid/view/Window;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setTVMode(Z)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 137
    .line 138
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget v0, Lflix/com/vision/R$menu;->menu_live_tv:I

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 148
    .line 149
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 157
    .line 158
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v0, LA0/a;

    .line 163
    .line 164
    const/4 v2, 0x3

    .line 165
    invoke-direct {v0, p0, v2}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Ll/m2;)V

    .line 169
    .line 170
    .line 171
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 172
    .line 173
    if-eqz p1, :cond_2

    .line 174
    .line 175
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 176
    .line 177
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const/16 v0, 0x8

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    :cond_2
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    .line 188
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 189
    .line 190
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 194
    .line 195
    .line 196
    new-instance v2, LC4/u;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object v4, p1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 207
    .line 208
    iget v6, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->e:I

    .line 209
    .line 210
    const/16 v7, 0xc8

    .line 211
    .line 212
    move-object v5, p0

    .line 213
    invoke-direct/range {v2 .. v7}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 214
    .line 215
    .line 216
    iput-object v2, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->b:LC4/u;

    .line 217
    .line 218
    iget-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    .line 220
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->b:LC4/u;

    .line 224
    .line 225
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 226
    .line 227
    .line 228
    sget p1, Lflix/com/vision/R$id;->channels_rel:I

    .line 229
    .line 230
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 235
    .line 236
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->t:Landroid/view/View;

    .line 247
    .line 248
    const/16 v0, 0x404

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    sget v0, Lflix/com/vision/R$anim;->slide_down:I

    .line 258
    .line 259
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->y:Landroid/view/animation/Animation;

    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    sget v0, Lflix/com/vision/R$anim;->slide_up:I

    .line 270
    .line 271
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->m:Landroid/view/animation/Animation;

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    sget v0, Lflix/com/vision/R$anim;->slide_down2:I

    .line 282
    .line 283
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->r:Landroid/view/animation/Animation;

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    sget v0, Lflix/com/vision/R$anim;->slide_up2:I

    .line 294
    .line 295
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->q:Landroid/view/animation/Animation;

    .line 300
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    sget v0, Lflix/com/vision/R$anim;->slide_left:I

    .line 306
    .line 307
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->n:Landroid/view/animation/Animation;

    .line 312
    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    sget v0, Lflix/com/vision/R$anim;->slide_right:I

    .line 318
    .line 319
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->p:Landroid/view/animation/Animation;

    .line 324
    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    const-string v0, "actual_index"

    .line 330
    .line 331
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    iput p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 336
    .line 337
    if-ltz p1, :cond_3

    .line 338
    .line 339
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iget-object v0, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-lt p1, v0, :cond_4

    .line 350
    .line 351
    :cond_3
    iput v1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 352
    .line 353
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    const-string v0, "channel"

    .line 358
    .line 359
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 364
    .line 365
    if-eqz p1, :cond_5

    .line 366
    .line 367
    invoke-virtual {p0, p1, v1}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->playChannel(Lflix/com/vision/models/ChannelTv;Z)V

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :cond_5
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    iget-object p1, p1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 376
    .line 377
    iget v0, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 378
    .line 379
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 384
    .line 385
    invoke-virtual {p0, p1, v1}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->playChannel(Lflix/com/vision/models/ChannelTv;Z)V

    .line 386
    .line 387
    .line 388
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    sget v0, Lflix/com/vision/R$anim;->slide_down:I

    .line 393
    .line 394
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    iput-object p1, v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->y:Landroid/view/animation/Animation;

    .line 399
    .line 400
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onDestroy()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onDestroy()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onError(Lflix/com/vision/bvp/BetterVideoPlayer;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 15
    .line 16
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object p2, p2, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 v0, 0x0

    .line 27
    if-ge p1, p2, :cond_1

    .line 28
    .line 29
    iget p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 30
    .line 31
    if-gez p1, :cond_2

    .line 32
    .line 33
    :cond_1
    iput v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 34
    .line 35
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget p2, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->playChannel(Lflix/com/vision/models/ChannelTv;Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 10
    .line 11
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 15
    .line 16
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->v:LT4/j;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x2

    .line 30
    const/4 v0, 0x0

    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    if-eq p1, p2, :cond_b

    .line 34
    .line 35
    const/4 p2, 0x4

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eq p1, p2, :cond_9

    .line 38
    .line 39
    const/4 p2, 0x5

    .line 40
    if-eq p1, p2, :cond_6

    .line 41
    .line 42
    const/16 p2, 0xa

    .line 43
    .line 44
    if-eq p1, p2, :cond_3

    .line 45
    .line 46
    const/16 p2, 0xb

    .line 47
    .line 48
    if-eq p1, p2, :cond_1

    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    iget-object p2, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->p:Landroid/view/animation/Animation;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    iget p2, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {p0}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->e()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return v2

    .line 89
    :cond_3
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    iget-object p2, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->p:Landroid/view/animation/Animation;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 111
    .line 112
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 119
    .line 120
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 121
    .line 122
    .line 123
    return v2

    .line 124
    :cond_5
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 125
    .line 126
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 127
    .line 128
    .line 129
    :try_start_1
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 130
    .line 131
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 135
    .line 136
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .line 138
    .line 139
    :catch_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 143
    .line 144
    .line 145
    return v2

    .line 146
    :cond_6
    :try_start_2
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 147
    .line 148
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 155
    .line 156
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_2
    move-exception p1

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 163
    .line 164
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_8

    .line 169
    .line 170
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 171
    .line 172
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_2
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 176
    .line 177
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :goto_4
    return v2

    .line 185
    :cond_9
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_a

    .line 192
    .line 193
    return v0

    .line 194
    :cond_a
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 195
    .line 196
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->toggleControls()V

    .line 197
    .line 198
    .line 199
    return v2

    .line 200
    :cond_b
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_c

    .line 207
    .line 208
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 209
    .line 210
    iget-object p2, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->p:Landroid/view/animation/Animation;

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_c
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-ne p1, v1, :cond_d

    .line 228
    .line 229
    invoke-virtual {p0}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->e()V

    .line 230
    .line 231
    .line 232
    :cond_d
    :goto_5
    return v0
.end method

.method public onMessageEvent()V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(LR4/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 3
    iget-object p1, p1, LR4/e;->a:Lflix/com/vision/events/SystemEvent$ACTION;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/PlayerEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 7
    sget-object v0, LB4/m;->a:[I

    iget-object p1, p1, Lflix/com/vision/models/PlayerEvent;->action:Lflix/com/vision/models/PlayerEvent$ACTION;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return-void
.end method

.method public onPaused(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->z:LB4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->w:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, LB4/j;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, LB4/j;-><init>(Lflix/com/vision/activities/player/PlayerActivityLiveTV;Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x7d0

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onPrepared(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget v2, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lflix/com/vision/models/ChannelTv;

    .line 18
    .line 19
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget v1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, v0, Lflix/com/vision/models/ChannelTv;->has_played:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_1
    new-instance v0, Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v1, LB4/k;

    .line 57
    .line 58
    invoke-direct {v1, p1}, LB4/k;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0xc8

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onPreparing()V
    .locals 0

    return-void
.end method

.method public onStarted(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onToggleControls(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->z:LB4/g;

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->w:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance p1, LB4/g;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p1, v1}, LB4/g;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->z:LB4/g;

    .line 19
    .line 20
    const-wide/16 v1, 0x1388

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->t:Landroid/view/View;

    .line 7
    .line 8
    const/16 v0, 0x1706

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public playChannel(Lflix/com/vision/models/ChannelTv;Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-nez p2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 27
    .line 28
    :cond_1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 29
    .line 30
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 34
    .line 35
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-nez p2, :cond_2

    .line 50
    .line 51
    new-instance p2, Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v0, LB4/l;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1}, LB4/l;-><init>(Lflix/com/vision/activities/player/PlayerActivityLiveTV;Lflix/com/vision/models/ChannelTv;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v1, 0xfa0

    .line 62
    .line 63
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method
