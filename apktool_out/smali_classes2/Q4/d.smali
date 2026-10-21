.class public LQ4/d;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static Y:Landroid/graphics/Typeface; = null

.field public static Z:Lh5/j; = null

.field public static a0:Landroid/app/Activity; = null

.field public static b0:Z = false


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/RelativeLayout;

.field public L:Landroid/widget/RelativeLayout;

.field public M:Landroid/widget/RelativeLayout;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Z

.field public b:Landroid/view/View$OnClickListener;

.field public e:Landroid/view/View$OnClickListener;

.field public f:Landroid/view/View$OnClickListener;

.field public j:Landroid/view/View$OnClickListener;

.field public m:Landroid/view/View$OnClickListener;

.field public n:Landroid/view/View$OnClickListener;

.field public p:Landroid/view/View$OnClickListener;

.field public q:Landroid/view/View$OnClickListener;

.field public r:Landroid/view/View$OnClickListener;

.field public s:Landroid/os/Handler;

.field public t:LQ4/a;

.field public u:Z

.field public v:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public w:Landroid/widget/LinearLayout;

.field public x:Landroid/widget/LinearLayout;

.field public y:Landroid/widget/LinearLayout;

.field public final z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LQ4/d;->u:Z

    .line 6
    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput v1, p0, LQ4/d;->z:F

    .line 10
    .line 11
    iput-boolean v0, p0, LQ4/d;->X:Z

    .line 12
    .line 13
    return-void
.end method

.method public static b(Landroid/widget/TextView;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {v5, p1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 24
    .line 25
    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Z)LQ4/d;
    .locals 2

    .line 1
    new-instance v0, LQ4/d;

    .line 2
    .line 3
    invoke-direct {v0}, LQ4/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object p0, LQ4/d;->a0:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sput-object p0, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 21
    .line 22
    new-instance p0, Lh5/j;

    .line 23
    .line 24
    invoke-direct {p0}, Lh5/j;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object p0, LQ4/d;->Z:Lh5/j;

    .line 28
    .line 29
    sput-boolean p1, LQ4/d;->b0:Z

    .line 30
    .line 31
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LQ4/d;->s:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v0, p0, LQ4/d;->t:LQ4/a;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    iget-boolean p3, p0, LQ4/d;->u:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget p3, Lflix/com/vision/R$layout;->fvision_dialog_menu:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean p3, Lflix/com/vision/App;->I:Z

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    sget p3, Lflix/com/vision/R$layout;->fvision_dialog:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget p3, Lflix/com/vision/R$layout;->fvision_dialog_phones:I

    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget p2, Lflix/com/vision/R$id;->button_user_torrents:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p2, p0, LQ4/d;->J:Landroid/widget/TextView;

    .line 31
    .line 32
    sget p2, Lflix/com/vision/R$id;->horizontal_buttons:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    iput-object p2, p0, LQ4/d;->y:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    sget p2, Lflix/com/vision/R$id;->button_restart:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object p2, p0, LQ4/d;->I:Landroid/widget/TextView;

    .line 51
    .line 52
    sget p2, Lflix/com/vision/R$id;->button_discord:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object p2, p0, LQ4/d;->H:Landroid/widget/TextView;

    .line 61
    .line 62
    sget p2, Lflix/com/vision/R$id;->button_twitter:I

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p2, p0, LQ4/d;->G:Landroid/widget/TextView;

    .line 71
    .line 72
    sget p2, Lflix/com/vision/R$id;->button_check_update:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p2, p0, LQ4/d;->F:Landroid/widget/TextView;

    .line 81
    .line 82
    sget p2, Lflix/com/vision/R$id;->button_trakt_tv:I

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object p2, p0, LQ4/d;->C:Landroid/widget/TextView;

    .line 91
    .line 92
    sget p2, Lflix/com/vision/R$id;->button_login_:I

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object p2, p0, LQ4/d;->D:Landroid/widget/TextView;

    .line 101
    .line 102
    sget p2, Lflix/com/vision/R$id;->button_watched:I

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object p2, p0, LQ4/d;->E:Landroid/widget/TextView;

    .line 111
    .line 112
    sget p2, Lflix/com/vision/R$id;->button_import_playlist:I

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p2, p0, LQ4/d;->B:Landroid/widget/TextView;

    .line 121
    .line 122
    sget p2, Lflix/com/vision/R$id;->button_my_playlists:I

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object p2, p0, LQ4/d;->A:Landroid/widget/TextView;

    .line 131
    .line 132
    sget p2, Lflix/com/vision/R$id;->spin_kit:I

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 139
    .line 140
    iput-object p2, p0, LQ4/d;->v:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 141
    .line 142
    sget p2, Lflix/com/vision/R$id;->dialog_main_content:I

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroid/widget/LinearLayout;

    .line 149
    .line 150
    iput-object p2, p0, LQ4/d;->w:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    sget p2, Lflix/com/vision/R$id;->menu_buttons:I

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Landroid/widget/LinearLayout;

    .line 159
    .line 160
    iput-object p2, p0, LQ4/d;->x:Landroid/widget/LinearLayout;

    .line 161
    .line 162
    sget p2, Lflix/com/vision/R$id;->dialog_button_rel1:I

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 169
    .line 170
    iput-object p2, p0, LQ4/d;->K:Landroid/widget/RelativeLayout;

    .line 171
    .line 172
    sget p2, Lflix/com/vision/R$id;->dialog_button_rel2:I

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 179
    .line 180
    iput-object p2, p0, LQ4/d;->L:Landroid/widget/RelativeLayout;

    .line 181
    .line 182
    sget p2, Lflix/com/vision/R$id;->dialog_button_rel3:I

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 189
    .line 190
    iput-object p2, p0, LQ4/d;->M:Landroid/widget/RelativeLayout;

    .line 191
    .line 192
    sget p2, Lflix/com/vision/R$id;->dialog_title:I

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Landroid/widget/TextView;

    .line 199
    .line 200
    iput-object p2, p0, LQ4/d;->N:Landroid/widget/TextView;

    .line 201
    .line 202
    sget p2, Lflix/com/vision/R$id;->dialog_message:I

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Landroid/widget/TextView;

    .line 209
    .line 210
    iput-object p2, p0, LQ4/d;->O:Landroid/widget/TextView;

    .line 211
    .line 212
    new-instance p3, Landroid/text/method/ScrollingMovementMethod;

    .line 213
    .line 214
    invoke-direct {p3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 218
    .line 219
    .line 220
    sget p2, Lflix/com/vision/R$id;->button1_text_view:I

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Landroid/widget/TextView;

    .line 227
    .line 228
    iput-object p2, p0, LQ4/d;->P:Landroid/widget/TextView;

    .line 229
    .line 230
    sget p2, Lflix/com/vision/R$id;->button2_text_view:I

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    check-cast p2, Landroid/widget/TextView;

    .line 237
    .line 238
    iput-object p2, p0, LQ4/d;->Q:Landroid/widget/TextView;

    .line 239
    .line 240
    sget p2, Lflix/com/vision/R$id;->button3_text_view:I

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    check-cast p2, Landroid/widget/TextView;

    .line 247
    .line 248
    iput-object p2, p0, LQ4/d;->R:Landroid/widget/TextView;

    .line 249
    .line 250
    iget-object p2, p0, LQ4/d;->M:Landroid/widget/RelativeLayout;

    .line 251
    .line 252
    if-eqz p2, :cond_2

    .line 253
    .line 254
    new-instance p3, LA4/o;

    .line 255
    .line 256
    const/4 v1, 0x3

    .line 257
    invoke-direct {p3, p0, v1}, LA4/o;-><init>(LQ4/d;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    :cond_2
    iget-object p2, p0, LQ4/d;->L:Landroid/widget/RelativeLayout;

    .line 264
    .line 265
    new-instance p3, LA4/o;

    .line 266
    .line 267
    const/4 v1, 0x4

    .line 268
    invoke-direct {p3, p0, v1}, LA4/o;-><init>(LQ4/d;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object p2, p0, LQ4/d;->K:Landroid/widget/RelativeLayout;

    .line 275
    .line 276
    new-instance p3, LA4/o;

    .line 277
    .line 278
    const/4 v1, 0x5

    .line 279
    invoke-direct {p3, p0, v1}, LA4/o;-><init>(LQ4/d;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    iget-object p2, p0, LQ4/d;->b:Landroid/view/View$OnClickListener;

    .line 286
    .line 287
    const/16 p3, 0x8

    .line 288
    .line 289
    if-nez p2, :cond_3

    .line 290
    .line 291
    iget-object p2, p0, LQ4/d;->K:Landroid/widget/RelativeLayout;

    .line 292
    .line 293
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    :cond_3
    iget-object p2, p0, LQ4/d;->e:Landroid/view/View$OnClickListener;

    .line 297
    .line 298
    if-nez p2, :cond_4

    .line 299
    .line 300
    iget-object p2, p0, LQ4/d;->L:Landroid/widget/RelativeLayout;

    .line 301
    .line 302
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    :cond_4
    iget-object p2, p0, LQ4/d;->f:Landroid/view/View$OnClickListener;

    .line 306
    .line 307
    if-nez p2, :cond_5

    .line 308
    .line 309
    iget-object p2, p0, LQ4/d;->M:Landroid/widget/RelativeLayout;

    .line 310
    .line 311
    if-eqz p2, :cond_5

    .line 312
    .line 313
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    :cond_5
    iget-object p2, p0, LQ4/d;->O:Landroid/widget/TextView;

    .line 317
    .line 318
    iget-object v1, p0, LQ4/d;->T:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    iget-object p2, p0, LQ4/d;->N:Landroid/widget/TextView;

    .line 324
    .line 325
    iget-object v1, p0, LQ4/d;->S:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    iget-object p2, p0, LQ4/d;->U:Ljava/lang/String;

    .line 331
    .line 332
    if-eqz p2, :cond_6

    .line 333
    .line 334
    iget-object v1, p0, LQ4/d;->P:Landroid/widget/TextView;

    .line 335
    .line 336
    if-eqz v1, :cond_6

    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    :cond_6
    iget-object p2, p0, LQ4/d;->V:Ljava/lang/String;

    .line 346
    .line 347
    if-eqz p2, :cond_7

    .line 348
    .line 349
    iget-object v1, p0, LQ4/d;->Q:Landroid/widget/TextView;

    .line 350
    .line 351
    if-eqz v1, :cond_7

    .line 352
    .line 353
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    :cond_7
    iget-object p2, p0, LQ4/d;->W:Ljava/lang/String;

    .line 361
    .line 362
    if-eqz p2, :cond_8

    .line 363
    .line 364
    iget-object v1, p0, LQ4/d;->R:Landroid/widget/TextView;

    .line 365
    .line 366
    if-eqz v1, :cond_8

    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    :cond_8
    iget-object p2, p0, LQ4/d;->K:Landroid/widget/RelativeLayout;

    .line 376
    .line 377
    new-instance v1, LQ4/b;

    .line 378
    .line 379
    const/4 v2, 0x2

    .line 380
    invoke-direct {v1, p0, v2}, LQ4/b;-><init>(LQ4/d;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 384
    .line 385
    .line 386
    iget-object p2, p0, LQ4/d;->L:Landroid/widget/RelativeLayout;

    .line 387
    .line 388
    new-instance v1, LQ4/b;

    .line 389
    .line 390
    const/4 v2, 0x0

    .line 391
    invoke-direct {v1, p0, v2}, LQ4/b;-><init>(LQ4/d;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 395
    .line 396
    .line 397
    iget-object p2, p0, LQ4/d;->M:Landroid/widget/RelativeLayout;

    .line 398
    .line 399
    if-eqz p2, :cond_9

    .line 400
    .line 401
    new-instance v1, LQ4/b;

    .line 402
    .line 403
    const/4 v2, 0x1

    .line 404
    invoke-direct {v1, p0, v2}, LQ4/b;-><init>(LQ4/d;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 408
    .line 409
    .line 410
    :cond_9
    iget-boolean p2, p0, LQ4/d;->X:Z

    .line 411
    .line 412
    if-eqz p2, :cond_a

    .line 413
    .line 414
    iget-object p2, p0, LQ4/d;->w:Landroid/widget/LinearLayout;

    .line 415
    .line 416
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    iget-object p2, p0, LQ4/d;->v:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 420
    .line 421
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    :cond_a
    iget-boolean p2, p0, LQ4/d;->u:Z

    .line 425
    .line 426
    if-eqz p2, :cond_b

    .line 427
    .line 428
    iget-object p2, p0, LQ4/d;->G:Landroid/widget/TextView;

    .line 429
    .line 430
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 431
    .line 432
    .line 433
    iget-object p2, p0, LQ4/d;->F:Landroid/widget/TextView;

    .line 434
    .line 435
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 436
    .line 437
    .line 438
    iget-object p2, p0, LQ4/d;->H:Landroid/widget/TextView;

    .line 439
    .line 440
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 441
    .line 442
    .line 443
    iget-object p2, p0, LQ4/d;->J:Landroid/widget/TextView;

    .line 444
    .line 445
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 446
    .line 447
    .line 448
    iget-object p2, p0, LQ4/d;->I:Landroid/widget/TextView;

    .line 449
    .line 450
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 451
    .line 452
    .line 453
    iget-object p2, p0, LQ4/d;->B:Landroid/widget/TextView;

    .line 454
    .line 455
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 456
    .line 457
    .line 458
    iget-object p2, p0, LQ4/d;->A:Landroid/widget/TextView;

    .line 459
    .line 460
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 461
    .line 462
    .line 463
    iget-object p2, p0, LQ4/d;->C:Landroid/widget/TextView;

    .line 464
    .line 465
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 466
    .line 467
    .line 468
    iget-object p2, p0, LQ4/d;->D:Landroid/widget/TextView;

    .line 469
    .line 470
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 471
    .line 472
    .line 473
    iget-object p2, p0, LQ4/d;->E:Landroid/widget/TextView;

    .line 474
    .line 475
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 476
    .line 477
    .line 478
    iget-object p2, p0, LQ4/d;->G:Landroid/widget/TextView;

    .line 479
    .line 480
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 481
    .line 482
    .line 483
    iget-object p2, p0, LQ4/d;->F:Landroid/widget/TextView;

    .line 484
    .line 485
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 486
    .line 487
    .line 488
    iget-object p2, p0, LQ4/d;->H:Landroid/widget/TextView;

    .line 489
    .line 490
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 491
    .line 492
    .line 493
    iget-object p2, p0, LQ4/d;->J:Landroid/widget/TextView;

    .line 494
    .line 495
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 496
    .line 497
    .line 498
    iget-object p2, p0, LQ4/d;->I:Landroid/widget/TextView;

    .line 499
    .line 500
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 501
    .line 502
    .line 503
    iget-object p2, p0, LQ4/d;->B:Landroid/widget/TextView;

    .line 504
    .line 505
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 506
    .line 507
    .line 508
    iget-object p2, p0, LQ4/d;->A:Landroid/widget/TextView;

    .line 509
    .line 510
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 511
    .line 512
    .line 513
    iget-object p2, p0, LQ4/d;->C:Landroid/widget/TextView;

    .line 514
    .line 515
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 516
    .line 517
    .line 518
    iget-object p2, p0, LQ4/d;->D:Landroid/widget/TextView;

    .line 519
    .line 520
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 521
    .line 522
    .line 523
    iget-object p2, p0, LQ4/d;->E:Landroid/widget/TextView;

    .line 524
    .line 525
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 526
    .line 527
    .line 528
    :cond_b
    iget p2, p0, LQ4/d;->z:F

    .line 529
    .line 530
    const/4 p3, 0x0

    .line 531
    cmpl-float p3, p2, p3

    .line 532
    .line 533
    if-lez p3, :cond_c

    .line 534
    .line 535
    iget-object p3, p0, LQ4/d;->O:Landroid/widget/TextView;

    .line 536
    .line 537
    if-eqz p3, :cond_c

    .line 538
    .line 539
    const/4 v0, 0x2

    .line 540
    invoke-virtual {p3, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 541
    .line 542
    .line 543
    :cond_c
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 544
    .line 545
    .line 546
    move-result-object p2

    .line 547
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    const/4 p3, 0x1

    .line 555
    invoke-virtual {p2, p3}, Landroid/view/Window;->requestFeature(I)Z

    .line 556
    .line 557
    .line 558
    sget-boolean p2, LQ4/d;->b0:Z

    .line 559
    .line 560
    invoke-virtual {p0, p2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 561
    .line 562
    .line 563
    return-object p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0xc8

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    move-object p2, p1

    .line 17
    check-cast p2, Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget v3, Lflix/com/vision/R$color;->black:I

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    sget v2, Lflix/com/vision/R$color;->black:I

    .line 33
    .line 34
    invoke-static {p2, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const p2, 0x3f8ccccd    # 1.1f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    move-object p2, p1

    .line 61
    check-cast p2, Landroid/widget/TextView;

    .line 62
    .line 63
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 64
    .line 65
    invoke-static {p2, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/high16 p2, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    sget-object p3, LQ4/d;->a0:Landroid/app/Activity;

    .line 12
    .line 13
    instance-of v2, p3, Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    check-cast p3, Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 18
    .line 19
    invoke-virtual {p3}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->resetInactivityTimer()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 p3, 0x4

    .line 23
    if-ne p2, p3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    if-nez p3, :cond_3

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_3
    const/16 p3, 0x17

    .line 38
    .line 39
    if-ne p2, p3, :cond_10

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    sget p2, Lflix/com/vision/R$id;->button_discord:I

    .line 49
    .line 50
    const-string p3, ""

    .line 51
    .line 52
    const-string v2, "OPEN APP"

    .line 53
    .line 54
    const-string v3, "OK"

    .line 55
    .line 56
    if-ne p1, p2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v4, "Discord"

    .line 71
    .line 72
    invoke-virtual {p2, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v4, "Join the Flix Vision community at https://discord.gg/tKjc4PTvxu"

    .line 76
    .line 77
    invoke-virtual {p2, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v4, LA4/o;

    .line 81
    .line 82
    invoke-direct {v4, p2, v1}, LA4/o;-><init>(LQ4/d;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v3, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    const-string v3, "com.discord"

    .line 89
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    new-instance v3, LQ4/c;

    .line 102
    .line 103
    invoke-direct {v3, p0, p2, v0}, LQ4/c;-><init>(LQ4/d;LQ4/d;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v2, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    :catch_0
    :try_start_1
    invoke-virtual {p2, p1, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 122
    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 128
    .line 129
    const-string p2, "discord_check"

    .line 130
    .line 131
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_4
    sget p2, Lflix/com/vision/R$id;->button_twitter:I

    .line 141
    .line 142
    if-ne p1, p2, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    const-string v4, "Twitter"

    .line 157
    .line 158
    invoke-virtual {p2, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v4, "Find us on twitter at @FlixVisionApp"

    .line 162
    .line 163
    invoke-virtual {p2, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v4, LA4/o;

    .line 167
    .line 168
    const/4 v5, 0x2

    .line 169
    invoke-direct {v4, p2, v5}, LA4/o;-><init>(LQ4/d;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v3, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    const-string v3, "com.twitter.android"

    .line 176
    .line 177
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    .line 187
    .line 188
    new-instance v0, LQ4/c;

    .line 189
    .line 190
    invoke-direct {v0, p0, p2, v1}, LQ4/c;-><init>(LQ4/d;LQ4/d;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v2, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    :catch_2
    :try_start_3
    invoke-virtual {p2, p1, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :catch_3
    move-exception p1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    :goto_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 209
    .line 210
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 215
    .line 216
    const-string p2, "twitter_check"

    .line 217
    .line 218
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_5
    sget p2, Lflix/com/vision/R$id;->button_trakt_tv:I

    .line 228
    .line 229
    if-ne p1, p2, :cond_6

    .line 230
    .line 231
    iget-object p1, p0, LQ4/d;->p:Landroid/view/View$OnClickListener;

    .line 232
    .line 233
    if-eqz p1, :cond_f

    .line 234
    .line 235
    iget-object p2, p0, LQ4/d;->C:Landroid/widget/TextView;

    .line 236
    .line 237
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, LQ4/d;->C:Landroid/widget/TextView;

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 243
    .line 244
    .line 245
    return v1

    .line 246
    :cond_6
    sget p2, Lflix/com/vision/R$id;->button_login_:I

    .line 247
    .line 248
    if-ne p1, p2, :cond_7

    .line 249
    .line 250
    iget-object p1, p0, LQ4/d;->j:Landroid/view/View$OnClickListener;

    .line 251
    .line 252
    if-eqz p1, :cond_f

    .line 253
    .line 254
    iget-object p2, p0, LQ4/d;->D:Landroid/widget/TextView;

    .line 255
    .line 256
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, LQ4/d;->D:Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 262
    .line 263
    .line 264
    return v1

    .line 265
    :cond_7
    sget p2, Lflix/com/vision/R$id;->button_watched:I

    .line 266
    .line 267
    if-ne p1, p2, :cond_8

    .line 268
    .line 269
    iget-object p1, p0, LQ4/d;->n:Landroid/view/View$OnClickListener;

    .line 270
    .line 271
    if-eqz p1, :cond_f

    .line 272
    .line 273
    iget-object p2, p0, LQ4/d;->E:Landroid/widget/TextView;

    .line 274
    .line 275
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, LQ4/d;->E:Landroid/widget/TextView;

    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 281
    .line 282
    .line 283
    return v1

    .line 284
    :cond_8
    sget p2, Lflix/com/vision/R$id;->button_check_update:I

    .line 285
    .line 286
    if-ne p1, p2, :cond_9

    .line 287
    .line 288
    iget-object p1, p0, LQ4/d;->m:Landroid/view/View$OnClickListener;

    .line 289
    .line 290
    if-eqz p1, :cond_f

    .line 291
    .line 292
    iget-object p2, p0, LQ4/d;->F:Landroid/widget/TextView;

    .line 293
    .line 294
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, LQ4/d;->F:Landroid/widget/TextView;

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 300
    .line 301
    .line 302
    return v1

    .line 303
    :cond_9
    sget p2, Lflix/com/vision/R$id;->button_adult_zone:I

    .line 304
    .line 305
    if-ne p1, p2, :cond_b

    .line 306
    .line 307
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 312
    .line 313
    const-string p2, "pref_adult_zone_pin_set"

    .line 314
    .line 315
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-nez p1, :cond_a

    .line 320
    .line 321
    new-instance p1, Landroid/content/Intent;

    .line 322
    .line 323
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    const-class p3, Lflix/com/vision/activities/adult/AdultPINSetupActivity;

    .line 328
    .line 329
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 333
    .line 334
    .line 335
    return v1

    .line 336
    :cond_a
    new-instance p1, Landroid/content/Intent;

    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    const-class p3, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 343
    .line 344
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 348
    .line 349
    .line 350
    return v1

    .line 351
    :cond_b
    sget p2, Lflix/com/vision/R$id;->button_restart:I

    .line 352
    .line 353
    if-ne p1, p2, :cond_c

    .line 354
    .line 355
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 360
    .line 361
    .line 362
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lflix/com/vision/App;->restartApp()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 367
    .line 368
    .line 369
    return v1

    .line 370
    :catch_4
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_c
    sget p2, Lflix/com/vision/R$id;->button_user_torrents:I

    .line 376
    .line 377
    if-ne p1, p2, :cond_d

    .line 378
    .line 379
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    .line 380
    .line 381
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    const-class p3, Lflix/com/vision/activities/UserTorrentsActivity;

    .line 386
    .line 387
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 391
    .line 392
    .line 393
    return v1

    .line 394
    :catch_5
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 396
    .line 397
    .line 398
    goto :goto_2

    .line 399
    :cond_d
    sget p2, Lflix/com/vision/R$id;->button_my_playlists:I

    .line 400
    .line 401
    if-ne p1, p2, :cond_e

    .line 402
    .line 403
    iget-object p1, p0, LQ4/d;->q:Landroid/view/View$OnClickListener;

    .line 404
    .line 405
    if-eqz p1, :cond_f

    .line 406
    .line 407
    iget-object p2, p0, LQ4/d;->A:Landroid/widget/TextView;

    .line 408
    .line 409
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, LQ4/d;->A:Landroid/widget/TextView;

    .line 413
    .line 414
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 415
    .line 416
    .line 417
    return v1

    .line 418
    :cond_e
    sget p2, Lflix/com/vision/R$id;->button_import_playlist:I

    .line 419
    .line 420
    if-ne p1, p2, :cond_10

    .line 421
    .line 422
    iget-object p1, p0, LQ4/d;->r:Landroid/view/View$OnClickListener;

    .line 423
    .line 424
    if-eqz p1, :cond_f

    .line 425
    .line 426
    iget-object p2, p0, LQ4/d;->B:Landroid/widget/TextView;

    .line 427
    .line 428
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    .line 430
    .line 431
    iget-object p1, p0, LQ4/d;->B:Landroid/widget/TextView;

    .line 432
    .line 433
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 434
    .line 435
    .line 436
    :cond_f
    :goto_2
    return v1

    .line 437
    :cond_10
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, LQ4/a;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p0, p2}, LQ4/a;-><init>(LQ4/d;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, LQ4/d;->t:LQ4/a;

    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LQ4/d;->s:Landroid/os/Handler;

    .line 18
    .line 19
    :try_start_0
    sget-object p1, LQ4/d;->Z:Lh5/j;

    .line 20
    .line 21
    iget-object p2, p0, LQ4/d;->P:Landroid/widget/TextView;

    .line 22
    .line 23
    sget-object v0, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, LQ4/d;->Z:Lh5/j;

    .line 29
    .line 30
    iget-object p2, p0, LQ4/d;->Q:Landroid/widget/TextView;

    .line 31
    .line 32
    sget-object v0, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, LQ4/d;->Z:Lh5/j;

    .line 38
    .line 39
    iget-object p2, p0, LQ4/d;->R:Landroid/widget/TextView;

    .line 40
    .line 41
    sget-object v0, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, LQ4/d;->Z:Lh5/j;

    .line 47
    .line 48
    iget-object p2, p0, LQ4/d;->O:Landroid/widget/TextView;

    .line 49
    .line 50
    sget-object v0, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 51
    .line 52
    invoke-virtual {p1, p2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, LQ4/d;->Z:Lh5/j;

    .line 56
    .line 57
    iget-object p2, p0, LQ4/d;->N:Landroid/widget/TextView;

    .line 58
    .line 59
    sget-object v0, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, LQ4/d;->K:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroid/os/Handler;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance p2, LQ4/a;

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    invoke-direct {p2, p0, v0}, LQ4/a;-><init>(LQ4/d;I)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v0, 0x64

    .line 81
    .line 82
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    iget-boolean p1, p0, LQ4/d;->u:Z

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, LQ4/d;->N:Landroid/widget/TextView;

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, LQ4/d;->O:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, LQ4/d;->x:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, LQ4/d;->y:Landroid/widget/LinearLayout;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 125
    .line 126
    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    .line 132
    iget-boolean p1, p0, LQ4/d;->X:Z

    .line 133
    .line 134
    if-eqz p1, :cond_1

    .line 135
    .line 136
    iget-object p1, p0, LQ4/d;->s:Landroid/os/Handler;

    .line 137
    .line 138
    iget-object p2, p0, LQ4/d;->t:LQ4/a;

    .line 139
    .line 140
    const-wide/16 v0, 0x2710

    .line 141
    .line 142
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .line 144
    .line 145
    :cond_1
    return-void
.end method

.method public setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->U:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, LQ4/d;->b:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    return-void
.end method

.method public setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->V:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, LQ4/d;->e:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    return-void
.end method

.method public setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->W:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, LQ4/d;->f:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    return-void
.end method

.method public setButton_check_update_listener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->m:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setButton_contact_us_listener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setImport_Playlist_listener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->r:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setListener_login(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->j:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setListener_watched(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->n:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMenuMode()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, LQ4/d;->b0:Z

    .line 3
    .line 4
    iput-boolean v0, p0, LQ4/d;->u:Z

    .line 5
    .line 6
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->T:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMyplaylist_listener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->S:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTrakt_listener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ4/d;->p:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setloading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LQ4/d;->X:Z

    .line 3
    .line 4
    return-void
.end method
