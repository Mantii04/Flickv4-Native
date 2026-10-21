.class public final La2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Lcom/airbnb/lottie/model/content/GradientType;

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:LZ1/c;

.field public final d:LZ1/d;

.field public final e:LZ1/f;

.field public final f:LZ1/f;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;LZ1/c;LZ1/d;LZ1/f;LZ1/f;LZ1/b;LZ1/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, La2/d;->a:Lcom/airbnb/lottie/model/content/GradientType;

    .line 5
    .line 6
    iput-object p3, p0, La2/d;->b:Landroid/graphics/Path$FillType;

    .line 7
    .line 8
    iput-object p4, p0, La2/d;->c:LZ1/c;

    .line 9
    .line 10
    iput-object p5, p0, La2/d;->d:LZ1/d;

    .line 11
    .line 12
    iput-object p6, p0, La2/d;->e:LZ1/f;

    .line 13
    .line 14
    iput-object p7, p0, La2/d;->f:LZ1/f;

    .line 15
    .line 16
    iput-object p1, p0, La2/d;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p10, p0, La2/d;->h:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getEndPoint()LZ1/f;
    .locals 1

    .line 1
    iget-object v0, p0, La2/d;->f:LZ1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/d;->b:Landroid/graphics/Path$FillType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGradientColor()LZ1/c;
    .locals 1

    .line 1
    iget-object v0, p0, La2/d;->c:LZ1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/d;->a:Lcom/airbnb/lottie/model/content/GradientType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()LZ1/d;
    .locals 1

    .line 1
    iget-object v0, p0, La2/d;->d:LZ1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartPoint()LZ1/f;
    .locals 1

    .line 1
    iget-object v0, p0, La2/d;->e:LZ1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/d;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/i;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/i;-><init>(LT1/G;Lb2/b;La2/d;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
