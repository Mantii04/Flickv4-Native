.class public abstract Ld2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/a;
    .locals 3

    .line 1
    new-instance v0, LZ1/a;

    .line 2
    .line 3
    sget-object v1, Ld2/f;->a:Ld2/f;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {p0, p1, v2, v1}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, LZ1/a;-><init>(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/d;
    .locals 3

    .line 1
    new-instance v0, LZ1/d;

    .line 2
    .line 3
    sget-object v1, Ld2/o;->a:Ld2/o;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {p0, p1, v2, v1}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, LZ1/d;-><init>(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static c(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/f;
    .locals 3

    .line 1
    new-instance v0, LZ1/f;

    .line 2
    .line 3
    invoke-static {}, Lf2/h;->dpScale()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Ld2/w;->a:Ld2/w;

    .line 8
    .line 9
    invoke-static {p0, p1, v1, v2}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, LZ1/f;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    move-result-object p0

    return-object p0
.end method

.method public static parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, LZ1/b;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lf2/h;->dpScale()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Ld2/i;->a:Ld2/i;

    .line 4
    invoke-static {p0, p1, p2, v1}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, LZ1/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method
