.class public abstract Ld2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/a;

.field public static final b:Le2/a;

.field public static final c:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    const-string v22, "cl"

    .line 2
    .line 3
    const-string v23, "hd"

    .line 4
    .line 5
    const-string v1, "nm"

    .line 6
    .line 7
    const-string v2, "ind"

    .line 8
    .line 9
    const-string v3, "refId"

    .line 10
    .line 11
    const-string v4, "ty"

    .line 12
    .line 13
    const-string v5, "parent"

    .line 14
    .line 15
    const-string v6, "sw"

    .line 16
    .line 17
    const-string v7, "sh"

    .line 18
    .line 19
    const-string v8, "sc"

    .line 20
    .line 21
    const-string v9, "ks"

    .line 22
    .line 23
    const-string v10, "tt"

    .line 24
    .line 25
    const-string v11, "masksProperties"

    .line 26
    .line 27
    const-string v12, "shapes"

    .line 28
    .line 29
    const-string v13, "t"

    .line 30
    .line 31
    const-string v14, "ef"

    .line 32
    .line 33
    const-string v15, "sr"

    .line 34
    .line 35
    const-string v16, "st"

    .line 36
    .line 37
    const-string v17, "w"

    .line 38
    .line 39
    const-string v18, "h"

    .line 40
    .line 41
    const-string v19, "ip"

    .line 42
    .line 43
    const-string v20, "op"

    .line 44
    .line 45
    const-string v21, "tm"

    .line 46
    .line 47
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Ld2/s;->a:Le2/a;

    .line 56
    .line 57
    const-string v0, "d"

    .line 58
    .line 59
    const-string v1, "a"

    .line 60
    .line 61
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Ld2/s;->b:Le2/a;

    .line 70
    .line 71
    const-string v0, "nm"

    .line 72
    .line 73
    filled-new-array {v0}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Ld2/s;->c:Le2/a;

    .line 82
    .line 83
    return-void
.end method

.method public static parse(LT1/i;)Lb2/e;
    .locals 26

    .line 1
    invoke-virtual/range {p0 .. p0}, LT1/i;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Lb2/e;

    .line 3
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->b:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 4
    new-instance v12, LZ1/l;

    invoke-direct {v12}, LZ1/l;-><init>()V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v19

    sget-object v23, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->b:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v4, "__container"

    const-wide/16 v5, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v11, v2

    move-object/from16 v22, v2

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v25}, Lb2/e;-><init>(Ljava/util/List;LT1/i;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;LZ1/l;IIIFFIILZ1/j;LZ1/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;LZ1/b;Z)V

    return-object v1
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)Lb2/e;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v5, 0x1

    .line 6
    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->b:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    move v12, v2

    .line 11
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 12
    const-string v13, "UNSET"

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v3, 0x0

    const-wide/16 v18, -0x1

    move/from16 v17, v3

    move/from16 v26, v17

    move/from16 v28, v26

    move/from16 v30, v28

    move-object/from16 v22, v6

    move/from16 v20, v8

    move-object/from16 v25, v9

    move v6, v11

    move/from16 v21, v6

    move/from16 v23, v21

    move/from16 v29, v23

    move/from16 v36, v12

    move-object v9, v14

    move-object v11, v9

    move-object/from16 v24, v11

    move-object/from16 v27, v24

    move-object/from16 v31, v27

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    const/16 v35, 0x2

    move/from16 v12, v30

    move v14, v12

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_15

    .line 14
    sget-object v4, Ld2/s;->a:Le2/a;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    :goto_1
    move-object/from16 v38, v2

    move/from16 v39, v6

    goto/16 :goto_12

    .line 17
    :pswitch_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    move-result v30

    goto :goto_0

    .line 18
    :pswitch_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 19
    :pswitch_2
    invoke-static {v0, v1, v3}, Ld2/d;->parseFloat(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;Z)LZ1/b;

    move-result-object v34

    goto :goto_0

    .line 20
    :pswitch_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v21, v3

    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 21
    :pswitch_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v6, v3

    goto :goto_2

    .line 22
    :pswitch_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lf2/h;->dpScale()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move/from16 v28, v3

    goto :goto_2

    .line 23
    :pswitch_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lf2/h;->dpScale()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move/from16 v17, v3

    goto :goto_2

    .line 24
    :pswitch_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v29, v3

    goto :goto_2

    .line 25
    :pswitch_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v20, v3

    goto :goto_2

    .line 26
    :pswitch_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 30
    :goto_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    sget-object v4, Ld2/s;->c:Le2/a;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    goto :goto_4

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    goto :goto_3

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, LT1/i;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 38
    :pswitch_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 39
    :goto_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 40
    sget-object v3, Ld2/s;->b:Le2/a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_3

    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipName()V

    .line 42
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    goto :goto_5

    .line 43
    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 45
    invoke-static/range {p0 .. p1}, Ld2/b;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/k;

    move-result-object v33

    .line 46
    :cond_4
    :goto_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    goto :goto_6

    .line 48
    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    goto :goto_5

    .line 49
    :cond_6
    new-instance v3, LZ1/j;

    sget-object v4, Ld2/h;->a:Ld2/h;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 50
    invoke-static {v0, v1, v8, v4}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    move-result-object v4

    .line 51
    invoke-direct {v3, v4}, LZ1/j;-><init>(Ljava/util/List;)V

    move-object/from16 v32, v3

    goto :goto_5

    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    goto/16 :goto_2

    .line 53
    :pswitch_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 54
    :cond_8
    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 55
    invoke-static/range {p0 .. p1}, Ld2/g;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)La2/b;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 56
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 57
    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    goto/16 :goto_1

    .line 58
    :pswitch_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginArray()V

    .line 59
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 60
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    move-object/from16 v3, v27

    move-object v4, v3

    move-object v8, v4

    const/4 v5, 0x0

    .line 61
    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_12

    move-object/from16 v38, v2

    .line 62
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v39

    sparse-switch v39, :sswitch_data_0

    move/from16 v39, v6

    :goto_a
    const/4 v6, -0x1

    goto :goto_c

    :sswitch_0
    move/from16 v39, v6

    const-string v6, "mode"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_b

    :cond_a
    move/from16 v6, v36

    goto :goto_c

    :sswitch_1
    move/from16 v39, v6

    const-string v6, "inv"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v6, v35

    goto :goto_c

    :sswitch_2
    move/from16 v39, v6

    const-string v6, "pt"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_b

    :cond_c
    const/4 v6, 0x1

    goto :goto_c

    :sswitch_3
    move/from16 v39, v6

    const-string v6, "o"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    :goto_b
    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    :goto_c
    packed-switch v6, :pswitch_data_1

    .line 64
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    goto/16 :goto_11

    .line 65
    :pswitch_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->b:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v40

    sparse-switch v40, :sswitch_data_1

    move-object/from16 v40, v6

    :goto_d
    const/4 v3, -0x1

    goto :goto_f

    :sswitch_4
    move-object/from16 v40, v6

    const-string v6, "s"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v3, v36

    goto :goto_f

    :sswitch_5
    move-object/from16 v40, v6

    const-string v6, "n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    move/from16 v3, v35

    goto :goto_f

    :sswitch_6
    move-object/from16 v40, v6

    const-string v6, "i"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_e

    :cond_10
    const/4 v3, 0x1

    goto :goto_f

    :sswitch_7
    move-object/from16 v40, v6

    const-string v6, "a"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :goto_e
    goto :goto_d

    :cond_11
    const/4 v3, 0x0

    :goto_f
    packed-switch v3, :pswitch_data_2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unknown mask mode "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Defaulting to Add."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf2/d;->warning(Ljava/lang/String;)V

    :pswitch_e
    move-object/from16 v3, v40

    goto :goto_11

    .line 67
    :pswitch_f
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->e:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    :goto_10
    move-object v3, v2

    goto :goto_11

    .line 68
    :pswitch_10
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->j:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto :goto_10

    .line 69
    :pswitch_11
    const-string v2, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v1, v2}, LT1/i;->addWarning(Ljava/lang/String;)V

    .line 70
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->f:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto :goto_10

    .line 71
    :pswitch_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextBoolean()Z

    move-result v5

    goto :goto_11

    .line 72
    :pswitch_13
    new-instance v4, LZ1/h;

    .line 73
    invoke-static {}, Lf2/h;->dpScale()F

    move-result v2

    sget-object v6, Ld2/B;->a:Ld2/B;

    .line 74
    invoke-static {v0, v1, v2, v6}, Ld2/r;->a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;)Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    invoke-direct {v4, v2}, LZ1/h;-><init>(Ljava/util/List;)V

    goto :goto_11

    .line 76
    :pswitch_14
    invoke-static/range {p0 .. p1}, Ld2/d;->b(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/d;

    move-result-object v8

    :goto_11
    move-object/from16 v2, v38

    move/from16 v6, v39

    goto/16 :goto_9

    :cond_12
    move-object/from16 v38, v2

    move/from16 v39, v6

    .line 77
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 78
    new-instance v2, La2/f;

    invoke-direct {v2, v3, v4, v8, v5}, La2/f;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;LZ1/h;LZ1/d;Z)V

    .line 79
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v38

    move/from16 v6, v39

    const/4 v5, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_8

    :cond_13
    move-object/from16 v38, v2

    move/from16 v39, v6

    .line 80
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, LT1/i;->incrementMatteOrMaskCount(I)V

    .line 81
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endArray()V

    :goto_12
    move-object/from16 v2, v38

    move/from16 v6, v39

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_13
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v38, v2

    move/from16 v39, v6

    .line 82
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    aget-object v22, v2, v3

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, LT1/i;->incrementMatteOrMaskCount(I)V

    move v5, v2

    :goto_14
    move-object/from16 v2, v38

    :goto_15
    const/4 v3, 0x0

    goto :goto_13

    :pswitch_16
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 84
    invoke-static/range {p0 .. p1}, Ld2/c;->parse(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;)LZ1/l;

    move-result-object v31

    goto :goto_14

    :pswitch_17
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 85
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    goto :goto_14

    :pswitch_18
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 86
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lf2/h;->dpScale()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move/from16 v26, v3

    goto :goto_14

    :pswitch_19
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 87
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lf2/h;->dpScale()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v12, v4

    goto :goto_14

    :pswitch_1a
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 88
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v18, v3

    goto :goto_14

    :pswitch_1b
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 89
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_14

    .line 90
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    aget-object v24, v4, v3

    :goto_16
    move v5, v2

    move-object/from16 v2, v38

    move/from16 v6, v39

    goto :goto_15

    .line 91
    :cond_14
    sget-object v24, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->f:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    goto :goto_16

    :pswitch_1c
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 92
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_14

    :pswitch_1d
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 93
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide v15, v3

    goto :goto_14

    :pswitch_1e
    move-object/from16 v38, v2

    move v2, v5

    move/from16 v39, v6

    .line 94
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_14

    :cond_15
    move-object/from16 v38, v2

    move/from16 v39, v6

    .line 95
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    div-float v8, v39, v20

    div-float v21, v21, v20

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v2, v8, v23

    if-lez v2, :cond_16

    move-object v2, v0

    .line 97
    new-instance v0, Lg2/a;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, v38

    move-object/from16 v27, v7

    move-object v7, v2

    move-object/from16 v2, v38

    invoke-direct/range {v0 .. v6}, Lg2/a;-><init>(LT1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 98
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_16
    move-object/from16 v27, v7

    move-object v7, v0

    :goto_17
    cmpl-float v0, v21, v23

    if-lez v0, :cond_17

    goto :goto_18

    .line 99
    :cond_17
    invoke-virtual/range {p1 .. p1}, LT1/i;->getEndFrame()F

    move-result v21

    .line 100
    :goto_18
    new-instance v0, Lg2/a;

    .line 101
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v3, v25

    move-object/from16 v1, p1

    move v5, v8

    move-object/from16 v2, v25

    invoke-direct/range {v0 .. v6}, Lg2/a;-><init>(LT1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 102
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lg2/a;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 104
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v3, v38

    move-object/from16 v1, p1

    move/from16 v5, v21

    move-object/from16 v2, v38

    invoke-direct/range {v0 .. v6}, Lg2/a;-><init>(LT1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 105
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, ".ai"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "ai"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 107
    :cond_18
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v1, v0}, LT1/i;->addWarning(Ljava/lang/String;)V

    .line 108
    :cond_19
    new-instance v0, Lb2/e;

    move-object v2, v1

    move-object/from16 v21, v7

    move-object v3, v13

    move-wide v4, v15

    move-wide/from16 v7, v18

    move/from16 v15, v20

    move-object/from16 v6, v24

    move/from16 v13, v26

    move-object/from16 v1, v27

    move/from16 v18, v28

    move/from16 v16, v29

    move/from16 v24, v30

    move-object/from16 v11, v31

    move-object/from16 v19, v32

    move-object/from16 v20, v33

    move-object/from16 v23, v34

    invoke-direct/range {v0 .. v24}, Lb2/e;-><init>(Ljava/util/List;LT1/i;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;LZ1/l;IIIFFIILZ1/j;LZ1/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;LZ1/b;Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_c
        :pswitch_b
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

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_3
        0xe04 -> :sswitch_2
        0x197f1 -> :sswitch_1
        0x3339a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_d
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6e -> :sswitch_5
        0x73 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
