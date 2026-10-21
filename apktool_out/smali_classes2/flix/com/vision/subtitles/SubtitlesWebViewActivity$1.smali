.class Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;->this$0:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;->this$0:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->info_layout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;->this$0:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    .line 15
    .line 16
    iget-object p1, p1, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->loader:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;->this$0:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    .line 24
    .line 25
    iget-object p1, p1, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->poster_yt:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;->this$0:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    .line 31
    .line 32
    iget-object p1, p1, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;->this$0:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    .line 38
    .line 39
    invoke-virtual {p1}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->showDialogHelp()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
