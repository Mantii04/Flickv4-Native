.class public abstract Lcom/twitter/serial/serializer/a;
.super Lcom/twitter/serial/serializer/c;
.source "SourceFile"


# static fields
.field public static final DEFAULT_VERSION:S = 0x0s

.field public static final NOT_NULL_OBJECT:B = 0x1t

.field public static final NULL_OBJECT:B


# instance fields
.field protected final mVersionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/twitter/serial/serializer/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/twitter/serial/serializer/a;->mVersionNumber:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/twitter/serial/serializer/b;Lt4/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/serial/serializer/b;",
            "Lt4/a;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lu4/b;->readNullIndicator(Lt4/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    throw p2
.end method

.method public final serialize(Lcom/twitter/serial/serializer/b;Lt4/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/serial/serializer/b;",
            "Lt4/b;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lu4/b;->writeNullIndicator(Lt4/b;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/twitter/serial/serializer/b;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    throw p2

    .line 15
    :cond_0
    throw p2

    .line 16
    :cond_1
    return-void
.end method
