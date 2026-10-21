.class public final Lr2/P;
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
    iput-object p1, p0, Lr2/P;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILl2/q;)Lr2/U;
    .locals 1
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
    new-instance p2, Lr2/U;

    new-instance p3, LF2/d;

    invoke-direct {p3, p1}, LF2/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lr2/O;

    iget-object v0, p0, Lr2/P;->a:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, Lr2/O;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lr2/P;->buildLoadData(Landroid/net/Uri;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lm2/b;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lr2/P;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
