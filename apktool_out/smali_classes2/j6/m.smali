.class public abstract Lj6/m;
.super Lj6/p;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/List;


# instance fields
.field public f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    sput-object v0, Lj6/m;->j:Ljava/util/List;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj6/m;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lj6/p;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lj6/p;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lj6/m;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj6/p;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object p2, p0, Lj6/m;->f:Ljava/lang/Object;

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lj6/m;->d()V

    .line 8
    invoke-super {p0, p1, p2}, Lj6/p;->attr(Ljava/lang/String;Ljava/lang/String;)Lj6/p;

    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lj6/m;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lj6/p;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj6/m;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final attributes()Lj6/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj6/m;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj6/m;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lj6/c;

    .line 7
    .line 8
    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj6/p;->hasParent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj6/p;->parent()Lj6/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lj6/p;->baseUri()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj6/p;->nodeName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lj6/m;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public childNodeSize()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj6/m;->hasAttributes()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lj6/m;->f:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v1, Lj6/c;

    .line 10
    .line 11
    invoke-direct {v1}, Lj6/c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lj6/m;->f:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lj6/p;->nodeName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lj6/c;->put(Ljava/lang/String;Ljava/lang/String;)Lj6/c;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public doSetBaseUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public ensureChildNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj6/p;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lj6/m;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj6/m;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final hasAttributes()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/m;->f:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Lj6/c;

    .line 4
    .line 5
    return v0
.end method
