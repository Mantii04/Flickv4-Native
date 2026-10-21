.class public final Lr2/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# static fields
.field public static final b:Ljava/util/Set;


# instance fields
.field public final a:Lr2/V;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "http"

    .line 4
    .line 5
    const-string v2, "https"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lr2/B0;->b:Ljava/util/Set;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lr2/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/V;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/B0;->a:Lr2/V;

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
    new-instance v0, Lr2/I;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lr2/I;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lr2/B0;->a:Lr2/V;

    invoke-interface {p1, v0, p2, p3, p4}, Lr2/V;->buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lr2/B0;->buildLoadData(Landroid/net/Uri;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 1

    .line 2
    sget-object v0, Lr2/B0;->b:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lr2/B0;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
