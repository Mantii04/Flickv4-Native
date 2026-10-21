.class public abstract Ld2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/a;

.field public static final b:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ld2/b;->a:Le2/a;

    .line 12
    .line 13
    const-string v0, "sw"

    .line 14
    .line 15
    const-string v1, "t"

    .line 16
    .line 17
    const-string v2, "fc"

    .line 18
    .line 19
    const-string v3, "sc"

    .line 20
    .line 21
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Ld2/b;->b:Le2/a;

    .line 30
    .line 31
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/k;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_6

    .line 11
    .line 12
    sget-object v2, Ld2/b;->a:Le2/a;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 28
    .line 29
    .line 30
    move-object v1, v0

    .line 31
    move-object v2, v1

    .line 32
    move-object v3, v2

    .line 33
    move-object v4, v3

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_5

    .line 39
    .line 40
    sget-object v5, Ld2/b;->b:Le2/a;

    .line 41
    .line 42
    invoke-virtual {p0, v5}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_4

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    if-eq v5, v6, :cond_3

    .line 50
    .line 51
    const/4 v6, 0x2

    .line 52
    if-eq v5, v6, :cond_2

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    if-eq v5, v6, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {p0, p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-static {p0, p1}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/b;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {p0, p1}, Ld2/d;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-static {p0, p1}, Ld2/d;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/a;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 85
    .line 86
    .line 87
    new-instance v5, LZ1/k;

    .line 88
    .line 89
    invoke-direct {v5, v1, v2, v3, v4}, LZ1/k;-><init>(LZ1/a;LZ1/a;LZ1/b;LZ1/b;)V

    .line 90
    .line 91
    .line 92
    move-object v1, v5

    .line 93
    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 95
    .line 96
    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    new-instance p0, LZ1/k;

    .line 100
    .line 101
    invoke-direct {p0, v0, v0, v0, v0}, LZ1/k;-><init>(LZ1/a;LZ1/a;LZ1/b;LZ1/b;)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_7
    return-object v1
.end method
