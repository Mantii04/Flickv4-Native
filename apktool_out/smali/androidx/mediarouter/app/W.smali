.class public final Landroidx/mediarouter/app/W;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/m0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/W;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/W;->a:Landroidx/mediarouter/app/m0;

    .line 10
    .line 11
    iput-object p1, v0, Landroidx/mediarouter/app/m0;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/mediarouter/app/m0;->c()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/mediarouter/app/m0;->f()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/W;->a:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/m0;->S:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/mediarouter/app/m0;->T:Landroidx/mediarouter/app/W;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Landroidx/mediarouter/app/m0;->S:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 14
    .line 15
    :cond_0
    return-void
.end method
