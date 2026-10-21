.class public Lflix/com/vision/tv/PlayerActivityLiveExternal;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LK4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/tv/PlayerActivityLiveExternal$RESULT_EVENT_PLAYER_CTIVITY_LIVE;
    }
.end annotation


# static fields
.field public static final synthetic J:I


# instance fields
.field public final A:Landroid/os/Handler;

.field public B:Z

.field public C:Lcom/tuyenmonkey/mkloader/MKLoader;

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Lflix/com/vision/tv/b;

.field public H:Lflix/com/vision/models/ChannelTv;

.field public I:Z

.field public b:LC4/u;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/Toast;

.field public final j:I

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Landroid/view/animation/Animation;

.field public q:Landroid/view/animation/Animation;

.field public r:Landroid/view/animation/Animation;

.field public s:Landroid/view/animation/Animation;

.field public t:Landroid/view/animation/Animation;

.field public u:Landroid/view/animation/Animation;

.field public v:Ljava/util/ArrayList;

.field public w:I

.field public x:Landroid/view/View;

.field public y:Lflix/com/vision/bvp/BetterVideoPlayer;

.field public final z:LT4/j;


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
    iput v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->j:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 10
    .line 11
    new-instance v1, LT4/j;

    .line 12
    .line 13
    invoke-direct {v1}, LT4/j;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->z:LT4/j;

    .line 17
    .line 18
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->A:Landroid/os/Handler;

    .line 24
    .line 25
    iput-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->B:Z

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->D:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->E:Z

    .line 31
    .line 32
    iput v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->F:I

    .line 33
    .line 34
    iput-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->I:Z

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic e(Lflix/com/vision/tv/PlayerActivityLiveExternal;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "Exit"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "Do you really want to stop playback and exit ?"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, LA4/q;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const-string v3, "CANCEL"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, LB4/a;

    .line 32
    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    invoke-direct {v2, p0, v3}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    const-string v3, "YES"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    const-string v2, ""

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xd10

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x8a3

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 15
    if-ne p2, p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/16 p1, 0x22b8

    .line 22
    .line 23
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->s:Landroid/view/animation/Animation;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

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
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 39
    .line 40
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lflix/com/vision/tv/PlayerActivityLiveExternal;->f()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onBuffering(I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getSource()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_player_live2:I

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
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v0, "player_index"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    move p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, v1

    .line 28
    :goto_0
    iput-boolean p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->B:Z

    .line 29
    .line 30
    sget p1, Lflix/com/vision/R$id;->channel_image_loader:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->e:Landroid/widget/ImageView;

    .line 39
    .line 40
    sget p1, Lflix/com/vision/R$id;->loading_progress_tv:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 47
    .line 48
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->C:Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v2, "channels3g"

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v2, "index"

    .line 67
    .line 68
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 73
    .line 74
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    const-string v3, "prefs_show_channel_logo_tv"

    .line 81
    .line 82
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput-boolean p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->D:Z

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v3, ""

    .line 93
    .line 94
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->f:Landroid/widget/Toast;

    .line 99
    .line 100
    sget p1, Lflix/com/vision/R$id;->listview:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    .line 110
    sget p1, Lflix/com/vision/R$id;->video_view:I

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 117
    .line 118
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setAutoPlay(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsOnPlay(Z)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 129
    .line 130
    const/16 v3, 0x1388

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsDuration(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCallback(LK4/b;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->enableSwipeGestures(Landroid/view/Window;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setTVMode(Z)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 155
    .line 156
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget v3, Lflix/com/vision/R$menu;->menu_live_tv:I

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 166
    .line 167
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 175
    .line 176
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v3, Lf5/z;

    .line 181
    .line 182
    invoke-direct {v3, p0}, Lf5/z;-><init>(Lflix/com/vision/tv/PlayerActivityLiveExternal;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Ll/m2;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    .line 190
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 191
    .line 192
    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 196
    .line 197
    .line 198
    new-instance v4, LC4/u;

    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    iget-object v6, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 205
    .line 206
    iget v8, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->j:I

    .line 207
    .line 208
    const/16 v9, 0xc8

    .line 209
    .line 210
    move-object v7, p0

    .line 211
    invoke-direct/range {v4 .. v9}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 212
    .line 213
    .line 214
    iput-object v4, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->b:LC4/u;

    .line 215
    .line 216
    iget-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    .line 218
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->b:LC4/u;

    .line 222
    .line 223
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 224
    .line 225
    .line 226
    sget p1, Lflix/com/vision/R$id;->channels_rel:I

    .line 227
    .line 228
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 233
    .line 234
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 235
    .line 236
    sget p1, Lflix/com/vision/R$id;->controls:I

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->x:Landroid/view/View;

    .line 253
    .line 254
    iget-boolean p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->B:Z

    .line 255
    .line 256
    if-eqz p1, :cond_1

    .line 257
    .line 258
    iget-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 259
    .line 260
    const/16 v3, 0x8

    .line 261
    .line 262
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :cond_1
    const/16 p1, 0x404

    .line 266
    .line 267
    iget-object v3, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->x:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v3, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    sget v3, Lflix/com/vision/R$anim;->slide_down:I

    .line 277
    .line 278
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->p:Landroid/view/animation/Animation;

    .line 283
    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    sget v3, Lflix/com/vision/R$anim;->slide_up:I

    .line 289
    .line 290
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->q:Landroid/view/animation/Animation;

    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    sget v3, Lflix/com/vision/R$anim;->slide_down2:I

    .line 301
    .line 302
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->u:Landroid/view/animation/Animation;

    .line 307
    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    sget v3, Lflix/com/vision/R$anim;->slide_up2:I

    .line 313
    .line 314
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->t:Landroid/view/animation/Animation;

    .line 319
    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    sget v3, Lflix/com/vision/R$anim;->slide_left:I

    .line 325
    .line 326
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->r:Landroid/view/animation/Animation;

    .line 331
    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    sget v3, Lflix/com/vision/R$anim;->slide_right:I

    .line 337
    .line 338
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    iput-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->s:Landroid/view/animation/Animation;

    .line 343
    .line 344
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    iput p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 353
    .line 354
    if-ltz p1, :cond_2

    .line 355
    .line 356
    iget-object v2, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-lt p1, v2, :cond_3

    .line 363
    .line 364
    :cond_2
    iput v1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 365
    .line 366
    :cond_3
    iget-object p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setTVMode(Z)V

    .line 369
    .line 370
    .line 371
    iget p1, v7, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 372
    .line 373
    invoke-virtual {p0, p1}, Lflix/com/vision/tv/PlayerActivityLiveExternal;->playChannel(I)V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onError(Lflix/com/vision/bvp/BetterVideoPlayer;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->F:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->F:I

    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-le p1, p2, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->f:Landroid/widget/Toast;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Failed to load "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 37
    .line 38
    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->f:Landroid/widget/Toast;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->F:I

    .line 57
    .line 58
    iget p2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 59
    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    iput p2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 63
    .line 64
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lt p2, v0, :cond_1

    .line 71
    .line 72
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 73
    .line 74
    :cond_1
    iget p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lflix/com/vision/tv/PlayerActivityLiveExternal;->playChannel(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :cond_2
    new-instance p1, Landroid/os/Handler;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance p2, Lf5/v;

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-direct {p2, p0, v0}, Lf5/v;-><init>(Lflix/com/vision/tv/PlayerActivityLiveExternal;I)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v0, 0x7d0

    .line 92
    .line 93
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->z:LT4/j;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    const/4 v0, 0x4

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v0, :cond_8

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p1, v0, :cond_5

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    iget-object p2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->s:Landroid/view/animation/Animation;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    iget v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    iget-object p2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->r:Landroid/view/animation/Animation;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 82
    .line 83
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->s:Landroid/view/animation/Animation;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    return p2

    .line 94
    :cond_3
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 95
    .line 96
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 103
    .line 104
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 105
    .line 106
    .line 107
    return p2

    .line 108
    :cond_4
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 109
    .line 110
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lflix/com/vision/tv/PlayerActivityLiveExternal;->f()V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :cond_5
    :try_start_1
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 118
    .line 119
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 126
    .line 127
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_1
    move-exception p1

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 134
    .line 135
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 142
    .line 143
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_1
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 147
    .line 148
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    return v1

    .line 152
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :goto_3
    return v1

    .line 156
    :cond_8
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_9

    .line 163
    .line 164
    :goto_4
    return p2

    .line 165
    :cond_9
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 166
    .line 167
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->toggleControls()V

    .line 168
    .line 169
    .line 170
    return v1
.end method

.method public onMessageEvent()V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

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
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->s:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

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
    sget-object v0, Lf5/A;->a:[I

    iget-object p1, p1, Lflix/com/vision/models/PlayerEvent;->action:Lflix/com/vision/models/PlayerEvent$ACTION;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/StreamUrl;)V
    .locals 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 8
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getSource()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getSource()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_0

    .line 9
    iget-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->I:Z

    .line 11
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    iget v2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflix/com/vision/models/ChannelTv;

    iput-boolean v0, v1, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 12
    iget-boolean v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->B:Z

    if-eqz v1, :cond_5

    .line 13
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v1

    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v2, "player_index"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 14
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->H:Lflix/com/vision/models/ChannelTv;

    iget-object v2, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    iget-object v3, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    iget-object v4, p1, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    iget-object v5, p1, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    const/4 v6, -0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, LT4/o;->PlayMXPlayer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 16
    iget-object v0, v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->H:Lflix/com/vision/models/ChannelTv;

    iget-object v8, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    iget-object v9, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    iget-object v10, p1, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    iget-object v11, p1, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    const/4 v12, -0x1

    move-object v7, v1

    invoke-static/range {v7 .. v12}, LT4/o;->PlayVLC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 18
    iget-object v0, v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->H:Lflix/com/vision/models/ChannelTv;

    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    iget-object v2, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    invoke-static {p0, v0, v2}, LT4/o;->PlayXPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    iget-object v0, v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 20
    iget-object v0, v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    iget-object v2, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lflix/com/vision/models/StreamUrl;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    move-object v1, p0

    .line 21
    :goto_0
    iget-object v0, v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 22
    iget-object v0, v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    iget-object v2, p1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lflix/com/vision/models/StreamUrl;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;Ljava/util/Map;)V

    .line 23
    :goto_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lf5/v;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lf5/v;-><init>(Lflix/com/vision/tv/PlayerActivityLiveExternal;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPaused(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->G:Lflix/com/vision/tv/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->A:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lflix/com/vision/activities/base/a;->Show()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onPrepared(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->C:Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->D:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->e:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->F:I

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget v2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lflix/com/vision/models/ChannelTv;

    .line 33
    .line 34
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-boolean v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->E:Z

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iput-boolean v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->E:Z

    .line 50
    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget v2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 70
    .line 71
    iput-boolean v1, v0, Lflix/com/vision/models/ChannelTv;->has_played:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_2
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_2
    new-instance v0, Landroid/os/Handler;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v1, LB4/d;

    .line 84
    .line 85
    const/4 v2, 0x3

    .line 86
    invoke-direct {v1, p1, v2}, LB4/d;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v2, 0xc8

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lflix/com/vision/activities/base/a;->Show()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onPreparing()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/v;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStarted(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/v;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onToggleControls(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->G:Lflix/com/vision/tv/b;

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->A:Landroid/os/Handler;

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
    new-instance p1, Lflix/com/vision/tv/b;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->G:Lflix/com/vision/tv/b;

    .line 18
    .line 19
    const-wide/16 v1, 0x1388

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
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
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->x:Landroid/view/View;

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

.method public playChannel(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lflix/com/vision/models/ChannelTv;

    .line 8
    .line 9
    iget-object v1, v0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-le v1, v2, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, v0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lm4/J;->fit()Lm4/J;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, LT4/d;

    .line 36
    .line 37
    invoke-direct {v2}, LT4/d;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lm4/J;->transform(Lm4/S;)Lm4/J;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lm4/J;->centerCrop()Lm4/J;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->e:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    .line 57
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_1
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->C:Lcom/tuyenmonkey/mkloader/MKLoader;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->e:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 76
    .line 77
    sget-object p1, Lflix/com/vision/App;->E:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->H:Lflix/com/vision/models/ChannelTv;

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-lez v1, :cond_1

    .line 93
    .line 94
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->H:Lflix/com/vision/models/ChannelTv;

    .line 95
    .line 96
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lflix/com/vision/models/StreamUrl;

    .line 103
    .line 104
    iget-object v1, v1, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 105
    .line 106
    const-string v3, "User-Agent"

    .line 107
    .line 108
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->H:Lflix/com/vision/models/ChannelTv;

    .line 112
    .line 113
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lflix/com/vision/models/StreamUrl;

    .line 120
    .line 121
    iget-object v1, v1, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    .line 122
    .line 123
    const-string v3, "Referer"

    .line 124
    .line 125
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_1
    iput-object v0, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->H:Lflix/com/vision/models/ChannelTv;

    .line 129
    .line 130
    iget-boolean p1, v0, Lflix/com/vision/models/ChannelTv;->is_streamable:Z

    .line 131
    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    :try_start_2
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->v:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 141
    .line 142
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 143
    .line 144
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lflix/com/vision/tv/PlayerActivityLiveExternal;->y:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 148
    .line 149
    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_2
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_2
    iget-object p1, v0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-lez p1, :cond_3

    .line 171
    .line 172
    iget-object p1, v0, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lflix/com/vision/models/StreamUrl;

    .line 179
    .line 180
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p1, v0}, Lf5/m;->GetStreamLink(Lflix/com/vision/models/StreamUrl;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_2
    return-void

    .line 186
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string v0, "Failed to load Channel"

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 198
    .line 199
    .line 200
    return-void
.end method
