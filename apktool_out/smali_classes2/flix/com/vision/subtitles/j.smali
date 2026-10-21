.class public final synthetic Lflix/com/vision/subtitles/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/subtitles/j;->b:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/subtitles/j;->b:Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    invoke-static {v0, p1}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->j(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;Landroid/view/View;)V

    return-void
.end method
