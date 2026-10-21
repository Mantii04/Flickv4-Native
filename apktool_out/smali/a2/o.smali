.class public final La2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LZ1/b;

.field public final c:Ljava/util/List;

.field public final d:LZ1/a;

.field public final e:LZ1/d;

.field public final f:LZ1/b;

.field public final g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field public final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LZ1/b;Ljava/util/List;LZ1/a;LZ1/d;LZ1/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LZ1/b;",
            "Ljava/util/List<",
            "LZ1/b;",
            ">;",
            "LZ1/a;",
            "LZ1/d;",
            "LZ1/b;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/o;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La2/o;->b:LZ1/b;

    .line 7
    .line 8
    iput-object p3, p0, La2/o;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, La2/o;->d:LZ1/a;

    .line 11
    .line 12
    iput-object p5, p0, La2/o;->e:LZ1/d;

    .line 13
    .line 14
    iput-object p6, p0, La2/o;->f:LZ1/b;

    .line 15
    .line 16
    iput-object p7, p0, La2/o;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 17
    .line 18
    iput-object p8, p0, La2/o;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 19
    .line 20
    iput p9, p0, La2/o;->i:F

    .line 21
    .line 22
    iput-boolean p10, p0, La2/o;->j:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/o;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getColor()LZ1/a;
    .locals 1

    .line 1
    iget-object v0, p0, La2/o;->d:LZ1/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDashOffset()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/o;->b:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/o;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

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
    iget-object v0, p0, La2/o;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 1
    iget v0, p0, La2/o;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()LZ1/d;
    .locals 1

    .line 1
    iget-object v0, p0, La2/o;->e:LZ1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/o;->f:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/o;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/s;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/s;-><init>(LT1/G;Lb2/b;La2/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
