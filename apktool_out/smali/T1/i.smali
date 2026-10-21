.class public final LT1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LT1/P;

.field public final b:Ljava/util/HashSet;

.field public c:Ljava/util/Map;

.field public d:Ljava/util/Map;

.field public e:Ljava/util/Map;

.field public f:Ljava/util/List;

.field public g:Lp/r;

.field public h:Lp/n;

.field public i:Ljava/util/List;

.field public j:Landroid/graphics/Rect;

.field public k:F

.field public l:F

.field public m:F

.field public n:Z

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LT1/P;

    .line 5
    .line 6
    invoke-direct {v0}, LT1/P;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LT1/i;->a:LT1/P;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LT1/i;->b:Ljava/util/HashSet;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, LT1/i;->o:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lf2/d;->warning(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LT1/i;->b:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, LT1/i;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCharacters()Lp/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp/r;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT1/i;->g:Lp/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()F
    .locals 2

    .line 1
    invoke-virtual {p0}, LT1/i;->getDurationFrames()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, LT1/i;->m:F

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 9
    .line 10
    mul-float/2addr v0, v1

    .line 11
    float-to-long v0, v0

    .line 12
    long-to-float v0, v0

    .line 13
    return v0
.end method

.method public getDurationFrames()F
    .locals 2

    .line 1
    iget v0, p0, LT1/i;->l:F

    .line 2
    .line 3
    iget v1, p0, LT1/i;->k:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    return v0
.end method

.method public getEndFrame()F
    .locals 1

    .line 1
    iget v0, p0, LT1/i;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LY1/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT1/i;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameRate()F
    .locals 1

    .line 1
    iget v0, p0, LT1/i;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LT1/H;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT1/i;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb2/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT1/i;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMarker(Ljava/lang/String;)LY1/h;
    .locals 3

    .line 1
    iget-object v0, p0, LT1/i;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, LT1/i;->f:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, LT1/i;->f:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LY1/h;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, LY1/h;->matchesName(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public getMaskAndMatteCount()I
    .locals 1

    .line 1
    iget v0, p0, LT1/i;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getPerformanceTracker()LT1/P;
    .locals 1

    .line 1
    iget-object v0, p0, LT1/i;->a:LT1/P;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb2/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT1/i;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    return-object p1
.end method

.method public getStartFrame()F
    .locals 1

    .line 1
    iget v0, p0, LT1/i;->k:F

    .line 2
    .line 3
    return v0
.end method

.method public hasDashPattern()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LT1/i;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public incrementMatteOrMaskCount(I)V
    .locals 1

    .line 1
    iget v0, p0, LT1/i;->o:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, LT1/i;->o:I

    .line 5
    .line 6
    return-void
.end method

.method public init(Landroid/graphics/Rect;FFFLjava/util/List;Lp/n;Ljava/util/Map;Ljava/util/Map;Lp/r;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lb2/e;",
            ">;",
            "Lp/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lb2/e;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LT1/H;",
            ">;",
            "Lp/r;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LY1/c;",
            ">;",
            "Ljava/util/List<",
            "LY1/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LT1/i;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    iput p2, p0, LT1/i;->k:F

    .line 4
    .line 5
    iput p3, p0, LT1/i;->l:F

    .line 6
    .line 7
    iput p4, p0, LT1/i;->m:F

    .line 8
    .line 9
    iput-object p5, p0, LT1/i;->i:Ljava/util/List;

    .line 10
    .line 11
    iput-object p6, p0, LT1/i;->h:Lp/n;

    .line 12
    .line 13
    iput-object p7, p0, LT1/i;->c:Ljava/util/Map;

    .line 14
    .line 15
    iput-object p8, p0, LT1/i;->d:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p9, p0, LT1/i;->g:Lp/r;

    .line 18
    .line 19
    iput-object p10, p0, LT1/i;->e:Ljava/util/Map;

    .line 20
    .line 21
    iput-object p11, p0, LT1/i;->f:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public layerModelForId(J)Lb2/e;
    .locals 1

    .line 1
    iget-object v0, p0, LT1/i;->h:Lp/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lp/n;->get(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb2/e;

    .line 8
    .line 9
    return-object p1
.end method

.method public setHasDashPattern(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LT1/i;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LT1/i;->a:LT1/P;

    .line 2
    .line 3
    iput-boolean p1, v0, LT1/P;->a:Z

    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LottieComposition:\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LT1/i;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lb2/e;

    .line 25
    .line 26
    const-string v3, "\t"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lb2/e;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
