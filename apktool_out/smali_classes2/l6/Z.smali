.class public final Ll6/Z;
.super Ll6/f0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ll6/S;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll6/S;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll6/f0;->a:Ll6/S;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/b;->parent()Lorg/jsoup/nodes/b;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Ll6/f0;->a:Ll6/S;

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Ll6/S;->matches(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ll6/f0;->a:Ll6/S;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v0, v1, v2

    .line 8
    .line 9
    const-string v0, ":ImmediateParent%s"

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
