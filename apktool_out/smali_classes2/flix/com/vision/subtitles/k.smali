.class public final synthetic Lflix/com/vision/subtitles/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/subtitles/k;->b:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    iput-object p2, p0, Lflix/com/vision/subtitles/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/subtitles/k;->b:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    iget-object v1, p0, Lflix/com/vision/subtitles/k;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->i(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
