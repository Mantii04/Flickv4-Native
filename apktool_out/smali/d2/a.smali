.class public abstract Ld2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "x"

    .line 2
    .line 3
    const-string v1, "y"

    .line 4
    .line 5
    const-string v2, "k"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ld2/a;->a:Le2/a;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/m;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v0

    .line 7
    move v3, v1

    .line 8
    move-object v1, v2

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->j:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 14
    .line 15
    if-eq v4, v5, :cond_5

    .line 16
    .line 17
    sget-object v4, Ld2/a;->a:Le2/a;

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_4

    .line 24
    .line 25
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->n:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eq v4, v6, :cond_2

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    if-eq v4, v7, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 47
    .line 48
    .line 49
    :goto_1
    move v3, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p0, p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-ne v4, v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p0, p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-static {p0, p1}, Ld2/a;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/e;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 77
    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    const-string p0, "Lottie doesn\'t support expressions."

    .line 82
    .line 83
    invoke-virtual {p1, p0}, LT1/i;->addWarning(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_6
    if-eqz v0, :cond_7

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_7
    new-instance p0, LZ1/i;

    .line 90
    .line 91
    invoke-direct {p0, v1, v2}, LZ1/i;-><init>(LZ1/b;LZ1/b;)V

    .line 92
    .line 93
    .line 94
    return-object p0
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 11
    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->f:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_1
    invoke-static {}, Lf2/h;->dpScale()F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sget-object v3, Ld2/v;->a:Ld2/v;

    .line 39
    .line 40
    invoke-static {p0, p1, v2, v3, v1}, Ld2/q;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;Z)Lg2/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, LW1/m;

    .line 45
    .line 46
    invoke-direct {v2, p1, v1}, LW1/m;-><init>(LT1/i;Lg2/a;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ld2/r;->setEndFrames(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    new-instance p1, Lg2/a;

    .line 61
    .line 62
    invoke-static {}, Lf2/h;->dpScale()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {p0, v1}, Ld2/p;->b(Lcom/airbnb/lottie/parser/moshi/a;F)Landroid/graphics/PointF;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p1, p0}, Lg2/a;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :goto_2
    new-instance p0, LZ1/e;

    .line 77
    .line 78
    invoke-direct {p0, v0}, LZ1/e;-><init>(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    return-object p0
.end method
