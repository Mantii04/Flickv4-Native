.class public final Lr2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr2/y;)V
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
    iput-object p1, p0, Lr2/z;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lr2/z;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public static assetFileDescriptorFactory(Landroid/content/Context;)Lr2/W;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lr2/W;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr2/u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr2/u;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static drawableFactory(Landroid/content/Context;)Lr2/W;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lr2/W;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr2/v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr2/v;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static inputStreamFactory(Landroid/content/Context;)Lr2/W;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lr2/W;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr2/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr2/w;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Integer;IILl2/q;)Lr2/U;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II",
            "Ll2/q;",
            ")",
            "Lr2/U;"
        }
    .end annotation

    .line 2
    sget-object p2, Lw2/h;->b:Ll2/p;

    invoke-virtual {p4, p2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Resources$Theme;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lr2/z;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 5
    :goto_0
    new-instance p4, Lr2/U;

    new-instance v0, LF2/d;

    invoke-direct {v0, p1}, LF2/d;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lr2/x;

    iget-object v2, p0, Lr2/z;->b:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p2, p3, v2, p1}, Lr2/x;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lr2/y;I)V

    invoke-direct {p4, v0, v1}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    return-object p4
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lr2/z;->buildLoadData(Ljava/lang/Integer;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/lang/Integer;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lr2/z;->handles(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
