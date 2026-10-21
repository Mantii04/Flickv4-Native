.class public final Ls2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr2/V;

.field public final c:Lr2/V;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr2/V;Lr2/V;Ljava/lang/Class;)V
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
    iput-object p1, p0, Ls2/k;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Ls2/k;->b:Lr2/V;

    .line 11
    .line 12
    iput-object p3, p0, Ls2/k;->c:Lr2/V;

    .line 13
    .line 14
    iput-object p4, p0, Ls2/k;->d:Ljava/lang/Class;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILl2/q;)Lr2/U;
    .locals 11
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
    new-instance v0, Lr2/U;

    new-instance v1, LF2/d;

    invoke-direct {v1, p1}, LF2/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ls2/j;

    iget-object v3, p0, Ls2/k;->a:Landroid/content/Context;

    iget-object v4, p0, Ls2/k;->b:Lr2/V;

    iget-object v5, p0, Ls2/k;->c:Lr2/V;

    iget-object v10, p0, Ls2/k;->d:Ljava/lang/Class;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v10}, Ls2/j;-><init>(Landroid/content/Context;Lr2/V;Lr2/V;Landroid/net/Uri;IILl2/q;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    return-object v0
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Ls2/k;->buildLoadData(Landroid/net/Uri;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lm2/b;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ls2/k;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
