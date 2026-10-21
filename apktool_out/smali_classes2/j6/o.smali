.class public final Lj6/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/V;


# instance fields
.field public a:Ljava/lang/Appendable;

.field public b:Lorg/jsoup/nodes/a;


# virtual methods
.method public head(Lj6/p;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lj6/o;->a:Ljava/lang/Appendable;

    .line 2
    .line 3
    iget-object v1, p0, Lj6/o;->b:Lorg/jsoup/nodes/a;

    .line 4
    .line 5
    invoke-virtual {p1, v0, p2, v1}, Lj6/p;->a(Ljava/lang/Appendable;ILorg/jsoup/nodes/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lorg/jsoup/SerializationException;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw p2
.end method

.method public tail(Lj6/p;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lj6/p;->nodeName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "#text"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lj6/o;->a:Ljava/lang/Appendable;

    .line 14
    .line 15
    iget-object v1, p0, Lj6/o;->b:Lorg/jsoup/nodes/a;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2, v1}, Lj6/p;->b(Ljava/lang/Appendable;ILorg/jsoup/nodes/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Lorg/jsoup/SerializationException;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p2

    .line 28
    :cond_0
    return-void
.end method
