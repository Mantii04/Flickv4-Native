.class public final synthetic Lflix/com/vision/subtitles/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/subtitles/e;->a:[Ljava/lang/String;

    iput-object p2, p0, Lflix/com/vision/subtitles/e;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lflix/com/vision/subtitles/e;->a:[Ljava/lang/String;

    iget-object v1, p0, Lflix/com/vision/subtitles/e;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->g([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method
