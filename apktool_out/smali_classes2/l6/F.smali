.class public final Ll6/F;
.super Ll6/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ll6/u;-><init>(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public calculatePosition(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/b;->elementSiblingIndex()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    return p1
.end method

.method public getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "nth-child"

    .line 2
    .line 3
    return-object v0
.end method
