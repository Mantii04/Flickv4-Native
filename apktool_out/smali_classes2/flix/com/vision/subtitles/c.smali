.class public final synthetic Lflix/com/vision/subtitles/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/subtitles/c;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lflix/com/vision/subtitles/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/subtitles/c;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lflix/com/vision/subtitles/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->e(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
