.class public final Ls2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ls2/d;->a:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILl2/q;)Lr2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Ll2/q;",
            ")",
            "Lr2/U;"
        }
    .end annotation

    .line 2
    invoke-static {p2, p3}, Lm2/b;->isThumbnailSize(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lr2/U;

    new-instance p3, LF2/d;

    invoke-direct {p3, p1}, LF2/d;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Ls2/d;->a:Landroid/content/Context;

    invoke-static {p4, p1}, Lm2/e;->buildImageFetcher(Landroid/content/Context;Landroid/net/Uri;)Lm2/e;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Ls2/d;->buildLoadData(Landroid/net/Uri;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lm2/b;->isMediaStoreImageUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ls2/d;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
