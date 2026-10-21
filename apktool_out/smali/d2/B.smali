.class public final Ld2/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/H;


# static fields
.field public static final a:Ld2/B;

.field public static final b:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ld2/B;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld2/B;->a:Ld2/B;

    .line 7
    .line 8
    const-string v0, "i"

    .line 9
    .line 10
    const-string v1, "o"

    .line 11
    .line 12
    const-string v2, "c"

    .line 13
    .line 14
    const-string v3, "v"

    .line 15
    .line 16
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Ld2/B;->b:Le2/a;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/a;F)La2/k;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move v4, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 6
    sget-object v5, Ld2/B;->b:Le2/a;

    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 8
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1, p2}, Ld2/p;->c(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p1, p2}, Ld2/p;->c(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p1, p2}, Ld2/p;->c(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    move-result v4

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 14
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p2

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p2, v5, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    :cond_6
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    new-instance p1, La2/k;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p1, p2, v1, v0}, La2/k;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object p1

    .line 18
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v6

    :goto_1
    if-ge v7, p1, :cond_8

    .line 21
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    add-int/lit8 v9, v7, -0x1

    .line 22
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 23
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 24
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 25
    invoke-static {v10, v9}, Lf2/g;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 26
    invoke-static {v8, v11}, Lf2/g;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    .line 27
    new-instance v11, LY1/a;

    invoke-direct {v11, v9, v10, v8}, LY1/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    sub-int/2addr p1, v6

    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 30
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 32
    invoke-static {v0, p1}, Lf2/g;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 33
    invoke-static {v7, v1}, Lf2/g;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 34
    new-instance v1, LY1/a;

    invoke-direct {v1, p1, v0, v7}, LY1/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_9
    new-instance p1, La2/k;

    invoke-direct {p1, p2, v4, v5}, La2/k;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object p1

    .line 36
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Shape data was missing information."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ld2/B;->parse(Lcom/airbnb/lottie/parser/moshi/a;F)La2/k;

    move-result-object p1

    return-object p1
.end method
