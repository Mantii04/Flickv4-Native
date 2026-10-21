.class public final Lj6/h;
.super Lorg/jsoup/nodes/b;
.source "SourceFile"


# instance fields
.field public r:Lorg/jsoup/nodes/a;

.field public s:Lorg/jsoup/nodes/Document$QuirksMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "#root"

    .line 2
    .line 3
    sget-object v1, Lk6/d;->c:Lk6/d;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lorg/jsoup/nodes/a;

    .line 13
    .line 14
    invoke-direct {p1}, Lorg/jsoup/nodes/a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lj6/h;->r:Lorg/jsoup/nodes/a;

    .line 18
    .line 19
    sget-object p1, Lorg/jsoup/nodes/Document$QuirksMode;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 20
    .line 21
    iput-object p1, p0, Lj6/h;->s:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 22
    .line 23
    return-void
.end method

.method public static f(Lj6/p;)Lorg/jsoup/nodes/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj6/p;->nodeName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "body"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lorg/jsoup/nodes/b;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lj6/p;->childNodeSize()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lj6/p;->childNode(I)Lj6/p;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lj6/h;->f(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method


# virtual methods
.method public body()Lorg/jsoup/nodes/b;
    .locals 1

    .line 1
    invoke-static {p0}, Lj6/h;->f(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public clone()Lj6/h;
    .locals 2

    .line 4
    invoke-super {p0}, Lorg/jsoup/nodes/b;->clone()Lorg/jsoup/nodes/b;

    move-result-object v0

    check-cast v0, Lj6/h;

    .line 5
    iget-object v1, p0, Lj6/h;->r:Lorg/jsoup/nodes/a;

    invoke-virtual {v1}, Lorg/jsoup/nodes/a;->clone()Lorg/jsoup/nodes/a;

    move-result-object v1

    iput-object v1, v0, Lj6/h;->r:Lorg/jsoup/nodes/a;

    return-object v0
.end method

.method public bridge synthetic clone()Lj6/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj6/h;->clone()Lj6/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lj6/h;->clone()Lj6/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lj6/h;->clone()Lj6/h;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "#document"

    .line 2
    .line 3
    return-object v0
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/nodes/b;->html()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public outputSettings()Lorg/jsoup/nodes/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/h;->r:Lorg/jsoup/nodes/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lj6/h;
    .locals 0

    .line 2
    iput-object p1, p0, Lj6/h;->s:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/h;->s:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method
