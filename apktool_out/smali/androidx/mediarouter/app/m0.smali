.class public final Landroidx/mediarouter/app/m0;
.super Le/c0;
.source "SourceFile"


# static fields
.field public static final synthetic c0:I


# instance fields
.field public final A:Landroidx/mediarouter/app/S;

.field public B:Landroidx/recyclerview/widget/RecyclerView;

.field public C:Landroidx/mediarouter/app/j0;

.field public D:Landroidx/mediarouter/app/l0;

.field public E:Ljava/util/HashMap;

.field public F:Lf1/U;

.field public G:Ljava/util/HashMap;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Landroid/widget/ImageButton;

.field public L:Landroid/widget/Button;

.field public M:Landroid/widget/ImageView;

.field public N:Landroid/view/View;

.field public O:Landroid/widget/ImageView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Ljava/lang/String;

.field public S:Landroid/support/v4/media/session/MediaControllerCompat;

.field public final T:Landroidx/mediarouter/app/W;

.field public U:Landroid/support/v4/media/MediaDescriptionCompat;

.field public V:Landroidx/mediarouter/app/V;

.field public W:Landroid/graphics/Bitmap;

.field public X:Landroid/net/Uri;

.field public Y:Z

.field public Z:Landroid/graphics/Bitmap;

.field public a0:I

.field public final b0:Z

.field public final n:Lf1/X;

.field public final p:Landroidx/mediarouter/app/Z;

.field public q:Lf1/L;

.field public r:Lf1/U;

.field public final s:Ljava/util/ArrayList;

.field public final t:Ljava/util/ArrayList;

.field public final u:Ljava/util/ArrayList;

.field public final v:Ljava/util/ArrayList;

.field public final w:Landroid/content/Context;

.field public x:Z

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaRouteCtrlDialog"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/m0;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/o0;->a(Landroid/content/Context;IZ)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    .line 3
    sget p2, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p1, p2}, Landroidx/mediarouter/app/o0;->g(Landroid/content/Context;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/mediarouter/app/o0;->e(Landroid/content/Context;)I

    move-result p2

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Le/c0;-><init>(Landroid/content/Context;I)V

    .line 6
    sget-object p1, Lf1/L;->c:Lf1/L;

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->q:Lf1/L;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->s:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->t:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->u:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->v:Ljava/util/ArrayList;

    .line 11
    new-instance p1, Landroidx/mediarouter/app/S;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/S;-><init>(Landroidx/mediarouter/app/m0;)V

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->A:Landroidx/mediarouter/app/S;

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Lf1/X;->getInstance(Landroid/content/Context;)Lf1/X;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 14
    invoke-static {}, Lf1/X;->isGroupVolumeUxEnabled()Z

    move-result p2

    iput-boolean p2, p0, Landroidx/mediarouter/app/m0;->b0:Z

    .line 15
    new-instance p2, Landroidx/mediarouter/app/Z;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/Z;-><init>(Landroidx/mediarouter/app/m0;)V

    iput-object p2, p0, Landroidx/mediarouter/app/m0;->p:Landroidx/mediarouter/app/Z;

    .line 16
    invoke-virtual {p1}, Lf1/X;->getSelectedRoute()Lf1/U;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 17
    new-instance p2, Landroidx/mediarouter/app/W;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/W;-><init>(Landroidx/mediarouter/app/m0;)V

    iput-object p2, p0, Landroidx/mediarouter/app/m0;->T:Landroidx/mediarouter/app/W;

    .line 18
    invoke-virtual {p1}, Lf1/X;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/m0;->d(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->V:Landroidx/mediarouter/app/V;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/mediarouter/app/m0;->W:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v3, v2, Landroidx/mediarouter/app/V;->a:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :goto_2
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->X:Landroid/net/Uri;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    iget-object v2, v2, Landroidx/mediarouter/app/V;->b:Landroid/net/Uri;

    .line 36
    .line 37
    :goto_3
    if-ne v3, v0, :cond_5

    .line 38
    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    invoke-static {v2, v1}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    :cond_4
    return-void

    .line 48
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->V:Landroidx/mediarouter/app/V;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 54
    .line 55
    .line 56
    :cond_6
    new-instance v0, Landroidx/mediarouter/app/V;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/V;-><init>(Landroidx/mediarouter/app/m0;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->V:Landroidx/mediarouter/app/V;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    new-array v1, v1, [Ljava/lang/Void;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final d(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->S:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->T:Landroidx/mediarouter/app/W;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Landroidx/mediarouter/app/m0;->S:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->y:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v3, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->S:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/mediarouter/app/m0;->S:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_1
    iput-object v2, p0, Landroidx/mediarouter/app/m0;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->c()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->f()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/mediarouter/app/G;->getDialogWidthForDynamicGroup(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0}, Landroidx/mediarouter/app/G;->getDialogHeight(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->W:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->X:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->c()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->f()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->h()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final f()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->F:Lf1/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->H:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->x:Z

    .line 12
    .line 13
    xor-int/2addr v0, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move v0, v1

    .line 16
    :goto_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/mediarouter/app/m0;->J:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Landroidx/mediarouter/app/m0;->J:Z

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 25
    .line 26
    invoke-virtual {v2}, Lf1/U;->isSelected()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 33
    .line 34
    invoke-virtual {v2}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    :cond_3
    invoke-virtual {p0}, Le/c0;->dismiss()V

    .line 41
    .line 42
    .line 43
    :cond_4
    iget-boolean v2, p0, Landroidx/mediarouter/app/m0;->Y:Z

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/16 v4, 0x8

    .line 47
    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->Z:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->Z:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->O:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->O:Landroid/widget/ImageView;

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/mediarouter/app/m0;->Z:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->O:Landroid/widget/ImageView;

    .line 78
    .line 79
    iget v5, p0, Landroidx/mediarouter/app/m0;->a0:I

    .line 80
    .line 81
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->N:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->Z:Landroid/graphics/Bitmap;

    .line 90
    .line 91
    iget-object v5, p0, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v5}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v5, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {v5, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v5}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-static {v5, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    const/high16 v9, 0x41200000    # 10.0f

    .line 118
    .line 119
    invoke-virtual {v8, v9}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v2, v9, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8}, Landroid/renderscript/BaseObj;->destroy()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/renderscript/RenderScript;->destroy()V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->M:Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_6
    :goto_2
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->Z:Landroid/graphics/Bitmap;

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, "Can\'t set artwork image with recycled bitmap: "

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->Z:Landroid/graphics/Bitmap;

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v2, "MediaRouteCtrlDialog"

    .line 184
    .line 185
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_7
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->O:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->N:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->M:Landroid/widget/ImageView;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    .line 202
    .line 203
    :goto_3
    iput-boolean v0, p0, Landroidx/mediarouter/app/m0;->Y:Z

    .line 204
    .line 205
    iput-object v3, p0, Landroidx/mediarouter/app/m0;->Z:Landroid/graphics/Bitmap;

    .line 206
    .line 207
    iput v0, p0, Landroidx/mediarouter/app/m0;->a0:I

    .line 208
    .line 209
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 210
    .line 211
    if-nez v1, :cond_8

    .line 212
    .line 213
    move-object v1, v3

    .line 214
    goto :goto_4

    .line 215
    :cond_8
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    iget-object v5, p0, Landroidx/mediarouter/app/m0;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 224
    .line 225
    if-nez v5, :cond_9

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-nez v2, :cond_a

    .line 237
    .line 238
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->P:Landroid/widget/TextView;

    .line 239
    .line 240
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_a
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->P:Landroid/widget/TextView;

    .line 245
    .line 246
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->R:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    :goto_6
    if-nez v5, :cond_b

    .line 252
    .line 253
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->Q:Landroid/widget/TextView;

    .line 254
    .line 255
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->Q:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_b
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->Q:Landroid/widget/TextView;

    .line 265
    .line 266
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->t:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->u:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 17
    .line 18
    invoke-virtual {v3}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 26
    .line 27
    invoke-virtual {v3}, Lf1/U;->getProvider()Lf1/S;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lf1/S;->getRoutes()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lf1/U;

    .line 50
    .line 51
    iget-object v5, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v5}, Lf1/T;->isGroupable()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v5}, Lf1/T;->isTransferable()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_0

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/m0;->onFilterRoutes(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Landroidx/mediarouter/app/m0;->onFilterRoutes(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    sget-object v3, Landroidx/mediarouter/app/k0;->b:Landroidx/mediarouter/app/k0;

    .line 86
    .line 87
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->C:Landroidx/mediarouter/app/j0;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/mediarouter/app/j0;->d()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Landroidx/mediarouter/app/m0;->z:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x12c

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ltz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->F:Lf1/U;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->H:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->x:Z

    .line 29
    .line 30
    xor-int/2addr v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move v0, v1

    .line 33
    :goto_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iput-boolean v1, p0, Landroidx/mediarouter/app/m0;->I:Z

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Landroidx/mediarouter/app/m0;->I:Z

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 42
    .line 43
    invoke-virtual {v0}, Lf1/U;->isSelected()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 50
    .line 51
    invoke-virtual {v0}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Le/c0;->dismiss()V

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iput-wide v0, p0, Landroidx/mediarouter/app/m0;->z:J

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->C:Landroidx/mediarouter/app/j0;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/mediarouter/app/j0;->c()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->A:Landroidx/mediarouter/app/S;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    .line 76
    .line 77
    iget-wide v4, p0, Landroidx/mediarouter/app/m0;->z:J

    .line 78
    .line 79
    add-long/2addr v4, v2

    .line 80
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 81
    .line 82
    .line 83
    :cond_6
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->J:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->f()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/m0;->y:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->q:Lf1/L;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->p:Landroidx/mediarouter/app/Z;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 12
    .line 13
    invoke-virtual {v3, v1, v2, v0}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->g()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lf1/X;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/m0;->d(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Le/c0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroidx/mediarouter/R$layout;->mr_cast_dialog:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/c0;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 10
    .line 11
    sget v0, Landroidx/mediarouter/app/o0;->a:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Landroidx/mediarouter/app/o0;->h(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget v1, Landroidx/mediarouter/R$color;->mr_dynamic_dialog_background_light:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v1, Landroidx/mediarouter/R$color;->mr_dynamic_dialog_background_dark:I

    .line 31
    .line 32
    :goto_0
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_close_button:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/ImageButton;

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->K:Landroid/widget/ImageButton;

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->K:Landroid/widget/ImageButton;

    .line 54
    .line 55
    new-instance v2, Landroidx/mediarouter/app/T;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Landroidx/mediarouter/app/T;-><init>(Landroidx/mediarouter/app/m0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_stop_button:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/Button;

    .line 70
    .line 71
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->L:Landroid/widget/Button;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->L:Landroid/widget/Button;

    .line 77
    .line 78
    new-instance v2, Landroidx/mediarouter/app/U;

    .line 79
    .line 80
    invoke-direct {v2, p0}, Landroidx/mediarouter/app/U;-><init>(Landroidx/mediarouter/app/m0;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Landroidx/mediarouter/app/j0;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/j0;-><init>(Landroidx/mediarouter/app/m0;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->C:Landroidx/mediarouter/app/j0;

    .line 92
    .line 93
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_list:I

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    iget-object v2, p0, Landroidx/mediarouter/app/m0;->C:Landroidx/mediarouter/app/j0;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    .line 110
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 111
    .line 112
    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroidx/mediarouter/app/l0;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/l0;-><init>(Landroidx/mediarouter/app/m0;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->D:Landroidx/mediarouter/app/l0;

    .line 124
    .line 125
    new-instance v0, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->E:Ljava/util/HashMap;

    .line 131
    .line 132
    new-instance v0, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->G:Ljava/util/HashMap;

    .line 138
    .line 139
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_background:I

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .line 147
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->M:Landroid/widget/ImageView;

    .line 148
    .line 149
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_black_scrim:I

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->N:Landroid/view/View;

    .line 156
    .line 157
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_art:I

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/ImageView;

    .line 164
    .line 165
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->O:Landroid/widget/ImageView;

    .line 166
    .line 167
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_title:I

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->P:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    .line 179
    .line 180
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_subtitle:I

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Le/c0;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Landroid/widget/TextView;

    .line 187
    .line 188
    iput-object v0, p0, Landroidx/mediarouter/app/m0;->Q:Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_dialog_title_view_placeholder:I

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iput-object p1, p0, Landroidx/mediarouter/app/m0;->R:Ljava/lang/String;

    .line 204
    .line 205
    const/4 p1, 0x1

    .line 206
    iput-boolean p1, p0, Landroidx/mediarouter/app/m0;->x:Z

    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->e()V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/m0;->y:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->p:Landroidx/mediarouter/app/Z;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->A:Landroidx/mediarouter/app/S;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/m0;->d(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onFilterRoute(Lf1/U;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lf1/U;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->q:Lf1/L;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lf1/U;->matchesSelector(Lf1/L;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 22
    .line 23
    if-eq v0, p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf1/U;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lf1/U;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/m0;->onFilterRoute(Lf1/U;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public setRouteSelector(Lf1/L;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->q:Lf1/L;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lf1/L;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/app/m0;->q:Lf1/L;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/mediarouter/app/m0;->y:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/m0;->n:Lf1/X;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/mediarouter/app/m0;->p:Landroidx/mediarouter/app/Z;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Lf1/X;->addCallback(Lf1/L;Lf1/M;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/mediarouter/app/m0;->g()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "selector must not be null"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method
