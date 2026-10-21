.class public final synthetic Landroidx/media3/common/audio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/common/audio/a;->b:I

    iput-object p1, p0, Landroidx/media3/common/audio/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/audio/a;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-static {v0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->a(Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/audio/a;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    invoke-static {v0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->b(Landroidx/media3/common/audio/AudioBecomingNoisyManager;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/audio/a;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    invoke-static {v0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a(Landroidx/media3/common/audio/AudioBecomingNoisyManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
