.class public final Ld2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/H;


# static fields
.field public static final a:Ld2/h;

.field public static final b:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ld2/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld2/h;->a:Ld2/h;

    .line 7
    .line 8
    const-string v10, "sw"

    .line 9
    .line 10
    const-string v11, "of"

    .line 11
    .line 12
    const-string v1, "t"

    .line 13
    .line 14
    const-string v2, "f"

    .line 15
    .line 16
    const-string v3, "s"

    .line 17
    .line 18
    const-string v4, "j"

    .line 19
    .line 20
    const-string v5, "tr"

    .line 21
    .line 22
    const-string v6, "lh"

    .line 23
    .line 24
    const-string v7, "ls"

    .line 25
    .line 26
    const-string v8, "fc"

    .line 27
    .line 28
    const-string v9, "sc"

    .line 29
    .line 30
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ld2/h;->b:Le2/a;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/a;F)LY1/b;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->b:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v9, v0

    move-object v6, v1

    move-object v7, v6

    move v8, v2

    move v11, v8

    move v12, v11

    move v15, v12

    move v10, v3

    move v13, v10

    move v14, v13

    move/from16 v16, v4

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Ld2/h;->b:Le2/a;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 7
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    move-result v16

    goto :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v15, v3

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-static {v2}, Ld2/p;->a(Lcom/airbnb/lottie/parser/moshi/a;)I

    move-result v14

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-static {v2}, Ld2/p;->a(Lcom/airbnb/lottie/parser/moshi/a;)I

    move-result v13

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v12, v3

    goto :goto_0

    .line 13
    :pswitch_5
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v11, v3

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v10

    goto :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    if-gez v1, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/DocumentData$Justification;->values()[Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-result-object v3

    aget-object v9, v3, v1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v9, v0

    goto :goto_0

    .line 17
    :pswitch_8
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v8, v3

    goto :goto_0

    .line 18
    :pswitch_9
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 19
    :pswitch_a
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v2, p1

    .line 20
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 21
    new-instance v5, LY1/b;

    invoke-direct/range {v5 .. v16}, LY1/b;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ld2/h;->parse(Lcom/airbnb/lottie/parser/moshi/a;F)LY1/b;

    move-result-object p1

    return-object p1
.end method
