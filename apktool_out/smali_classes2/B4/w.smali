.class public final synthetic LB4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/models/VideoSource;


# direct methods
.method public synthetic constructor <init>(ILflix/com/vision/models/VideoSource;)V
    .locals 0

    .line 1
    iput p1, p0, LB4/w;->b:I

    iput-object p2, p0, LB4/w;->e:Lflix/com/vision/models/VideoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, LB4/w;->e:Lflix/com/vision/models/VideoSource;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/MainActivity;

    .line 4
    .line 5
    iget v2, p0, LB4/w;->b:I

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Throwable;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v2, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v0, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    sget-boolean v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v0, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
