.class public final Lc4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lc4/f;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lc4/a;-><init>()V

    invoke-virtual {p1}, Lc4/f;->d()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lc4/f;->d()C

    move-result v0

    const-string v1, "Expected a \',\' or \']\'"

    if-eqz v0, :cond_7

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_6

    :cond_0
    invoke-virtual {p1}, Lc4/f;->a()V

    invoke-virtual {p1}, Lc4/f;->d()C

    move-result v0

    const/16 v3, 0x2c

    invoke-virtual {p1}, Lc4/f;->a()V

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    sget-object v4, Lc4/b;->c:Lc4/c;

    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lc4/f;->e()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lc4/f;->d()C

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p1}, Lc4/f;->d()C

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_5
    invoke-virtual {p1, v1}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-virtual {p1, v1}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_8
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lc4/a;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "JSONArray initial value should be a string or collection or array."

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    iget-object v2, p0, Lc4/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc4/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc4/a;->a(Ljava/lang/Object;)Lc4/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lc4/a;

    if-eqz v0, :cond_1

    check-cast p1, Lc4/a;

    iget-object p1, p1, Lc4/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lc4/a;->b(Ljava/util/Collection;)V

    return-void

    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc4/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc4/a;->a(Ljava/lang/Object;)Lc4/a;

    goto :goto_1

    :cond_3
    return-void

    .line 5
    :cond_4
    new-instance p1, Lcom/imsdk/a/a/a/b;

    invoke-direct {p1, v1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_5
    new-instance p1, Lcom/imsdk/a/a/a/b;

    invoke-direct {p1, v1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc4/a;->b:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lc4/a;->b(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Lc4/a;
    .locals 1

    .line 2
    invoke-static {p1}, Lc4/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 7

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lc4/a;->a()I

    move-result v0

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lc4/a;->b:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lc4/b;->e(Ljava/io/Writer;Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/imsdk/a/a/a/b;

    const-string p3, "Unable to write JSONArray value at index: 0"

    invoke-direct {p2, p3, p1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_5

    add-int v4, p3, p2

    move v5, v3

    :goto_0
    const/16 v6, 0xa

    if-ge v3, v0, :cond_3

    if-eqz v5, :cond_1

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    :cond_1
    if-lez p2, :cond_2

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    :cond_2
    invoke-static {v4, p1}, Lc4/b;->d(ILjava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5, p2, v4}, Lc4/b;->e(Ljava/io/Writer;Ljava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v3, v3, 0x1

    move v5, v2

    goto :goto_0

    :catch_2
    move-exception p1

    :try_start_4
    new-instance p2, Lcom/imsdk/a/a/a/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to write JSONArray value at index: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    if-lez p2, :cond_4

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    :cond_4
    invoke-static {p3, p1}, Lc4/b;->d(ILjava/io/Writer;)V

    :cond_5
    :goto_1
    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    :goto_2
    new-instance p2, Lcom/imsdk/a/a/a/b;

    invoke-direct {p2, p1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lc4/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/imsdk/a/a/a/b;

    const-string v1, "JSONArray["

    const-string v2, "] not found."

    .line 4
    invoke-static {p1, v1, v2}, LA/i;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lc4/a;->c(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lc4/b;->c:Lc4/c;

    invoke-virtual {v0, p1}, Lc4/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lc4/b;
    .locals 6

    invoke-virtual {p0, p1}, Lc4/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lc4/b;

    if-eqz v1, :cond_0

    check-cast v0, Lc4/b;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    const-string v2, "JSONArray["

    if-eqz v0, :cond_3

    instance-of v3, v0, Ljava/util/Map;

    const-string v4, "] is not a JSONObject ("

    const-string v5, ")."

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/lang/Iterable;

    if-nez v3, :cond_2

    instance-of v3, v0, Lc4/b;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/imsdk/a/a/a/b;

    .line 3
    invoke-static {p1, v2, v4}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v3, Lcom/imsdk/a/a/a/b;

    .line 5
    invoke-static {p1, v2, v4}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/imsdk/a/a/a/b;

    const-string v0, "] is not a JSONObject (null)."

    .line 7
    invoke-static {p1, v2, v0}, LA/i;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v3, p1, v1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_1
    throw v3
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc4/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc4/a;->a(Ljava/lang/Object;)Lc4/a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lc4/a;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lc4/a;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, p1, v1}, Lc4/a;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lc4/a;->e(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object v0

    .line 7
    :catch_0
    const/4 v0, 0x0

    .line 8
    return-object v0
.end method
