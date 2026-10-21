.class public final synthetic Landroidx/media3/common/audio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Landroidx/media3/common/audio/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioFocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/b;->a:Landroidx/media3/common/audio/AudioFocusManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/b;->a:Landroidx/media3/common/audio/AudioFocusManager;

    invoke-static {v0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->a(Landroidx/media3/common/audio/AudioFocusManager;I)V

    return-void
.end method
