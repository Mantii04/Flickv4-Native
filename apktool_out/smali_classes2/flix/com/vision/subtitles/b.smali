.class public final synthetic Lflix/com/vision/subtitles/b;
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
    iput p2, p0, Lflix/com/vision/subtitles/b;->b:I

    iput-object p1, p0, Lflix/com/vision/subtitles/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/subtitles/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lflix/com/vision/subtitles/b;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lflix/com/vision/subtitles/SubDownloadExtended;->a(Landroid/content/Context;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/subtitles/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lflix/com/vision/subtitles/SubDownloadExtended;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
