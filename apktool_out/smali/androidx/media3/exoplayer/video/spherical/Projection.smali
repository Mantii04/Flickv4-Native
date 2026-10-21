.class final Landroidx/media3/exoplayer/video/spherical/Projection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$DrawMode;
    }
.end annotation


# static fields
.field public static final DRAW_MODE_TRIANGLES:I = 0x0

.field public static final DRAW_MODE_TRIANGLES_FAN:I = 0x2

.field public static final DRAW_MODE_TRIANGLES_STRIP:I = 0x1

.field public static final POSITION_COORDS_PER_VERTEX:I = 0x3

.field public static final TEXTURE_COORDS_PER_VERTEX:I = 0x2


# instance fields
.field public final leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p2}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 5
    iput p3, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    return-void
.end method

.method public static createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 33

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    const/4 v10, 0x1

    if-lez v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 2
    :goto_0
    invoke-static {v8}, LP3/v;->checkArgument(Z)V

    if-lt v1, v10, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 3
    :goto_1
    invoke-static {v8}, LP3/v;->checkArgument(Z)V

    if-lt v2, v10, :cond_2

    move v8, v10

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 4
    :goto_2
    invoke-static {v8}, LP3/v;->checkArgument(Z)V

    cmpl-float v8, v3, v7

    if-lez v8, :cond_3

    const/high16 v8, 0x43340000    # 180.0f

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_3

    move v8, v10

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 5
    :goto_3
    invoke-static {v8}, LP3/v;->checkArgument(Z)V

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    const/high16 v7, 0x43b40000    # 360.0f

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_4

    move v7, v10

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 6
    :goto_4
    invoke-static {v7}, LP3/v;->checkArgument(Z)V

    float-to-double v7, v3

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v3, v7

    float-to-double v7, v4

    .line 8
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v4, v7

    int-to-float v7, v1

    div-float v7, v3, v7

    int-to-float v8, v2

    div-float v8, v4, v8

    add-int/lit8 v11, v2, 0x1

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v6

    mul-int/2addr v12, v1

    mul-int/lit8 v13, v12, 0x3

    .line 9
    new-array v13, v13, [F

    mul-int/2addr v12, v6

    .line 10
    new-array v12, v12, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v14, v1, :cond_b

    int-to-float v9, v14

    mul-float/2addr v9, v7

    const/high16 v17, 0x40000000    # 2.0f

    div-float v18, v3, v17

    sub-float v9, v9, v18

    move/from16 v19, v5

    add-int/lit8 v5, v14, 0x1

    move/from16 v20, v10

    int-to-float v10, v5

    mul-float/2addr v10, v7

    sub-float v10, v10, v18

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v11, :cond_a

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 v1, v16

    const/4 v3, 0x0

    const/4 v4, 0x2

    :goto_7
    if-ge v3, v4, :cond_9

    if-nez v3, :cond_5

    move v4, v9

    :goto_8
    move/from16 v21, v5

    goto :goto_9

    :cond_5
    move v4, v10

    goto :goto_8

    :goto_9
    int-to-float v5, v6

    mul-float/2addr v5, v8

    const v16, 0x40490fdb    # (float)Math.PI

    add-float v16, v5, v16

    div-float v22, p4, v17

    move/from16 v23, v5

    sub-float v5, v16, v22

    add-int/lit8 v16, v15, 0x1

    move/from16 v22, v7

    move/from16 v24, v8

    float-to-double v7, v0

    move-wide/from16 v25, v7

    float-to-double v7, v5

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v25

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    move-wide/from16 v31, v4

    mul-double v4, v29, v27

    double-to-float v4, v4

    neg-float v4, v4

    aput v4, v13, v15

    const/16 v18, 0x2

    add-int/lit8 v4, v15, 0x2

    .line 12
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    move/from16 v29, v4

    mul-double v4, v27, v25

    double-to-float v4, v4

    aput v4, v13, v16

    add-int/lit8 v5, v15, 0x3

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v25

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v7, v7, v25

    double-to-float v4, v7

    aput v4, v13, v29

    add-int/lit8 v4, v1, 0x1

    div-float v7, v23, p4

    .line 14
    aput v7, v12, v1

    const/16 v18, 0x2

    add-int/lit8 v7, v1, 0x2

    add-int v8, v14, v3

    int-to-float v8, v8

    mul-float v8, v8, v22

    div-float v8, v8, p3

    .line 15
    aput v8, v12, v4

    if-nez v6, :cond_7

    if-eqz v3, :cond_6

    goto :goto_b

    :cond_6
    :goto_a
    move/from16 v4, v19

    goto :goto_c

    :cond_7
    :goto_b
    if-ne v6, v2, :cond_8

    move/from16 v4, v20

    if-ne v3, v4, :cond_8

    goto :goto_a

    .line 16
    :goto_c
    invoke-static {v13, v15, v13, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x6

    const/4 v8, 0x2

    .line 17
    invoke-static {v12, v1, v12, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x4

    :goto_d
    const/4 v5, 0x1

    goto :goto_e

    :cond_8
    move/from16 v4, v19

    const/4 v8, 0x2

    move v15, v5

    move v1, v7

    goto :goto_d

    :goto_e
    add-int/2addr v3, v5

    move/from16 v19, v4

    move/from16 v20, v5

    move v4, v8

    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_7

    :cond_9
    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v24, v8

    move/from16 v5, v20

    move v8, v4

    move/from16 v4, v19

    add-int/2addr v6, v5

    move/from16 v3, p3

    move/from16 v16, v1

    move/from16 v5, v21

    move/from16 v8, v24

    move/from16 v1, p1

    move/from16 v4, p4

    goto/16 :goto_6

    :cond_a
    move/from16 v21, v5

    move/from16 v1, p1

    move/from16 v5, v19

    move/from16 v10, v20

    move/from16 v14, v21

    const/4 v6, 0x2

    goto/16 :goto_5

    :cond_b
    move v5, v10

    .line 18
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v13, v12, v5}, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    .line 19
    new-instance v2, Landroidx/media3/exoplayer/video/spherical/Projection;

    new-instance v3, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    new-array v4, v5, [Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    move/from16 v0, p5

    invoke-direct {v2, v3, v0}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object v2
.end method

.method public static createEquirectangular(I)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 6

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    move v5, p0

    .line 1
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/video/spherical/Projection;->createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;

    move-result-object p0

    return-object p0
.end method
