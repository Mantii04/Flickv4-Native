.class public final synthetic Lflix/com/vision/subtitles/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/subtitles/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/subtitles/f;->a:I

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->b(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->f(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
