.class public Lflix/com/vision/activities/TraktSignInActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic y:I


# instance fields
.field public b:Lh5/j;

.field public e:Landroid/graphics/Typeface;

.field public f:Ly4/r1;

.field public j:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public p:I

.field public q:Landroid/widget/LinearLayout;

.field public r:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/TraktSignInActivity;->x:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/TraktSignInActivity;->f:Ly4/r1;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_trakt_activation:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "fonts/pproduct_sans_rregular.ttf"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->e:Landroid/graphics/Typeface;

    .line 22
    .line 23
    new-instance p1, Lh5/j;

    .line 24
    .line 25
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->b:Lh5/j;

    .line 29
    .line 30
    sget p1, Lflix/com/vision/R$id;->main_content:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->q:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 47
    .line 48
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->r:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 49
    .line 50
    sget p1, Lflix/com/vision/R$id;->activation_code_text:I

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->s:Landroid/widget/TextView;

    .line 59
    .line 60
    sget p1, Lflix/com/vision/R$id;->trakt_text_1:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->t:Landroid/widget/TextView;

    .line 69
    .line 70
    sget p1, Lflix/com/vision/R$id;->trakt_text_2:I

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->u:Landroid/widget/TextView;

    .line 79
    .line 80
    sget p1, Lflix/com/vision/R$id;->trakt_text_3:I

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->v:Landroid/widget/TextView;

    .line 89
    .line 90
    sget p1, Lflix/com/vision/R$id;->trakt_text_4:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->w:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->b:Lh5/j;

    .line 101
    .line 102
    iget-object v0, p0, Lflix/com/vision/activities/TraktSignInActivity;->t:Landroid/widget/TextView;

    .line 103
    .line 104
    iget-object v1, p0, Lflix/com/vision/activities/TraktSignInActivity;->e:Landroid/graphics/Typeface;

    .line 105
    .line 106
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->b:Lh5/j;

    .line 110
    .line 111
    iget-object v0, p0, Lflix/com/vision/activities/TraktSignInActivity;->u:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object v1, p0, Lflix/com/vision/activities/TraktSignInActivity;->e:Landroid/graphics/Typeface;

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->b:Lh5/j;

    .line 119
    .line 120
    iget-object v0, p0, Lflix/com/vision/activities/TraktSignInActivity;->v:Landroid/widget/TextView;

    .line 121
    .line 122
    iget-object v1, p0, Lflix/com/vision/activities/TraktSignInActivity;->e:Landroid/graphics/Typeface;

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->b:Lh5/j;

    .line 128
    .line 129
    iget-object v0, p0, Lflix/com/vision/activities/TraktSignInActivity;->w:Landroid/widget/TextView;

    .line 130
    .line 131
    iget-object v1, p0, Lflix/com/vision/activities/TraktSignInActivity;->e:Landroid/graphics/Typeface;

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lflix/com/vision/activities/TraktSignInActivity;->b:Lh5/j;

    .line 137
    .line 138
    iget-object v0, p0, Lflix/com/vision/activities/TraktSignInActivity;->s:Landroid/widget/TextView;

    .line 139
    .line 140
    iget-object v1, p0, Lflix/com/vision/activities/TraktSignInActivity;->e:Landroid/graphics/Typeface;

    .line 141
    .line 142
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 143
    .line 144
    .line 145
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 146
    .line 147
    const-string v0, "{\n    \"client_id\": \"39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c\"\n}"

    .line 148
    .line 149
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    :goto_0
    move-object v3, p1

    .line 153
    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    move-object p1, v0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    const/4 p1, 0x0

    .line 160
    goto :goto_0

    .line 161
    :goto_1
    if-nez v3, :cond_0

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_0
    new-instance v0, Ly4/n1;

    .line 165
    .line 166
    new-instance v4, Ly4/m1;

    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    invoke-direct {v4, p0, p1}, Ly4/m1;-><init>(Lflix/com/vision/activities/TraktSignInActivity;I)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Landroidx/media3/exoplayer/source/chunk/a;

    .line 173
    .line 174
    const/16 p1, 0x1b

    .line 175
    .line 176
    invoke-direct {v5, p1}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 177
    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    const-string v2, "https://api.trakt.tv/oauth/device/code"

    .line 181
    .line 182
    invoke-direct/range {v0 .. v5}, Lh2/p;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 194
    .line 195
    .line 196
    :goto_2
    return-void
.end method
