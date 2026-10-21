.class public final La2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/airbnb/lottie/model/content/GradientType;

.field public final c:LZ1/c;

.field public final d:LZ1/d;

.field public final e:LZ1/f;

.field public final f:LZ1/f;

.field public final g:LZ1/b;

.field public final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field public final i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public final j:F

.field public final k:Ljava/util/List;

.field public final l:LZ1/b;

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;LZ1/c;LZ1/d;LZ1/f;LZ1/f;LZ1/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;LZ1/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "LZ1/c;",
            "LZ1/d;",
            "LZ1/f;",
            "LZ1/f;",
            "LZ1/b;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "LZ1/b;",
            ">;",
            "LZ1/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La2/e;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 7
    .line 8
    iput-object p3, p0, La2/e;->c:LZ1/c;

    .line 9
    .line 10
    iput-object p4, p0, La2/e;->d:LZ1/d;

    .line 11
    .line 12
    iput-object p5, p0, La2/e;->e:LZ1/f;

    .line 13
    .line 14
    iput-object p6, p0, La2/e;->f:LZ1/f;

    .line 15
    .line 16
    iput-object p7, p0, La2/e;->g:LZ1/b;

    .line 17
    .line 18
    iput-object p8, p0, La2/e;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 19
    .line 20
    iput-object p9, p0, La2/e;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 21
    .line 22
    iput p10, p0, La2/e;->j:F

    .line 23
    .line 24
    iput-object p11, p0, La2/e;->k:Ljava/util/List;

    .line 25
    .line 26
    iput-object p12, p0, La2/e;->l:LZ1/b;

    .line 27
    .line 28
    iput-boolean p13, p0, La2/e;->m:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDashOffset()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->l:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndPoint()LZ1/f;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->f:LZ1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGradientColor()LZ1/c;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->c:LZ1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LZ1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La2/e;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 1
    iget v0, p0, La2/e;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()LZ1/d;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->d:LZ1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartPoint()LZ1/f;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->e:LZ1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e;->g:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/e;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/j;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/j;-><init>(LT1/G;Lb2/b;La2/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
