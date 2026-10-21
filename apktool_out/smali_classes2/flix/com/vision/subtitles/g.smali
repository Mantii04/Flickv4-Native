.class public final synthetic Lflix/com/vision/subtitles/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Landroid/webkit/WebView;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lflix/com/vision/subtitles/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/subtitles/g;->e:Landroid/webkit/WebView;

    iput-object p2, p0, Lflix/com/vision/subtitles/g;->f:Ljava/lang/Object;

    iput-object p3, p0, Lflix/com/vision/subtitles/g;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lflix/com/vision/subtitles/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/subtitles/g;->f:Ljava/lang/Object;

    iput-object p2, p0, Lflix/com/vision/subtitles/g;->j:Ljava/lang/Object;

    iput-object p3, p0, Lflix/com/vision/subtitles/g;->e:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lflix/com/vision/subtitles/g;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lflix/com/vision/subtitles/g;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lflix/com/vision/subtitles/g;->j:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lflix/com/vision/subtitles/g;->e:Landroid/webkit/WebView;

    invoke-static {v2, v0, v1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->d(Landroid/webkit/WebView;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/subtitles/g;->j:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lflix/com/vision/subtitles/g;->f:Ljava/lang/Object;

    check-cast v1, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;

    iget-object v2, p0, Lflix/com/vision/subtitles/g;->e:Landroid/webkit/WebView;

    invoke-static {v1, v0, v2}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->c(Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
